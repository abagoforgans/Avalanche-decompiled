contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256 arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - exit(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const SECONDS_PER_DAY = (24 * 3600)


array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
address sentinelAddress;
array of uint256 tokenPoolIds;
array of uint256 stor7;
uint256 totalRewardWeight;
array of struct poolTotalReferralAmount;
array of struct stakeTotalDeposited;
mapping of struct stor11;
mapping of address myReferral;
mapping of uint8 stor13;
mapping of address poolReferral;
mapping of uint256 nextReferral;
array of struct myreferees;
uint8 pause;

function referralList(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return poolReferral[arg1][arg2]
}

function reward() payable {
    return address(stor1.length)
}

function nextReferral(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return nextReferral[arg1]
}

function tokenPoolIds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenPoolIds[arg1]
}

function referralIsKnown(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return bool(stor13[arg1][arg2])
}

function isPoolReferralProgramOn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolTotalReferralAmount.length
    return bool(poolTotalReferralAmount[arg1].field_168)
}

function getPoolTotalReferralAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolTotalReferralAmount.length
    return uint256(poolTotalReferralAmount[arg1].field_1536)
}

function governance() payable {
    return address(stor3.length)
}

function getPoolRewardWeight(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolTotalReferralAmount.length
    return uint256(poolTotalReferralAmount[arg1].field_512)
}

function getPoolTotalDeposited(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolTotalReferralAmount.length
    return uint256(poolTotalReferralAmount[arg1].field_256)
}

function myReferral(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return myReferral[arg1][arg2]
}

function rewardRate() payable {
    return stor7.length
}

function pause() payable {
    return bool(pause)
}

function getStakeTotalDeposited(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)
}

function rewardVesting() payable {
    return address(stor2.length)
}

function myreferees(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 < uint256(myreferees[arg1][arg2].field_0)
    return address(myreferees[arg1][arg2][arg3].field_0)
}

function getPoolVestingDurationInSecs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolTotalReferralAmount.length
    return uint256(poolTotalReferralAmount[arg1].field_1280)
}

function totalRewardWeight() payable {
    return totalRewardWeight
}

function getPoolLockPeriodInSecs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolTotalReferralAmount.length
    return uint256(poolTotalReferralAmount[arg1].field_2048)
}

function getPoolReferral(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return poolReferral[arg1][arg2]
}

function getPoolToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolTotalReferralAmount.length
    return address(poolTotalReferralAmount[arg1].field_0)
}

function pendingGovernance() payable {
    return address(stor4.length)
}

function poolCount() payable {
    return poolTotalReferralAmount.length
}

function sentinel() payable {
    return sentinelAddress
}

function _fallback() payable {
    revert
}

function setPause(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor3.length) != msg.sender:
        if sentinelAddress != msg.sender:
            revert with 0, 'StakingPools: !(gov || sentinel)'
    pause = uint8(arg1)
    emit PauseUpdated(arg1);
}

function acceptGovernance() payable {
    if address(stor4.length) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakingPools: only pending governance'
    address(stor3.length) = address(stor4.length)
    emit GovernanceUpdated(address(stor4.length));
}

function setSentinel(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor3.length) != msg.sender:
        revert with 0, 'StakingPools: only governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakingPools: sentinel address cannot be 0x0.'
    sentinelAddress = arg1
    emit SentinelUpdated(arg1);
}

function setPoolLockUpPeriodInSecs(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(stor3.length) != msg.sender:
        if sentinelAddress != msg.sender:
            revert with 0, 'StakingPools: !(gov || sentinel)'
    require arg1 < poolTotalReferralAmount.length
    uint256(poolTotalReferralAmount[arg1].field_2048) = arg2
    emit LockUpPeriodInSecsUpdated(uint256(poolTotalReferralAmount[arg1].field_2048), arg2, arg1);
}

function setPendingGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor3.length) != msg.sender:
        revert with 0, 'StakingPools: only governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'StakingPools: pending governance address cannot be 0x0'
    address(stor4.length) = arg1
    emit PendingGovernanceUpdated(arg1);
}

function setPoolVestingDurationInSecs(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(stor3.length) != msg.sender:
        if sentinelAddress != msg.sender:
            revert with 0, 'StakingPools: !(gov || sentinel)'
    require arg1 < poolTotalReferralAmount.length
    uint256(poolTotalReferralAmount[arg1].field_1280) = arg2
    emit VestingDurationInSecsUpdated(uint256(poolTotalReferralAmount[arg1].field_1280), arg2, arg1);
}

function startReferralBonus(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor3.length) != msg.sender:
        if sentinelAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'startReferralBonus: !(gov || sentinel)'
    require arg1 < poolTotalReferralAmount.length
    if poolTotalReferralAmount[arg1].field_168:
        revert with 0, 'referral bonus already on'
    poolTotalReferralAmount[arg1].field_168 = 1
    emit StartPoolReferralCompetition(arg1);
}

function stoptReferralBonus(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor3.length) != msg.sender:
        if sentinelAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'stoptReferralBonus: !(gov || sentinel)'
    require arg1 < poolTotalReferralAmount.length
    if bool(poolTotalReferralAmount[arg1].field_168) != 1:
        revert with 0, 'referral not turned on'
    poolTotalReferralAmount[arg1].field_168 = 0
    emit StopPoolReferralCompetition(arg1);
}

function setRewardVesting(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not pause:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'StakingPools: not paused, or not governance or sentinel'
    if address(stor3.length) != msg.sender:
        if sentinelAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'StakingPools: not paused, or not governance or sentinel'
    address(stor2.length) = arg1
    emit 0xcd409fc2: arg1
}

function getPoolRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolTotalReferralAmount.length
    if not stor7.length:
        if totalRewardWeight <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalRewardWeight:
            return (0 / totalRewardWeight)
    else:
        if uint256(poolTotalReferralAmount[arg1].field_512) * stor7.length / stor7.length != uint256(poolTotalReferralAmount[arg1].field_512):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalRewardWeight <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalRewardWeight:
            return (uint256(poolTotalReferralAmount[arg1].field_512) * stor7.length / totalRewardWeight)
    ('iszero', ('stor', ('name', 'totalRewardWeight', 8)))
    revert
}

function getUserDeposits(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    mem[0] = arg1
    mem[32] = sha3(address(arg2), 10)
    mem[64] = (32 * uint256(stakeTotalDeposited[address(arg2)][arg1].field_0)) + 128
    mem[96] = uint256(stakeTotalDeposited[address(arg2)][arg1].field_0)
    s = 128
    idx = 0
    while idx < uint256(stakeTotalDeposited[address(arg2)][arg1].field_0):
        mem[0] = sha3(arg1, sha3(address(arg2), 10))
        _13 = mem[64]
        mem[64] = mem[64] + 64
        mem[_13] = uint256(stakeTotalDeposited[address(arg2)][arg1][idx].field_0)
        mem[_13 + 32] = uint256(stakeTotalDeposited[address(arg2)][arg1][idx].field_256)
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _15:
        _20 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_20 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _14 + (64 * _15) + -mem[64] + 64
}

function createPool(address arg1, bool arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if address(stor3.length) != msg.sender:
        revert with 0, 'StakingPools: only governance'
    if tokenPoolIds[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakingPools: token already has a pool'
    poolTotalReferralAmount.length++
    address(poolTotalReferralAmount[poolTotalReferralAmount.length].field_0) = arg1
    poolTotalReferralAmount[poolTotalReferralAmount.length].field_160 = uint8(arg2)
    Mask(88, 0, poolTotalReferralAmount[poolTotalReferralAmount.length].field_168) = 0
    Mask(80, 0, poolTotalReferralAmount[poolTotalReferralAmount.length].field_176) = Mask(80, 16, arg2) >> 16
    uint256(poolTotalReferralAmount[poolTotalReferralAmount.length].field_256) = 0
    uint256(poolTotalReferralAmount[poolTotalReferralAmount.length].field_512) = 0
    uint256(poolTotalReferralAmount[poolTotalReferralAmount.length].field_768) = 0
    uint256(poolTotalReferralAmount[poolTotalReferralAmount.length].field_1024) = block.number
    uint256(poolTotalReferralAmount[poolTotalReferralAmount.length].field_1280) = arg3
    uint256(poolTotalReferralAmount[poolTotalReferralAmount.length].field_1536) = 0
    uint256(poolTotalReferralAmount[poolTotalReferralAmount.length].field_1792) = 0
    uint256(poolTotalReferralAmount[poolTotalReferralAmount.length].field_2048) = arg4
    tokenPoolIds[address(arg1)] = poolTotalReferralAmount.length + 1
    emit 0x15451172: arg3, arg4, poolTotalReferralAmount.length, arg1
    return poolTotalReferralAmount.length
}

function getPoolreferee(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    mem[64] = (32 * uint256(myreferees[arg1][address(arg2)].field_0)) + 128
    mem[96] = uint256(myreferees[arg1][address(arg2)].field_0)
    if not uint256(myreferees[arg1][address(arg2)].field_0):
        mem[(32 * uint256(myreferees[arg1][address(arg2)].field_0)) + 128] = 32
        mem[(32 * uint256(myreferees[arg1][address(arg2)].field_0)) + 160] = uint256(myreferees[arg1][address(arg2)].field_0)
        idx = 0
        s = (32 * uint256(myreferees[arg1][address(arg2)].field_0)) + 192
        t = 128
        while idx < uint256(myreferees[arg1][address(arg2)].field_0):
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * uint256(myreferees[arg1][address(arg2)].field_0)) + 128
           len (96 * uint256(myreferees[arg1][address(arg2)].field_0)) + 64
    mem[128] = address(myreferees[arg1][address(arg2)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(myreferees[arg1][address(arg2)].field_0)) + 96 > idx:
        mem[idx + 32] = address(myreferees[arg1][address(arg2)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(myreferees[arg1][address(arg2)].field_0)) + 128] = 32
    mem[(32 * uint256(myreferees[arg1][address(arg2)].field_0)) + 160] = uint256(myreferees[arg1][address(arg2)].field_0)
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < uint256(myreferees[arg1][address(arg2)].field_0):
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * uint256(myreferees[arg1][address(arg2)].field_0)) + -mem[64] + 192
}

function getWithdrawableAmount(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require arg1 < poolTotalReferralAmount.length
    idx = 0
    s = 0
    while uint32(idx) < uint256(stakeTotalDeposited[address(arg2)][arg1].field_0):
        mem[0] = sha3(arg1, sha3(address(arg2), 10))
        if not uint256(stakeTotalDeposited[address(arg2)][arg1][2 * uint32(idx)].field_256) / 24 * 3600:
            if uint256(poolTotalReferralAmount[arg1].field_2048) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp < uint256(poolTotalReferralAmount[arg1].field_2048):
                idx = idx + 1
                s = s
                continue 
        else:
            if 24 * 3600 * uint256(stakeTotalDeposited[address(arg2)][arg1][2 * uint32(idx)].field_256) / 24 * 3600 / uint256(stakeTotalDeposited[address(arg2)][arg1][2 * uint32(idx)].field_256) / 24 * 3600 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if uint256(poolTotalReferralAmount[arg1].field_2048) + (24 * 3600 * uint256(stakeTotalDeposited[address(arg2)][arg1][2 * uint32(idx)].field_256) / 24 * 3600) < 24 * 3600 * uint256(stakeTotalDeposited[address(arg2)][arg1][2 * uint32(idx)].field_256) / 24 * 3600:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp < uint256(poolTotalReferralAmount[arg1].field_2048) + (24 * 3600 * uint256(stakeTotalDeposited[address(arg2)][arg1][2 * uint32(idx)].field_256) / 24 * 3600):
                idx = idx + 1
                s = s
                continue 
        require uint32(idx) < uint256(stakeTotalDeposited[address(arg2)][arg1].field_0)
        mem[0] = sha3(arg1, sha3(address(arg2), 10))
        idx = idx + 1
        s = s + uint256(stakeTotalDeposited[address(arg2)][arg1][2 * uint32(idx)].field_0)
        continue 
    return s
}

function getAccumulatedReferralPower(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < poolTotalReferralAmount.length
    if not uint256(poolTotalReferralAmount[arg2].field_1536):
        if uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792):
            if uint256(poolTotalReferralAmount[arg2].field_1792) <= uint256(stor11[address(arg1)][arg2].field_512):
                return uint256(stor11[address(arg1)][arg2].field_256)
        require uint256(poolTotalReferralAmount[arg2].field_1792) - uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792)
        if not uint256(stor11[address(arg1)][arg2].field_0):
            if (0 / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
                revert with 0, 'SafeMath: addition overflow'
            return uint256(stor11[address(arg1)][arg2].field_256)
        require uint256(stor11[address(arg1)][arg2].field_0)
        require (uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / uint256(stor11[address(arg1)][arg2].field_0) == uint256(poolTotalReferralAmount[arg2].field_1792) - uint256(stor11[address(arg1)][arg2].field_512)
        if ((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
            revert with 0, 'SafeMath: addition overflow'
        return (((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256))
    if uint256(poolTotalReferralAmount[arg2].field_1024) > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - uint256(poolTotalReferralAmount[arg2].field_1024):
        if uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792):
            if uint256(poolTotalReferralAmount[arg2].field_1792) <= uint256(stor11[address(arg1)][arg2].field_512):
                return uint256(stor11[address(arg1)][arg2].field_256)
        require uint256(poolTotalReferralAmount[arg2].field_1792) - uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792)
        if not uint256(stor11[address(arg1)][arg2].field_0):
            if (0 / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
                revert with 0, 'SafeMath: addition overflow'
            return uint256(stor11[address(arg1)][arg2].field_256)
        require uint256(stor11[address(arg1)][arg2].field_0)
        require (uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / uint256(stor11[address(arg1)][arg2].field_0) == uint256(poolTotalReferralAmount[arg2].field_1792) - uint256(stor11[address(arg1)][arg2].field_512)
        if ((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
            revert with 0, 'SafeMath: addition overflow'
        return (((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256))
    if not stor7.length:
        if totalRewardWeight <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalRewardWeight
        if not 0 / totalRewardWeight:
            if uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792):
                if uint256(poolTotalReferralAmount[arg2].field_1792) <= uint256(stor11[address(arg1)][arg2].field_512):
                    return uint256(stor11[address(arg1)][arg2].field_256)
            require uint256(poolTotalReferralAmount[arg2].field_1792) - uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792)
            if not uint256(stor11[address(arg1)][arg2].field_0):
                if (0 / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
                    revert with 0, 'SafeMath: addition overflow'
                return uint256(stor11[address(arg1)][arg2].field_256)
            require uint256(stor11[address(arg1)][arg2].field_0)
            require (uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / uint256(stor11[address(arg1)][arg2].field_0) == uint256(poolTotalReferralAmount[arg2].field_1792) - uint256(stor11[address(arg1)][arg2].field_512)
            if ((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
                revert with 0, 'SafeMath: addition overflow'
            return (((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256))
        if (block.number * 0 / totalRewardWeight) - (uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(poolTotalReferralAmount[arg2].field_1024):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * 0 / totalRewardWeight) - (uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight):
            if uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792):
                if uint256(poolTotalReferralAmount[arg2].field_1792) <= uint256(stor11[address(arg1)][arg2].field_512):
                    return uint256(stor11[address(arg1)][arg2].field_256)
            require uint256(poolTotalReferralAmount[arg2].field_1792) - uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792)
            if not uint256(stor11[address(arg1)][arg2].field_0):
                if (0 / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
                    revert with 0, 'SafeMath: addition overflow'
                return uint256(stor11[address(arg1)][arg2].field_256)
            require uint256(stor11[address(arg1)][arg2].field_0)
            require (uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / uint256(stor11[address(arg1)][arg2].field_0) == uint256(poolTotalReferralAmount[arg2].field_1792) - uint256(stor11[address(arg1)][arg2].field_512)
            if ((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
                revert with 0, 'SafeMath: addition overflow'
            return (((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256))
        require (block.number * 0 / totalRewardWeight) - (uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / 10^18
        require uint256(poolTotalReferralAmount[arg2].field_1536)
        require uint256(poolTotalReferralAmount[arg2].field_1792) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536)) >= uint256(poolTotalReferralAmount[arg2].field_1792)
        if uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536)):
            if uint256(poolTotalReferralAmount[arg2].field_1792) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536)) <= uint256(stor11[address(arg1)][arg2].field_512):
                return uint256(stor11[address(arg1)][arg2].field_256)
        require -uint256(stor11[address(arg1)][arg2].field_512) <= 0
        if not uint256(stor11[address(arg1)][arg2].field_0):
            if (0 / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
                revert with 0, 'SafeMath: addition overflow'
            return uint256(stor11[address(arg1)][arg2].field_256)
        require uint256(stor11[address(arg1)][arg2].field_0)
        require (uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / uint256(stor11[address(arg1)][arg2].field_0) == uint256(poolTotalReferralAmount[arg2].field_1792) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536)) - uint256(stor11[address(arg1)][arg2].field_512)
        if ((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
            revert with 0, 'SafeMath: addition overflow'
        return (((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256))
    if uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / stor7.length != uint256(poolTotalReferralAmount[arg2].field_512):
        revert with 0, 'SafeMath: multiplication overflow'
    if totalRewardWeight <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalRewardWeight
    if not uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight:
        if uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792):
            if uint256(poolTotalReferralAmount[arg2].field_1792) <= uint256(stor11[address(arg1)][arg2].field_512):
                return uint256(stor11[address(arg1)][arg2].field_256)
        require uint256(poolTotalReferralAmount[arg2].field_1792) - uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792)
        if not uint256(stor11[address(arg1)][arg2].field_0):
            if (0 / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
                revert with 0, 'SafeMath: addition overflow'
            return uint256(stor11[address(arg1)][arg2].field_256)
        require uint256(stor11[address(arg1)][arg2].field_0)
        require (uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / uint256(stor11[address(arg1)][arg2].field_0) == uint256(poolTotalReferralAmount[arg2].field_1792) - uint256(stor11[address(arg1)][arg2].field_512)
        if ((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
            revert with 0, 'SafeMath: addition overflow'
        return (((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256))
    if (block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight != block.number - uint256(poolTotalReferralAmount[arg2].field_1024):
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight):
        if uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792):
            if uint256(poolTotalReferralAmount[arg2].field_1792) <= uint256(stor11[address(arg1)][arg2].field_512):
                return uint256(stor11[address(arg1)][arg2].field_256)
        require uint256(poolTotalReferralAmount[arg2].field_1792) - uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792)
        if not uint256(stor11[address(arg1)][arg2].field_0):
            if (0 / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
                revert with 0, 'SafeMath: addition overflow'
            return uint256(stor11[address(arg1)][arg2].field_256)
        require uint256(stor11[address(arg1)][arg2].field_0)
        require (uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / uint256(stor11[address(arg1)][arg2].field_0) == uint256(poolTotalReferralAmount[arg2].field_1792) - uint256(stor11[address(arg1)][arg2].field_512)
        if ((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
            revert with 0, 'SafeMath: addition overflow'
        return (((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256))
    require (block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / 10^18
    require uint256(poolTotalReferralAmount[arg2].field_1536)
    require uint256(poolTotalReferralAmount[arg2].field_1792) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536)) >= uint256(poolTotalReferralAmount[arg2].field_1792)
    if uint256(stor11[address(arg1)][arg2].field_512) <= uint256(poolTotalReferralAmount[arg2].field_1792) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536)):
        if uint256(poolTotalReferralAmount[arg2].field_1792) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536)) <= uint256(stor11[address(arg1)][arg2].field_512):
            return uint256(stor11[address(arg1)][arg2].field_256)
    require -uint256(stor11[address(arg1)][arg2].field_512) <= 0
    if not uint256(stor11[address(arg1)][arg2].field_0):
        if (0 / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
            revert with 0, 'SafeMath: addition overflow'
        return uint256(stor11[address(arg1)][arg2].field_256)
    require uint256(stor11[address(arg1)][arg2].field_0)
    require (uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / uint256(stor11[address(arg1)][arg2].field_0) == uint256(poolTotalReferralAmount[arg2].field_1792) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536)) - uint256(stor11[address(arg1)][arg2].field_512)
    if ((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256) < uint256(stor11[address(arg1)][arg2].field_256):
        revert with 0, 'SafeMath: addition overflow'
    return (((uint256(poolTotalReferralAmount[arg2].field_1792) * uint256(stor11[address(arg1)][arg2].field_0)) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_1536) * uint256(stor11[address(arg1)][arg2].field_0)) - (uint256(stor11[address(arg1)][arg2].field_512) * uint256(stor11[address(arg1)][arg2].field_0)) / 10^18) + uint256(stor11[address(arg1)][arg2].field_256))
}

function getStakeTotalUnclaimed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < poolTotalReferralAmount.length
    if not uint256(poolTotalReferralAmount[arg2].field_256):
        if uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768):
            if uint256(poolTotalReferralAmount[arg2].field_768) <= uint256(stakeTotalDeposited[address(arg1)][arg2].field_768):
                return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
        require uint256(poolTotalReferralAmount[arg2].field_768) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768)
        if not uint256(stakeTotalDeposited[address(arg1)][arg2].field_256):
            if (0 / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
                revert with 0, 'SafeMath: addition overflow'
            return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
        require uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)
        require (uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / uint256(stakeTotalDeposited[address(arg1)][arg2].field_256) == uint256(poolTotalReferralAmount[arg2].field_768) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768)
        if ((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
            revert with 0, 'SafeMath: addition overflow'
        return (((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512))
    if uint256(poolTotalReferralAmount[arg2].field_1024) > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - uint256(poolTotalReferralAmount[arg2].field_1024):
        if uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768):
            if uint256(poolTotalReferralAmount[arg2].field_768) <= uint256(stakeTotalDeposited[address(arg1)][arg2].field_768):
                return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
        require uint256(poolTotalReferralAmount[arg2].field_768) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768)
        if not uint256(stakeTotalDeposited[address(arg1)][arg2].field_256):
            if (0 / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
                revert with 0, 'SafeMath: addition overflow'
            return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
        require uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)
        require (uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / uint256(stakeTotalDeposited[address(arg1)][arg2].field_256) == uint256(poolTotalReferralAmount[arg2].field_768) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768)
        if ((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
            revert with 0, 'SafeMath: addition overflow'
        return (((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512))
    if not stor7.length:
        if totalRewardWeight <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalRewardWeight
        if not 0 / totalRewardWeight:
            if uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768):
                if uint256(poolTotalReferralAmount[arg2].field_768) <= uint256(stakeTotalDeposited[address(arg1)][arg2].field_768):
                    return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
            require uint256(poolTotalReferralAmount[arg2].field_768) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768)
            if not uint256(stakeTotalDeposited[address(arg1)][arg2].field_256):
                if (0 / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
                    revert with 0, 'SafeMath: addition overflow'
                return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
            require uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)
            require (uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / uint256(stakeTotalDeposited[address(arg1)][arg2].field_256) == uint256(poolTotalReferralAmount[arg2].field_768) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768)
            if ((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
                revert with 0, 'SafeMath: addition overflow'
            return (((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512))
        if (block.number * 0 / totalRewardWeight) - (uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(poolTotalReferralAmount[arg2].field_1024):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * 0 / totalRewardWeight) - (uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight):
            if uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768):
                if uint256(poolTotalReferralAmount[arg2].field_768) <= uint256(stakeTotalDeposited[address(arg1)][arg2].field_768):
                    return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
            require uint256(poolTotalReferralAmount[arg2].field_768) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768)
            if not uint256(stakeTotalDeposited[address(arg1)][arg2].field_256):
                if (0 / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
                    revert with 0, 'SafeMath: addition overflow'
                return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
            require uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)
            require (uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / uint256(stakeTotalDeposited[address(arg1)][arg2].field_256) == uint256(poolTotalReferralAmount[arg2].field_768) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768)
            if ((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
                revert with 0, 'SafeMath: addition overflow'
            return (((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512))
        require (block.number * 0 / totalRewardWeight) - (uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / 10^18
        require uint256(poolTotalReferralAmount[arg2].field_256)
        require uint256(poolTotalReferralAmount[arg2].field_768) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256)) >= uint256(poolTotalReferralAmount[arg2].field_768)
        if uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256)):
            if uint256(poolTotalReferralAmount[arg2].field_768) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256)) <= uint256(stakeTotalDeposited[address(arg1)][arg2].field_768):
                return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
        require -uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= 0
        if not uint256(stakeTotalDeposited[address(arg1)][arg2].field_256):
            if (0 / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
                revert with 0, 'SafeMath: addition overflow'
            return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
        require uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)
        require (uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / uint256(stakeTotalDeposited[address(arg1)][arg2].field_256) == uint256(poolTotalReferralAmount[arg2].field_768) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256)) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768)
        if ((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
            revert with 0, 'SafeMath: addition overflow'
        return (((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * 0 / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512))
    if uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / stor7.length != uint256(poolTotalReferralAmount[arg2].field_512):
        revert with 0, 'SafeMath: multiplication overflow'
    if totalRewardWeight <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalRewardWeight
    if not uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight:
        if uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768):
            if uint256(poolTotalReferralAmount[arg2].field_768) <= uint256(stakeTotalDeposited[address(arg1)][arg2].field_768):
                return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
        require uint256(poolTotalReferralAmount[arg2].field_768) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768)
        if not uint256(stakeTotalDeposited[address(arg1)][arg2].field_256):
            if (0 / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
                revert with 0, 'SafeMath: addition overflow'
            return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
        require uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)
        require (uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / uint256(stakeTotalDeposited[address(arg1)][arg2].field_256) == uint256(poolTotalReferralAmount[arg2].field_768) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768)
        if ((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
            revert with 0, 'SafeMath: addition overflow'
        return (((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512))
    if (block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight != block.number - uint256(poolTotalReferralAmount[arg2].field_1024):
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight):
        if uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768):
            if uint256(poolTotalReferralAmount[arg2].field_768) <= uint256(stakeTotalDeposited[address(arg1)][arg2].field_768):
                return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
        require uint256(poolTotalReferralAmount[arg2].field_768) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768)
        if not uint256(stakeTotalDeposited[address(arg1)][arg2].field_256):
            if (0 / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
                revert with 0, 'SafeMath: addition overflow'
            return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
        require uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)
        require (uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / uint256(stakeTotalDeposited[address(arg1)][arg2].field_256) == uint256(poolTotalReferralAmount[arg2].field_768) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768)
        if ((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
            revert with 0, 'SafeMath: addition overflow'
        return (((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512))
    require (block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / 10^18
    require uint256(poolTotalReferralAmount[arg2].field_256)
    require uint256(poolTotalReferralAmount[arg2].field_768) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256)) >= uint256(poolTotalReferralAmount[arg2].field_768)
    if uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= uint256(poolTotalReferralAmount[arg2].field_768) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256)):
        if uint256(poolTotalReferralAmount[arg2].field_768) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256)) <= uint256(stakeTotalDeposited[address(arg1)][arg2].field_768):
            return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
    require -uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) <= 0
    if not uint256(stakeTotalDeposited[address(arg1)][arg2].field_256):
        if (0 / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
            revert with 0, 'SafeMath: addition overflow'
        return uint256(stakeTotalDeposited[address(arg1)][arg2].field_512)
    require uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)
    require (uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / uint256(stakeTotalDeposited[address(arg1)][arg2].field_256) == uint256(poolTotalReferralAmount[arg2].field_768) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256)) - uint256(stakeTotalDeposited[address(arg1)][arg2].field_768)
    if ((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512) < uint256(stakeTotalDeposited[address(arg1)][arg2].field_512):
        revert with 0, 'SafeMath: addition overflow'
    return (((uint256(poolTotalReferralAmount[arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) + ((10^18 * block.number * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) - (10^18 * uint256(poolTotalReferralAmount[arg2].field_1024) * uint256(poolTotalReferralAmount[arg2].field_512) * stor7.length / totalRewardWeight) / uint256(poolTotalReferralAmount[arg2].field_256) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) - (uint256(stakeTotalDeposited[address(arg1)][arg2].field_768) * uint256(stakeTotalDeposited[address(arg1)][arg2].field_256)) / 10^18) + uint256(stakeTotalDeposited[address(arg1)][arg2].field_512))
}

function setRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor3.length) != msg.sender:
        revert with 0, 'StakingPools: only governance'
    if var35002 < poolTotalReferralAmount.length:
        require var39001 < poolTotalReferralAmount.length
        mem[96] = 0
        if not uint256(stor1[var49003]):
            mem[64] = 160
            mem[128] = uint256(stor3[var49003])
            uint256(stor3[var49006]) = uint256(stor3[var49003])
            if stor[var49006]:
                mem[160] = 0
                if not tokenPoolIds[var49006]:
                    mem[64] = 224
                    mem[192] = stor7[var49006]
                else:
                    if uint256(stor4[var49006]) > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - uint256(stor4[var49006]):
                        mem[64] = 224
                        mem[192] = stor7[var49006]
                    else:
                        if not stor7.length:
                            if totalRewardWeight <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalRewardWeight
                            if not 0 / totalRewardWeight:
                                mem[64] = 224
                                mem[192] = stor7[var49006]
                            else:
                                if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight):
                                    mem[64] = 224
                                    mem[192] = stor7[var49006]
                                else:
                                    mem[192] = 0
                                    mem[224] = 0
                                    require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / 10^18
                                    mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight)
                                    mem[288] = 0
                                    require tokenPoolIds[var49006]
                                    mem[320] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                    mem[352] = stor7[var49006]
                                    mem[384] = 0
                                    require stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                    mem[64] = 448
                                    mem[416] = stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006])
                                    stor7[var49006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                        else:
                            if uint256(stor2[var49006]) * stor7.length / stor7.length != uint256(stor2[var49006]):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalRewardWeight <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalRewardWeight
                            if not uint256(stor2[var49006]) * stor7.length / totalRewardWeight:
                                mem[64] = 224
                                mem[192] = stor7[var49006]
                            else:
                                if (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / uint256(stor2[var49006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight):
                                    mem[64] = 224
                                    mem[192] = stor7[var49006]
                                else:
                                    mem[192] = 0
                                    mem[224] = 0
                                    require (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / 10^18
                                    mem[256] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight)
                                    mem[288] = 0
                                    require tokenPoolIds[var49006]
                                    mem[320] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
                                    mem[352] = stor7[var49006]
                                    mem[384] = 0
                                    require stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                    mem[64] = 448
                                    mem[416] = stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006])
                                    stor7[var49006] += (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
        else:
            if uint256(stor4[var49003]) > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - uint256(stor4[var49003]):
                mem[64] = 160
                mem[128] = uint256(stor3[var49003])
                uint256(stor3[var49006]) = uint256(stor3[var49003])
                if stor[var49006]:
                    mem[160] = 0
                    if not tokenPoolIds[var49006]:
                        mem[64] = 224
                        mem[192] = stor7[var49006]
                    else:
                        if uint256(stor4[var49006]) > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - uint256(stor4[var49006]):
                            mem[64] = 224
                            mem[192] = stor7[var49006]
                        else:
                            if not stor7.length:
                                if totalRewardWeight <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalRewardWeight
                                if not 0 / totalRewardWeight:
                                    mem[64] = 224
                                    mem[192] = stor7[var49006]
                                else:
                                    if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight):
                                        mem[64] = 224
                                        mem[192] = stor7[var49006]
                                    else:
                                        mem[192] = 0
                                        mem[224] = 0
                                        require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / 10^18
                                        mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight)
                                        mem[288] = 0
                                        require tokenPoolIds[var49006]
                                        mem[320] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                        mem[352] = stor7[var49006]
                                        mem[384] = 0
                                        require stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                        mem[64] = 448
                                        mem[416] = stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006])
                                        stor7[var49006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                            else:
                                if uint256(stor2[var49006]) * stor7.length / stor7.length != uint256(stor2[var49006]):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalRewardWeight <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalRewardWeight
                                if not uint256(stor2[var49006]) * stor7.length / totalRewardWeight:
                                    mem[64] = 224
                                    mem[192] = stor7[var49006]
                                else:
                                    if (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / uint256(stor2[var49006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight):
                                        mem[64] = 224
                                        mem[192] = stor7[var49006]
                                    else:
                                        mem[192] = 0
                                        mem[224] = 0
                                        require (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / 10^18
                                        mem[256] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight)
                                        mem[288] = 0
                                        require tokenPoolIds[var49006]
                                        mem[320] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
                                        mem[352] = stor7[var49006]
                                        mem[384] = 0
                                        require stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                        mem[64] = 448
                                        mem[416] = stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006])
                                        stor7[var49006] += (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
            else:
                if not stor7.length:
                    if totalRewardWeight <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalRewardWeight
                    if not 0 / totalRewardWeight:
                        mem[64] = 160
                        mem[128] = uint256(stor3[var49003])
                        uint256(stor3[var49006]) = uint256(stor3[var49003])
                        if stor[var49006]:
                            mem[160] = 0
                            if not tokenPoolIds[var49006]:
                                mem[64] = 224
                                mem[192] = stor7[var49006]
                            else:
                                if uint256(stor4[var49006]) > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - uint256(stor4[var49006]):
                                    mem[64] = 224
                                    mem[192] = stor7[var49006]
                                else:
                                    if not stor7.length:
                                        if totalRewardWeight <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalRewardWeight
                                        if not 0 / totalRewardWeight:
                                            mem[64] = 224
                                            mem[192] = stor7[var49006]
                                        else:
                                            if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight):
                                                mem[64] = 224
                                                mem[192] = stor7[var49006]
                                            else:
                                                mem[192] = 0
                                                mem[224] = 0
                                                require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / 10^18
                                                mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight)
                                                mem[288] = 0
                                                require tokenPoolIds[var49006]
                                                mem[320] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                                mem[352] = stor7[var49006]
                                                mem[384] = 0
                                                require stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                                mem[64] = 448
                                                mem[416] = stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006])
                                                stor7[var49006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                    else:
                                        if uint256(stor2[var49006]) * stor7.length / stor7.length != uint256(stor2[var49006]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalRewardWeight <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalRewardWeight
                                        if not uint256(stor2[var49006]) * stor7.length / totalRewardWeight:
                                            mem[64] = 224
                                            mem[192] = stor7[var49006]
                                        else:
                                            if (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / uint256(stor2[var49006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight):
                                                mem[64] = 224
                                                mem[192] = stor7[var49006]
                                            else:
                                                mem[192] = 0
                                                mem[224] = 0
                                                require (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / 10^18
                                                mem[256] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight)
                                                mem[288] = 0
                                                require tokenPoolIds[var49006]
                                                mem[320] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
                                                mem[352] = stor7[var49006]
                                                mem[384] = 0
                                                require stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                                mem[64] = 448
                                                mem[416] = stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006])
                                                stor7[var49006] += (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
                    else:
                        if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49003]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var49003]):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49003]) * 0 / totalRewardWeight):
                            mem[64] = 160
                            mem[128] = uint256(stor3[var49003])
                            uint256(stor3[var49006]) = uint256(stor3[var49003])
                            if stor[var49006]:
                                mem[160] = 0
                                if not tokenPoolIds[var49006]:
                                    mem[64] = 224
                                    mem[192] = stor7[var49006]
                                else:
                                    if uint256(stor4[var49006]) > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.number - uint256(stor4[var49006]):
                                        mem[64] = 224
                                        mem[192] = stor7[var49006]
                                    else:
                                        if not stor7.length:
                                            if totalRewardWeight <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalRewardWeight
                                            if not 0 / totalRewardWeight:
                                                mem[64] = 224
                                                mem[192] = stor7[var49006]
                                            else:
                                                if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight):
                                                    mem[64] = 224
                                                    mem[192] = stor7[var49006]
                                                else:
                                                    mem[192] = 0
                                                    mem[224] = 0
                                                    require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / 10^18
                                                    mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight)
                                                    mem[288] = 0
                                                    require tokenPoolIds[var49006]
                                                    mem[320] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                                    mem[352] = stor7[var49006]
                                                    mem[384] = 0
                                                    require stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                                    mem[64] = 448
                                                    mem[416] = stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006])
                                                    stor7[var49006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                        else:
                                            if uint256(stor2[var49006]) * stor7.length / stor7.length != uint256(stor2[var49006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalRewardWeight <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalRewardWeight
                                            if not uint256(stor2[var49006]) * stor7.length / totalRewardWeight:
                                                mem[64] = 224
                                                mem[192] = stor7[var49006]
                                            else:
                                                if (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / uint256(stor2[var49006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight):
                                                    mem[64] = 224
                                                    mem[192] = stor7[var49006]
                                                else:
                                                    mem[192] = 0
                                                    mem[224] = 0
                                                    require (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / 10^18
                                                    mem[256] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight)
                                                    mem[288] = 0
                                                    require tokenPoolIds[var49006]
                                                    mem[320] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
                                                    mem[352] = stor7[var49006]
                                                    mem[384] = 0
                                                    require stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                                    mem[64] = 448
                                                    mem[416] = stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006])
                                                    stor7[var49006] += (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
                        else:
                            mem[128] = 0
                            mem[160] = 0
                            require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49003]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49003]) * 0 / totalRewardWeight) / 10^18
                            mem[192] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49003]) * 0 / totalRewardWeight)
                            mem[224] = 0
                            require uint256(stor1[var49003])
                            mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49003]) * 0 / totalRewardWeight) / uint256(stor1[var49003])
                            mem[288] = uint256(stor3[var49003])
                            mem[320] = 0
                            require uint256(stor3[var49003]) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49003]) * 0 / totalRewardWeight) / uint256(stor1[var49003])) >= uint256(stor3[var49003])
                            mem[64] = 384
                            mem[352] = uint256(stor3[var49003]) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49003]) * 0 / totalRewardWeight) / uint256(stor1[var49003]))
                            uint256(stor3[var49006]) = uint256(stor3[var49003]) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49003]) * 0 / totalRewardWeight) / uint256(stor1[var49003]))
                            if stor[var49006]:
                                mem[384] = 0
                                if not tokenPoolIds[var49006]:
                                    mem[64] = 448
                                    mem[416] = stor7[var49006]
                                else:
                                    if uint256(stor4[var49006]) > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.number - uint256(stor4[var49006]):
                                        mem[64] = 448
                                        mem[416] = stor7[var49006]
                                    else:
                                        if not stor7.length:
                                            if totalRewardWeight <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalRewardWeight
                                            if not 0 / totalRewardWeight:
                                                mem[64] = 448
                                                mem[416] = stor7[var49006]
                                            else:
                                                if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight):
                                                    mem[64] = 448
                                                    mem[416] = stor7[var49006]
                                                else:
                                                    mem[416] = 0
                                                    mem[448] = 0
                                                    require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / 10^18
                                                    mem[480] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight)
                                                    mem[512] = 0
                                                    require tokenPoolIds[var49006]
                                                    mem[544] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                                    mem[576] = stor7[var49006]
                                                    mem[608] = 0
                                                    require stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                                    mem[64] = 672
                                                    mem[640] = stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006])
                                                    stor7[var49006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                        else:
                                            if uint256(stor2[var49006]) * stor7.length / stor7.length != uint256(stor2[var49006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalRewardWeight <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalRewardWeight
                                            if not uint256(stor2[var49006]) * stor7.length / totalRewardWeight:
                                                mem[64] = 448
                                                mem[416] = stor7[var49006]
                                            else:
                                                if (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / uint256(stor2[var49006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight):
                                                    mem[64] = 448
                                                    mem[416] = stor7[var49006]
                                                else:
                                                    mem[416] = 0
                                                    mem[448] = 0
                                                    require (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / 10^18
                                                    mem[480] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight)
                                                    mem[512] = 0
                                                    require tokenPoolIds[var49006]
                                                    mem[544] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
                                                    mem[576] = stor7[var49006]
                                                    mem[608] = 0
                                                    require stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                                    mem[64] = 672
                                                    mem[640] = stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006])
                                                    stor7[var49006] += (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
                else:
                    if uint256(stor2[var49003]) * stor7.length / stor7.length != uint256(stor2[var49003]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if totalRewardWeight <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalRewardWeight
                    if not uint256(stor2[var49003]) * stor7.length / totalRewardWeight:
                        mem[64] = 160
                        mem[128] = uint256(stor3[var49003])
                        uint256(stor3[var49006]) = uint256(stor3[var49003])
                        if stor[var49006]:
                            mem[160] = 0
                            if not tokenPoolIds[var49006]:
                                mem[64] = 224
                                mem[192] = stor7[var49006]
                            else:
                                if uint256(stor4[var49006]) > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - uint256(stor4[var49006]):
                                    mem[64] = 224
                                    mem[192] = stor7[var49006]
                                else:
                                    if not stor7.length:
                                        if totalRewardWeight <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalRewardWeight
                                        if not 0 / totalRewardWeight:
                                            mem[64] = 224
                                            mem[192] = stor7[var49006]
                                        else:
                                            if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight):
                                                mem[64] = 224
                                                mem[192] = stor7[var49006]
                                            else:
                                                mem[192] = 0
                                                mem[224] = 0
                                                require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / 10^18
                                                mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight)
                                                mem[288] = 0
                                                require tokenPoolIds[var49006]
                                                mem[320] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                                mem[352] = stor7[var49006]
                                                mem[384] = 0
                                                require stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                                mem[64] = 448
                                                mem[416] = stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006])
                                                stor7[var49006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                    else:
                                        if uint256(stor2[var49006]) * stor7.length / stor7.length != uint256(stor2[var49006]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalRewardWeight <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalRewardWeight
                                        if not uint256(stor2[var49006]) * stor7.length / totalRewardWeight:
                                            mem[64] = 224
                                            mem[192] = stor7[var49006]
                                        else:
                                            if (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / uint256(stor2[var49006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight):
                                                mem[64] = 224
                                                mem[192] = stor7[var49006]
                                            else:
                                                mem[192] = 0
                                                mem[224] = 0
                                                require (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / 10^18
                                                mem[256] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight)
                                                mem[288] = 0
                                                require tokenPoolIds[var49006]
                                                mem[320] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
                                                mem[352] = stor7[var49006]
                                                mem[384] = 0
                                                require stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                                mem[64] = 448
                                                mem[416] = stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006])
                                                stor7[var49006] += (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
                    else:
                        if (block.number * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49003]) * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) / uint256(stor2[var49003]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var49003]):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.number * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49003]) * uint256(stor2[var49003]) * stor7.length / totalRewardWeight):
                            mem[64] = 160
                            mem[128] = uint256(stor3[var49003])
                            uint256(stor3[var49006]) = uint256(stor3[var49003])
                            if stor[var49006]:
                                mem[160] = 0
                                if not tokenPoolIds[var49006]:
                                    mem[64] = 224
                                    mem[192] = stor7[var49006]
                                else:
                                    if uint256(stor4[var49006]) > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.number - uint256(stor4[var49006]):
                                        mem[64] = 224
                                        mem[192] = stor7[var49006]
                                    else:
                                        if not stor7.length:
                                            if totalRewardWeight <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalRewardWeight
                                            if not 0 / totalRewardWeight:
                                                mem[64] = 224
                                                mem[192] = stor7[var49006]
                                            else:
                                                if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight):
                                                    mem[64] = 224
                                                    mem[192] = stor7[var49006]
                                                else:
                                                    mem[192] = 0
                                                    mem[224] = 0
                                                    require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / 10^18
                                                    mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight)
                                                    mem[288] = 0
                                                    require tokenPoolIds[var49006]
                                                    mem[320] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                                    mem[352] = stor7[var49006]
                                                    mem[384] = 0
                                                    require stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                                    mem[64] = 448
                                                    mem[416] = stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006])
                                                    stor7[var49006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                        else:
                                            if uint256(stor2[var49006]) * stor7.length / stor7.length != uint256(stor2[var49006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalRewardWeight <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalRewardWeight
                                            if not uint256(stor2[var49006]) * stor7.length / totalRewardWeight:
                                                mem[64] = 224
                                                mem[192] = stor7[var49006]
                                            else:
                                                if (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / uint256(stor2[var49006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight):
                                                    mem[64] = 224
                                                    mem[192] = stor7[var49006]
                                                else:
                                                    mem[192] = 0
                                                    mem[224] = 0
                                                    require (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / 10^18
                                                    mem[256] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight)
                                                    mem[288] = 0
                                                    require tokenPoolIds[var49006]
                                                    mem[320] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
                                                    mem[352] = stor7[var49006]
                                                    mem[384] = 0
                                                    require stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                                    mem[64] = 448
                                                    mem[416] = stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006])
                                                    stor7[var49006] += (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
                        else:
                            mem[128] = 0
                            mem[160] = 0
                            require (block.number * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49003]) * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49003]) * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) / 10^18
                            mem[192] = (10^18 * block.number * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49003]) * uint256(stor2[var49003]) * stor7.length / totalRewardWeight)
                            mem[224] = 0
                            require uint256(stor1[var49003])
                            mem[256] = (10^18 * block.number * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49003]) * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) / uint256(stor1[var49003])
                            mem[288] = uint256(stor3[var49003])
                            mem[320] = 0
                            require uint256(stor3[var49003]) + ((10^18 * block.number * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49003]) * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) / uint256(stor1[var49003])) >= uint256(stor3[var49003])
                            mem[64] = 384
                            mem[352] = uint256(stor3[var49003]) + ((10^18 * block.number * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49003]) * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) / uint256(stor1[var49003]))
                            uint256(stor3[var49006]) = uint256(stor3[var49003]) + ((10^18 * block.number * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49003]) * uint256(stor2[var49003]) * stor7.length / totalRewardWeight) / uint256(stor1[var49003]))
                            if stor[var49006]:
                                mem[384] = 0
                                if not tokenPoolIds[var49006]:
                                    mem[64] = 448
                                    mem[416] = stor7[var49006]
                                else:
                                    if uint256(stor4[var49006]) > block.number:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.number - uint256(stor4[var49006]):
                                        mem[64] = 448
                                        mem[416] = stor7[var49006]
                                    else:
                                        if not stor7.length:
                                            if totalRewardWeight <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalRewardWeight
                                            if not 0 / totalRewardWeight:
                                                mem[64] = 448
                                                mem[416] = stor7[var49006]
                                            else:
                                                if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight):
                                                    mem[64] = 448
                                                    mem[416] = stor7[var49006]
                                                else:
                                                    mem[416] = 0
                                                    mem[448] = 0
                                                    require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var49006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / 10^18
                                                    mem[480] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight)
                                                    mem[512] = 0
                                                    require tokenPoolIds[var49006]
                                                    mem[544] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                                    mem[576] = stor7[var49006]
                                                    mem[608] = 0
                                                    require stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                                    mem[64] = 672
                                                    mem[640] = stor7[var49006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006])
                                                    stor7[var49006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * 0 / totalRewardWeight) / tokenPoolIds[var49006]
                                        else:
                                            if uint256(stor2[var49006]) * stor7.length / stor7.length != uint256(stor2[var49006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalRewardWeight <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalRewardWeight
                                            if not uint256(stor2[var49006]) * stor7.length / totalRewardWeight:
                                                mem[64] = 448
                                                mem[416] = stor7[var49006]
                                            else:
                                                if (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / uint256(stor2[var49006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var49006]):
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if not (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight):
                                                    mem[64] = 448
                                                    mem[416] = stor7[var49006]
                                                else:
                                                    mem[416] = 0
                                                    mem[448] = 0
                                                    require (block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / 10^18
                                                    mem[480] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight)
                                                    mem[512] = 0
                                                    require tokenPoolIds[var49006]
                                                    mem[544] = (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
                                                    mem[576] = stor7[var49006]
                                                    mem[608] = 0
                                                    require stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]) >= stor7[var49006]
                                                    mem[64] = 672
                                                    mem[640] = stor7[var49006] + ((10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006])
                                                    stor7[var49006] += (10^18 * block.number * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var49006]) * uint256(stor2[var49006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var49006]
        uint256(stor4[var49006]) = block.number
        if var49009 + 1 < poolTotalReferralAmount.length:
            mem[0] = 9
            var49003 = (9 * var49009) + sha3(9) + 9
            var49006 = (9 * var49009) + sha3(9) + 9
            var49008 = (9 * var49009) + sha3(9) + 9
            var49009 = var49009 + 1
            continue 
    stor7.length = arg1
    emit RewardRateUpdated(arg1);
}

function setRewardWeights(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if address(stor3.length) != msg.sender:
        revert with 0, 'StakingPools: only governance'
    if arg1.length != poolTotalReferralAmount.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakingPools: weights length mismatch'
    if var42002 >= poolTotalReferralAmount.length:
        if var37002 >= poolTotalReferralAmount.length:
        require var41001 < poolTotalReferralAmount.length
        require var45003 < arg1.length
        if var47004 == cd[((32 * var47001) + arg1 + 36)]:
            idx = var49003
            while idx + 1 < poolTotalReferralAmount.length:
                mem[0] = 9
                require idx + 1 < arg1.length
                if uint256(poolTotalReferralAmount[idx].field_2816) != cd[((32 * idx + 1) + arg1 + 36)]:
                    require idx + 1 < arg1.length
                    if uint256(poolTotalReferralAmount[idx].field_2816) > totalRewardWeight:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if cd[((32 * idx + 1) + arg1 + 36)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx + 1 < arg1.length
                    uint256(poolTotalReferralAmount[idx].field_2816) = cd[((32 * idx + 1) + arg1 + 36)]
                    mem[96] = cd[((32 * idx + 1) + arg1 + 36)]
                    emit PoolRewardWeightUpdated(cd[((32 * idx + 1) + arg1 + 36)], idx + 1);
                idx = idx + 1
                continue 
        require var60003 < arg1.length
        if var64001 > var64002:
            revert with 0, 'SafeMath: subtraction overflow'
        s = var66003 - var66002
        t = var66005
        u = var66007
        u = var66008
        v = var66009
        w = var66010
        while t + s >= s:
            require v < arg1.length
            uint256(stor2[u]) = cd[((32 * v) + arg1 + 36)]
            emit PoolRewardWeightUpdated(cd[((32 * v) + arg1 + 36)], v);
            idx = v
            while idx + 1 < poolTotalReferralAmount.length:
                mem[0] = 9
                require idx + 1 < arg1.length
                if uint256(poolTotalReferralAmount[idx].field_2816) == cd[((32 * idx + 1) + arg1 + 36)]:
                    idx = idx + 1
                    continue 
                require idx + 1 < arg1.length
                if uint256(poolTotalReferralAmount[idx].field_2816) > t + s:
                    revert with 0, 'SafeMath: subtraction overflow'
                s = t + s - uint256(poolTotalReferralAmount[idx].field_2816)
                t = cd[((32 * idx + 1) + arg1 + 36)]
                u = uint256(poolTotalReferralAmount[idx].field_2816)
                u = (9 * idx) + sha3(9) + 9
                v = idx + 1
                w = t + s
                continue 
            totalRewardWeight = t + s
        revert with 0, 'SafeMath: addition overflow'
    require var46001 < poolTotalReferralAmount.length
    mem[96] = 0
    if not uint256(stor1[var56003]):
        mem[64] = 160
        mem[128] = uint256(stor3[var56003])
        uint256(stor3[var56006]) = uint256(stor3[var56003])
        if not stor[var56006]:
            uint256(stor4[var56006]) = block.number
            if var56009 + 1 < poolTotalReferralAmount.length:
                mem[0] = 9
                var56003 = (9 * var56009) + sha3(9) + 9
                var56006 = (9 * var56009) + sha3(9) + 9
                var56008 = (9 * var56009) + sha3(9) + 9
                var56009 = var56009 + 1
                continue 
            if var60002 >= poolTotalReferralAmount.length:
            require var64001 < poolTotalReferralAmount.length
            require var68003 < arg1.length
            if var70004 == cd[((32 * var70001) + arg1 + 36)]:
                # nil
            else:
                require var83003 < arg1.length
                # nil
        else:
            mem[160] = 0
            if not tokenPoolIds[var56006]:
                mem[64] = 224
                mem[192] = stor7[var56006]
                uint256(stor4[var56006]) = block.number
                if var56009 + 1 < poolTotalReferralAmount.length:
                    mem[0] = 9
                    var56003 = (9 * var56009) + sha3(9) + 9
                    var56006 = (9 * var56009) + sha3(9) + 9
                    var56008 = (9 * var56009) + sha3(9) + 9
                    var56009 = var56009 + 1
                    continue 
                if var67002 >= poolTotalReferralAmount.length:
                require var71001 < poolTotalReferralAmount.length
                require var75003 < arg1.length
                if var77004 == cd[((32 * var77001) + arg1 + 36)]:
                    # nil
                else:
                    require var90003 < arg1.length
                    # nil
            else:
                if uint256(stor4[var56006]) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - uint256(stor4[var56006]):
                    mem[64] = 224
                    mem[192] = stor7[var56006]
                    uint256(stor4[var56006]) = block.number
                    if var56009 + 1 < poolTotalReferralAmount.length:
                        mem[0] = 9
                        var56003 = (9 * var56009) + sha3(9) + 9
                        var56006 = (9 * var56009) + sha3(9) + 9
                        var56008 = (9 * var56009) + sha3(9) + 9
                        var56009 = var56009 + 1
                        continue 
                    if var71002 >= poolTotalReferralAmount.length:
                    require var75001 < poolTotalReferralAmount.length
                    require var79003 < arg1.length
                    if var81004 == cd[((32 * var81001) + arg1 + 36)]:
                        # nil
                    else:
                        require var94003 < arg1.length
                        # nil
                else:
                    if not stor7.length:
                        if totalRewardWeight <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalRewardWeight
                        if not 0 / totalRewardWeight:
                            mem[64] = 224
                            mem[192] = stor7[var56006]
                            uint256(stor4[var56006]) = block.number
                            if var56009 + 1 < poolTotalReferralAmount.length:
                                mem[0] = 9
                                var56003 = (9 * var56009) + sha3(9) + 9
                                var56006 = (9 * var56009) + sha3(9) + 9
                                var56008 = (9 * var56009) + sha3(9) + 9
                                var56009 = var56009 + 1
                                continue 
                            if var86002 >= poolTotalReferralAmount.length:
                            require var90001 < poolTotalReferralAmount.length
                            require var94003 < arg1.length
                            if var96004 == cd[((32 * var96001) + arg1 + 36)]:
                                # nil
                            else:
                                require var109003 < arg1.length
                                # nil
                        else:
                            if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight):
                                mem[64] = 224
                                mem[192] = stor7[var56006]
                                uint256(stor4[var56006]) = block.number
                                if var56009 + 1 < poolTotalReferralAmount.length:
                                    mem[0] = 9
                                    var56003 = (9 * var56009) + sha3(9) + 9
                                    var56006 = (9 * var56009) + sha3(9) + 9
                                    var56008 = (9 * var56009) + sha3(9) + 9
                                    var56009 = var56009 + 1
                                    continue 
                                if var87002 >= poolTotalReferralAmount.length:
                                require var91001 < poolTotalReferralAmount.length
                                require var95003 < arg1.length
                                if var97004 == cd[((32 * var97001) + arg1 + 36)]:
                                    # nil
                                else:
                                    require var110003 < arg1.length
                                    # nil
                            else:
                                mem[192] = 0
                                mem[224] = 0
                                require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / 10^18
                                mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight)
                                mem[288] = 0
                                require tokenPoolIds[var56006]
                                mem[320] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                mem[352] = stor7[var56006]
                                mem[384] = 0
                                require stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                mem[64] = 448
                                mem[416] = stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006])
                                stor7[var56006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                uint256(stor4[var56006]) = block.number
                                if var56009 + 1 < poolTotalReferralAmount.length:
                                    mem[0] = 9
                                    var56003 = (9 * var56009) + sha3(9) + 9
                                    var56006 = (9 * var56009) + sha3(9) + 9
                                    var56008 = (9 * var56009) + sha3(9) + 9
                                    var56009 = var56009 + 1
                                    continue 
                                if var106002 >= poolTotalReferralAmount.length:
                                require var110001 < poolTotalReferralAmount.length
                                require var114003 < arg1.length
                                if var116004 == cd[((32 * var116001) + arg1 + 36)]:
                                    # nil
                                else:
                                    require var129003 < arg1.length
                                    # nil
                    else:
                        if uint256(stor2[var56006]) * stor7.length / stor7.length != uint256(stor2[var56006]):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalRewardWeight <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalRewardWeight
                        if not uint256(stor2[var56006]) * stor7.length / totalRewardWeight:
                            mem[64] = 224
                            mem[192] = stor7[var56006]
                            uint256(stor4[var56006]) = block.number
                            if var56009 + 1 < poolTotalReferralAmount.length:
                                mem[0] = 9
                                var56003 = (9 * var56009) + sha3(9) + 9
                                var56006 = (9 * var56009) + sha3(9) + 9
                                var56008 = (9 * var56009) + sha3(9) + 9
                                var56009 = var56009 + 1
                                continue 
                            if var87002 >= poolTotalReferralAmount.length:
                            require var91001 < poolTotalReferralAmount.length
                            require var95003 < arg1.length
                            if var97004 == cd[((32 * var97001) + arg1 + 36)]:
                                # nil
                            else:
                                require var110003 < arg1.length
                                # nil
                        else:
                            if (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / uint256(stor2[var56006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight):
                                mem[64] = 224
                                mem[192] = stor7[var56006]
                                uint256(stor4[var56006]) = block.number
                                if var56009 + 1 < poolTotalReferralAmount.length:
                                    mem[0] = 9
                                    var56003 = (9 * var56009) + sha3(9) + 9
                                    var56006 = (9 * var56009) + sha3(9) + 9
                                    var56008 = (9 * var56009) + sha3(9) + 9
                                    var56009 = var56009 + 1
                                    continue 
                                if var88002 >= poolTotalReferralAmount.length:
                                require var92001 < poolTotalReferralAmount.length
                                require var96003 < arg1.length
                                if var98004 == cd[((32 * var98001) + arg1 + 36)]:
                                    # nil
                                else:
                                    require var111003 < arg1.length
                                    # nil
                            else:
                                mem[192] = 0
                                mem[224] = 0
                                require (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / 10^18
                                mem[256] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight)
                                mem[288] = 0
                                require tokenPoolIds[var56006]
                                mem[320] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                mem[352] = stor7[var56006]
                                mem[384] = 0
                                require stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                mem[64] = 448
                                mem[416] = stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006])
                                stor7[var56006] += (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                uint256(stor4[var56006]) = block.number
                                if var56009 + 1 < poolTotalReferralAmount.length:
                                    mem[0] = 9
                                    var56003 = (9 * var56009) + sha3(9) + 9
                                    var56006 = (9 * var56009) + sha3(9) + 9
                                    var56008 = (9 * var56009) + sha3(9) + 9
                                    var56009 = var56009 + 1
                                    continue 
                                if var107002 >= poolTotalReferralAmount.length:
                                require var111001 < poolTotalReferralAmount.length
                                require var115003 < arg1.length
                                if var117004 == cd[((32 * var117001) + arg1 + 36)]:
                                    # nil
                                else:
                                    require var130003 < arg1.length
                                    # nil
    else:
        if uint256(stor4[var56003]) > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - uint256(stor4[var56003]):
            mem[64] = 160
            mem[128] = uint256(stor3[var56003])
            uint256(stor3[var56006]) = uint256(stor3[var56003])
            if not stor[var56006]:
                uint256(stor4[var56006]) = block.number
                if var56009 + 1 < poolTotalReferralAmount.length:
                    mem[0] = 9
                    var56003 = (9 * var56009) + sha3(9) + 9
                    var56006 = (9 * var56009) + sha3(9) + 9
                    var56008 = (9 * var56009) + sha3(9) + 9
                    var56009 = var56009 + 1
                    continue 
                if var64002 >= poolTotalReferralAmount.length:
                require var68001 < poolTotalReferralAmount.length
                require var72003 < arg1.length
                if var74004 == cd[((32 * var74001) + arg1 + 36)]:
                    # nil
                else:
                    require var87003 < arg1.length
                    # nil
            else:
                mem[160] = 0
                if not tokenPoolIds[var56006]:
                    mem[64] = 224
                    mem[192] = stor7[var56006]
                    uint256(stor4[var56006]) = block.number
                    if var56009 + 1 < poolTotalReferralAmount.length:
                        mem[0] = 9
                        var56003 = (9 * var56009) + sha3(9) + 9
                        var56006 = (9 * var56009) + sha3(9) + 9
                        var56008 = (9 * var56009) + sha3(9) + 9
                        var56009 = var56009 + 1
                        continue 
                    if var71002 >= poolTotalReferralAmount.length:
                    require var75001 < poolTotalReferralAmount.length
                    require var79003 < arg1.length
                    if var81004 == cd[((32 * var81001) + arg1 + 36)]:
                        # nil
                    else:
                        require var94003 < arg1.length
                        # nil
                else:
                    if uint256(stor4[var56006]) > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - uint256(stor4[var56006]):
                        mem[64] = 224
                        mem[192] = stor7[var56006]
                        uint256(stor4[var56006]) = block.number
                        if var56009 + 1 < poolTotalReferralAmount.length:
                            mem[0] = 9
                            var56003 = (9 * var56009) + sha3(9) + 9
                            var56006 = (9 * var56009) + sha3(9) + 9
                            var56008 = (9 * var56009) + sha3(9) + 9
                            var56009 = var56009 + 1
                            continue 
                        if var75002 >= poolTotalReferralAmount.length:
                        require var79001 < poolTotalReferralAmount.length
                        require var83003 < arg1.length
                        if var85004 == cd[((32 * var85001) + arg1 + 36)]:
                            # nil
                        else:
                            require var98003 < arg1.length
                            # nil
                    else:
                        if not stor7.length:
                            if totalRewardWeight <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalRewardWeight
                            if not 0 / totalRewardWeight:
                                mem[64] = 224
                                mem[192] = stor7[var56006]
                                uint256(stor4[var56006]) = block.number
                                if var56009 + 1 < poolTotalReferralAmount.length:
                                    mem[0] = 9
                                    var56003 = (9 * var56009) + sha3(9) + 9
                                    var56006 = (9 * var56009) + sha3(9) + 9
                                    var56008 = (9 * var56009) + sha3(9) + 9
                                    var56009 = var56009 + 1
                                    continue 
                                if var90002 >= poolTotalReferralAmount.length:
                                require var94001 < poolTotalReferralAmount.length
                                require var98003 < arg1.length
                                if var100004 == cd[((32 * var100001) + arg1 + 36)]:
                                    # nil
                                else:
                                    require var113003 < arg1.length
                                    # nil
                            else:
                                if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight):
                                    mem[64] = 224
                                    mem[192] = stor7[var56006]
                                    uint256(stor4[var56006]) = block.number
                                    if var56009 + 1 < poolTotalReferralAmount.length:
                                        mem[0] = 9
                                        var56003 = (9 * var56009) + sha3(9) + 9
                                        var56006 = (9 * var56009) + sha3(9) + 9
                                        var56008 = (9 * var56009) + sha3(9) + 9
                                        var56009 = var56009 + 1
                                        continue 
                                    if var91002 >= poolTotalReferralAmount.length:
                                    require var95001 < poolTotalReferralAmount.length
                                    require var99003 < arg1.length
                                    if var101004 == cd[((32 * var101001) + arg1 + 36)]:
                                        # nil
                                    else:
                                        require var114003 < arg1.length
                                        # nil
                                else:
                                    mem[192] = 0
                                    mem[224] = 0
                                    require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / 10^18
                                    mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight)
                                    mem[288] = 0
                                    require tokenPoolIds[var56006]
                                    mem[320] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                    mem[352] = stor7[var56006]
                                    mem[384] = 0
                                    require stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                    mem[64] = 448
                                    mem[416] = stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006])
                                    stor7[var56006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                    uint256(stor4[var56006]) = block.number
                                    if var56009 + 1 < poolTotalReferralAmount.length:
                                        mem[0] = 9
                                        var56003 = (9 * var56009) + sha3(9) + 9
                                        var56006 = (9 * var56009) + sha3(9) + 9
                                        var56008 = (9 * var56009) + sha3(9) + 9
                                        var56009 = var56009 + 1
                                        continue 
                                    if var110002 >= poolTotalReferralAmount.length:
                                    require var114001 < poolTotalReferralAmount.length
                                    require var118003 < arg1.length
                                    if var120004 == cd[((32 * var120001) + arg1 + 36)]:
                                        # nil
                                    else:
                                        require var133003 < arg1.length
                                        # nil
                        else:
                            if uint256(stor2[var56006]) * stor7.length / stor7.length != uint256(stor2[var56006]):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalRewardWeight <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalRewardWeight
                            if not uint256(stor2[var56006]) * stor7.length / totalRewardWeight:
                                mem[64] = 224
                                mem[192] = stor7[var56006]
                                uint256(stor4[var56006]) = block.number
                                if var56009 + 1 < poolTotalReferralAmount.length:
                                    mem[0] = 9
                                    var56003 = (9 * var56009) + sha3(9) + 9
                                    var56006 = (9 * var56009) + sha3(9) + 9
                                    var56008 = (9 * var56009) + sha3(9) + 9
                                    var56009 = var56009 + 1
                                    continue 
                                if var91002 >= poolTotalReferralAmount.length:
                                require var95001 < poolTotalReferralAmount.length
                                require var99003 < arg1.length
                                if var101004 == cd[((32 * var101001) + arg1 + 36)]:
                                    # nil
                                else:
                                    require var114003 < arg1.length
                                    # nil
                            else:
                                if (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / uint256(stor2[var56006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight):
                                    mem[64] = 224
                                    mem[192] = stor7[var56006]
                                    uint256(stor4[var56006]) = block.number
                                    if var56009 + 1 < poolTotalReferralAmount.length:
                                        mem[0] = 9
                                        var56003 = (9 * var56009) + sha3(9) + 9
                                        var56006 = (9 * var56009) + sha3(9) + 9
                                        var56008 = (9 * var56009) + sha3(9) + 9
                                        var56009 = var56009 + 1
                                        continue 
                                    if var92002 >= poolTotalReferralAmount.length:
                                    require var96001 < poolTotalReferralAmount.length
                                    require var100003 < arg1.length
                                    if var102004 == cd[((32 * var102001) + arg1 + 36)]:
                                        # nil
                                    else:
                                        require var115003 < arg1.length
                                        # nil
                                else:
                                    mem[192] = 0
                                    mem[224] = 0
                                    require (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / 10^18
                                    mem[256] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight)
                                    mem[288] = 0
                                    require tokenPoolIds[var56006]
                                    mem[320] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                    mem[352] = stor7[var56006]
                                    mem[384] = 0
                                    require stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                    mem[64] = 448
                                    mem[416] = stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006])
                                    stor7[var56006] += (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                    uint256(stor4[var56006]) = block.number
                                    if var56009 + 1 < poolTotalReferralAmount.length:
                                        mem[0] = 9
                                        var56003 = (9 * var56009) + sha3(9) + 9
                                        var56006 = (9 * var56009) + sha3(9) + 9
                                        var56008 = (9 * var56009) + sha3(9) + 9
                                        var56009 = var56009 + 1
                                        continue 
                                    if var111002 >= poolTotalReferralAmount.length:
                                    require var115001 < poolTotalReferralAmount.length
                                    require var119003 < arg1.length
                                    if var121004 == cd[((32 * var121001) + arg1 + 36)]:
                                        # nil
                                    else:
                                        require var134003 < arg1.length
                                        # nil
        else:
            if not stor7.length:
                if totalRewardWeight <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalRewardWeight
                if not 0 / totalRewardWeight:
                    mem[64] = 160
                    mem[128] = uint256(stor3[var56003])
                    uint256(stor3[var56006]) = uint256(stor3[var56003])
                    if not stor[var56006]:
                        uint256(stor4[var56006]) = block.number
                        if var56009 + 1 < poolTotalReferralAmount.length:
                            mem[0] = 9
                            var56003 = (9 * var56009) + sha3(9) + 9
                            var56006 = (9 * var56009) + sha3(9) + 9
                            var56008 = (9 * var56009) + sha3(9) + 9
                            var56009 = var56009 + 1
                            continue 
                        if var79002 >= poolTotalReferralAmount.length:
                        require var83001 < poolTotalReferralAmount.length
                        require var87003 < arg1.length
                        if var89004 == cd[((32 * var89001) + arg1 + 36)]:
                            # nil
                        else:
                            require var102003 < arg1.length
                            # nil
                    else:
                        mem[160] = 0
                        if not tokenPoolIds[var56006]:
                            mem[64] = 224
                            mem[192] = stor7[var56006]
                            uint256(stor4[var56006]) = block.number
                            if var56009 + 1 < poolTotalReferralAmount.length:
                                mem[0] = 9
                                var56003 = (9 * var56009) + sha3(9) + 9
                                var56006 = (9 * var56009) + sha3(9) + 9
                                var56008 = (9 * var56009) + sha3(9) + 9
                                var56009 = var56009 + 1
                                continue 
                            if var86002 >= poolTotalReferralAmount.length:
                            require var90001 < poolTotalReferralAmount.length
                            require var94003 < arg1.length
                            if var96004 == cd[((32 * var96001) + arg1 + 36)]:
                                # nil
                            else:
                                require var109003 < arg1.length
                                # nil
                        else:
                            if uint256(stor4[var56006]) > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - uint256(stor4[var56006]):
                                mem[64] = 224
                                mem[192] = stor7[var56006]
                                uint256(stor4[var56006]) = block.number
                                if var56009 + 1 < poolTotalReferralAmount.length:
                                    mem[0] = 9
                                    var56003 = (9 * var56009) + sha3(9) + 9
                                    var56006 = (9 * var56009) + sha3(9) + 9
                                    var56008 = (9 * var56009) + sha3(9) + 9
                                    var56009 = var56009 + 1
                                    continue 
                                if var90002 >= poolTotalReferralAmount.length:
                                require var94001 < poolTotalReferralAmount.length
                                require var98003 < arg1.length
                                if var100004 == cd[((32 * var100001) + arg1 + 36)]:
                                    # nil
                                else:
                                    require var113003 < arg1.length
                                    # nil
                            else:
                                if not stor7.length:
                                    if totalRewardWeight <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalRewardWeight
                                    if not 0 / totalRewardWeight:
                                        mem[64] = 224
                                        mem[192] = stor7[var56006]
                                        uint256(stor4[var56006]) = block.number
                                        if var56009 + 1 < poolTotalReferralAmount.length:
                                            mem[0] = 9
                                            var56003 = (9 * var56009) + sha3(9) + 9
                                            var56006 = (9 * var56009) + sha3(9) + 9
                                            var56008 = (9 * var56009) + sha3(9) + 9
                                            var56009 = var56009 + 1
                                            continue 
                                        if var105002 >= poolTotalReferralAmount.length:
                                        require var109001 < poolTotalReferralAmount.length
                                        require var113003 < arg1.length
                                        if var115004 == cd[((32 * var115001) + arg1 + 36)]:
                                            # nil
                                        else:
                                            require var128003 < arg1.length
                                            # nil
                                    else:
                                        if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight):
                                            mem[64] = 224
                                            mem[192] = stor7[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var106002 >= poolTotalReferralAmount.length:
                                            require var110001 < poolTotalReferralAmount.length
                                            require var114003 < arg1.length
                                            if var116004 == cd[((32 * var116001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var129003 < arg1.length
                                                # nil
                                        else:
                                            mem[192] = 0
                                            mem[224] = 0
                                            require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / 10^18
                                            mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight)
                                            mem[288] = 0
                                            require tokenPoolIds[var56006]
                                            mem[320] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                            mem[352] = stor7[var56006]
                                            mem[384] = 0
                                            require stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                            mem[64] = 448
                                            mem[416] = stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006])
                                            stor7[var56006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var125002 >= poolTotalReferralAmount.length:
                                            require var129001 < poolTotalReferralAmount.length
                                            require var133003 < arg1.length
                                            if var135004 == cd[((32 * var135001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var148003 < arg1.length
                                                # nil
                                else:
                                    if uint256(stor2[var56006]) * stor7.length / stor7.length != uint256(stor2[var56006]):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalRewardWeight <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalRewardWeight
                                    if not uint256(stor2[var56006]) * stor7.length / totalRewardWeight:
                                        mem[64] = 224
                                        mem[192] = stor7[var56006]
                                        uint256(stor4[var56006]) = block.number
                                        if var56009 + 1 < poolTotalReferralAmount.length:
                                            mem[0] = 9
                                            var56003 = (9 * var56009) + sha3(9) + 9
                                            var56006 = (9 * var56009) + sha3(9) + 9
                                            var56008 = (9 * var56009) + sha3(9) + 9
                                            var56009 = var56009 + 1
                                            continue 
                                        if var106002 >= poolTotalReferralAmount.length:
                                        require var110001 < poolTotalReferralAmount.length
                                        require var114003 < arg1.length
                                        if var116004 == cd[((32 * var116001) + arg1 + 36)]:
                                            # nil
                                        else:
                                            require var129003 < arg1.length
                                            # nil
                                    else:
                                        if (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / uint256(stor2[var56006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight):
                                            mem[64] = 224
                                            mem[192] = stor7[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var107002 >= poolTotalReferralAmount.length:
                                            require var111001 < poolTotalReferralAmount.length
                                            require var115003 < arg1.length
                                            if var117004 == cd[((32 * var117001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var130003 < arg1.length
                                                # nil
                                        else:
                                            mem[192] = 0
                                            mem[224] = 0
                                            require (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / 10^18
                                            mem[256] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight)
                                            mem[288] = 0
                                            require tokenPoolIds[var56006]
                                            mem[320] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                            mem[352] = stor7[var56006]
                                            mem[384] = 0
                                            require stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                            mem[64] = 448
                                            mem[416] = stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006])
                                            stor7[var56006] += (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var126002 >= poolTotalReferralAmount.length:
                                            require var130001 < poolTotalReferralAmount.length
                                            require var134003 < arg1.length
                                            if var136004 == cd[((32 * var136001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var149003 < arg1.length
                                                # nil
                else:
                    if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56003]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var56003]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56003]) * 0 / totalRewardWeight):
                        mem[64] = 160
                        mem[128] = uint256(stor3[var56003])
                        uint256(stor3[var56006]) = uint256(stor3[var56003])
                        if not stor[var56006]:
                            uint256(stor4[var56006]) = block.number
                            if var56009 + 1 < poolTotalReferralAmount.length:
                                mem[0] = 9
                                var56003 = (9 * var56009) + sha3(9) + 9
                                var56006 = (9 * var56009) + sha3(9) + 9
                                var56008 = (9 * var56009) + sha3(9) + 9
                                var56009 = var56009 + 1
                                continue 
                            if var80002 >= poolTotalReferralAmount.length:
                            require var84001 < poolTotalReferralAmount.length
                            require var88003 < arg1.length
                            if var90004 == cd[((32 * var90001) + arg1 + 36)]:
                                # nil
                            else:
                                require var103003 < arg1.length
                                # nil
                        else:
                            mem[160] = 0
                            if not tokenPoolIds[var56006]:
                                mem[64] = 224
                                mem[192] = stor7[var56006]
                                uint256(stor4[var56006]) = block.number
                                if var56009 + 1 < poolTotalReferralAmount.length:
                                    mem[0] = 9
                                    var56003 = (9 * var56009) + sha3(9) + 9
                                    var56006 = (9 * var56009) + sha3(9) + 9
                                    var56008 = (9 * var56009) + sha3(9) + 9
                                    var56009 = var56009 + 1
                                    continue 
                                if var87002 >= poolTotalReferralAmount.length:
                                require var91001 < poolTotalReferralAmount.length
                                require var95003 < arg1.length
                                if var97004 == cd[((32 * var97001) + arg1 + 36)]:
                                    # nil
                                else:
                                    require var110003 < arg1.length
                                    # nil
                            else:
                                if uint256(stor4[var56006]) > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - uint256(stor4[var56006]):
                                    mem[64] = 224
                                    mem[192] = stor7[var56006]
                                    uint256(stor4[var56006]) = block.number
                                    if var56009 + 1 < poolTotalReferralAmount.length:
                                        mem[0] = 9
                                        var56003 = (9 * var56009) + sha3(9) + 9
                                        var56006 = (9 * var56009) + sha3(9) + 9
                                        var56008 = (9 * var56009) + sha3(9) + 9
                                        var56009 = var56009 + 1
                                        continue 
                                    if var91002 >= poolTotalReferralAmount.length:
                                    require var95001 < poolTotalReferralAmount.length
                                    require var99003 < arg1.length
                                    if var101004 == cd[((32 * var101001) + arg1 + 36)]:
                                        # nil
                                    else:
                                        require var114003 < arg1.length
                                        # nil
                                else:
                                    if not stor7.length:
                                        if totalRewardWeight <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalRewardWeight
                                        if not 0 / totalRewardWeight:
                                            mem[64] = 224
                                            mem[192] = stor7[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var106002 >= poolTotalReferralAmount.length:
                                            require var110001 < poolTotalReferralAmount.length
                                            require var114003 < arg1.length
                                            if var116004 == cd[((32 * var116001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var129003 < arg1.length
                                                # nil
                                        else:
                                            if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight):
                                                mem[64] = 224
                                                mem[192] = stor7[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var107002 >= poolTotalReferralAmount.length:
                                                require var111001 < poolTotalReferralAmount.length
                                                require var115003 < arg1.length
                                                if var117004 == cd[((32 * var117001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var130003 < arg1.length
                                                    # nil
                                            else:
                                                mem[192] = 0
                                                mem[224] = 0
                                                require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / 10^18
                                                mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight)
                                                mem[288] = 0
                                                require tokenPoolIds[var56006]
                                                mem[320] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                                mem[352] = stor7[var56006]
                                                mem[384] = 0
                                                require stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                                mem[64] = 448
                                                mem[416] = stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006])
                                                stor7[var56006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var126002 >= poolTotalReferralAmount.length:
                                                require var130001 < poolTotalReferralAmount.length
                                                require var134003 < arg1.length
                                                if var136004 == cd[((32 * var136001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var149003 < arg1.length
                                                    # nil
                                    else:
                                        if uint256(stor2[var56006]) * stor7.length / stor7.length != uint256(stor2[var56006]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalRewardWeight <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalRewardWeight
                                        if not uint256(stor2[var56006]) * stor7.length / totalRewardWeight:
                                            mem[64] = 224
                                            mem[192] = stor7[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var107002 >= poolTotalReferralAmount.length:
                                            require var111001 < poolTotalReferralAmount.length
                                            require var115003 < arg1.length
                                            if var117004 == cd[((32 * var117001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var130003 < arg1.length
                                                # nil
                                        else:
                                            if (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / uint256(stor2[var56006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight):
                                                mem[64] = 224
                                                mem[192] = stor7[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var108002 >= poolTotalReferralAmount.length:
                                                require var112001 < poolTotalReferralAmount.length
                                                require var116003 < arg1.length
                                                if var118004 == cd[((32 * var118001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var131003 < arg1.length
                                                    # nil
                                            else:
                                                mem[192] = 0
                                                mem[224] = 0
                                                require (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / 10^18
                                                mem[256] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight)
                                                mem[288] = 0
                                                require tokenPoolIds[var56006]
                                                mem[320] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                                mem[352] = stor7[var56006]
                                                mem[384] = 0
                                                require stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                                mem[64] = 448
                                                mem[416] = stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006])
                                                stor7[var56006] += (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var127002 >= poolTotalReferralAmount.length:
                                                require var131001 < poolTotalReferralAmount.length
                                                require var135003 < arg1.length
                                                if var137004 == cd[((32 * var137001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var150003 < arg1.length
                                                    # nil
                    else:
                        mem[128] = 0
                        mem[160] = 0
                        require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56003]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56003]) * 0 / totalRewardWeight) / 10^18
                        mem[192] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56003]) * 0 / totalRewardWeight)
                        mem[224] = 0
                        require uint256(stor1[var56003])
                        mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56003]) * 0 / totalRewardWeight) / uint256(stor1[var56003])
                        mem[288] = uint256(stor3[var56003])
                        mem[320] = 0
                        require uint256(stor3[var56003]) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56003]) * 0 / totalRewardWeight) / uint256(stor1[var56003])) >= uint256(stor3[var56003])
                        mem[64] = 384
                        mem[352] = uint256(stor3[var56003]) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56003]) * 0 / totalRewardWeight) / uint256(stor1[var56003]))
                        uint256(stor3[var56006]) = uint256(stor3[var56003]) + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56003]) * 0 / totalRewardWeight) / uint256(stor1[var56003]))
                        if not stor[var56006]:
                            uint256(stor4[var56006]) = block.number
                            if var56009 + 1 < poolTotalReferralAmount.length:
                                mem[0] = 9
                                var56003 = (9 * var56009) + sha3(9) + 9
                                var56006 = (9 * var56009) + sha3(9) + 9
                                var56008 = (9 * var56009) + sha3(9) + 9
                                var56009 = var56009 + 1
                                continue 
                            if var99002 >= poolTotalReferralAmount.length:
                            require var103001 < poolTotalReferralAmount.length
                            require var107003 < arg1.length
                            if var109004 == cd[((32 * var109001) + arg1 + 36)]:
                                # nil
                            else:
                                require var122003 < arg1.length
                                # nil
                        else:
                            mem[384] = 0
                            if not tokenPoolIds[var56006]:
                                mem[64] = 448
                                mem[416] = stor7[var56006]
                                uint256(stor4[var56006]) = block.number
                                if var56009 + 1 < poolTotalReferralAmount.length:
                                    mem[0] = 9
                                    var56003 = (9 * var56009) + sha3(9) + 9
                                    var56006 = (9 * var56009) + sha3(9) + 9
                                    var56008 = (9 * var56009) + sha3(9) + 9
                                    var56009 = var56009 + 1
                                    continue 
                                if var106002 >= poolTotalReferralAmount.length:
                                require var110001 < poolTotalReferralAmount.length
                                require var114003 < arg1.length
                                if var116004 == cd[((32 * var116001) + arg1 + 36)]:
                                    # nil
                                else:
                                    require var129003 < arg1.length
                                    # nil
                            else:
                                if uint256(stor4[var56006]) > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - uint256(stor4[var56006]):
                                    mem[64] = 448
                                    mem[416] = stor7[var56006]
                                    uint256(stor4[var56006]) = block.number
                                    if var56009 + 1 < poolTotalReferralAmount.length:
                                        mem[0] = 9
                                        var56003 = (9 * var56009) + sha3(9) + 9
                                        var56006 = (9 * var56009) + sha3(9) + 9
                                        var56008 = (9 * var56009) + sha3(9) + 9
                                        var56009 = var56009 + 1
                                        continue 
                                    if var110002 >= poolTotalReferralAmount.length:
                                    require var114001 < poolTotalReferralAmount.length
                                    require var118003 < arg1.length
                                    if var120004 == cd[((32 * var120001) + arg1 + 36)]:
                                        # nil
                                    else:
                                        require var133003 < arg1.length
                                        # nil
                                else:
                                    if not stor7.length:
                                        if totalRewardWeight <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalRewardWeight
                                        if not 0 / totalRewardWeight:
                                            mem[64] = 448
                                            mem[416] = stor7[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var125002 >= poolTotalReferralAmount.length:
                                            require var129001 < poolTotalReferralAmount.length
                                            require var133003 < arg1.length
                                            if var135004 == cd[((32 * var135001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var148003 < arg1.length
                                                # nil
                                        else:
                                            if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight):
                                                mem[64] = 448
                                                mem[416] = stor7[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var126002 >= poolTotalReferralAmount.length:
                                                require var130001 < poolTotalReferralAmount.length
                                                require var134003 < arg1.length
                                                if var136004 == cd[((32 * var136001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var149003 < arg1.length
                                                    # nil
                                            else:
                                                mem[416] = 0
                                                mem[448] = 0
                                                require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / 10^18
                                                mem[480] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight)
                                                mem[512] = 0
                                                require tokenPoolIds[var56006]
                                                mem[544] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                                mem[576] = stor7[var56006]
                                                mem[608] = 0
                                                require stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                                mem[64] = 672
                                                mem[640] = stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006])
                                                stor7[var56006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var145002 >= poolTotalReferralAmount.length:
                                                require var149001 < poolTotalReferralAmount.length
                                                require var153003 < arg1.length
                                                if var155004 == cd[((32 * var155001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var168003 < arg1.length
                                                    # nil
                                    else:
                                        if uint256(stor2[var56006]) * stor7.length / stor7.length != uint256(stor2[var56006]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalRewardWeight <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalRewardWeight
                                        if not uint256(stor2[var56006]) * stor7.length / totalRewardWeight:
                                            mem[64] = 448
                                            mem[416] = stor7[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var126002 >= poolTotalReferralAmount.length:
                                            require var130001 < poolTotalReferralAmount.length
                                            require var134003 < arg1.length
                                            if var136004 == cd[((32 * var136001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var149003 < arg1.length
                                                # nil
                                        else:
                                            if (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / uint256(stor2[var56006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight):
                                                mem[64] = 448
                                                mem[416] = stor7[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var127002 >= poolTotalReferralAmount.length:
                                                require var131001 < poolTotalReferralAmount.length
                                                require var135003 < arg1.length
                                                if var137004 == cd[((32 * var137001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var150003 < arg1.length
                                                    # nil
                                            else:
                                                mem[416] = 0
                                                mem[448] = 0
                                                require (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / 10^18
                                                mem[480] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight)
                                                mem[512] = 0
                                                require tokenPoolIds[var56006]
                                                mem[544] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                                mem[576] = stor7[var56006]
                                                mem[608] = 0
                                                require stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                                mem[64] = 672
                                                mem[640] = stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006])
                                                stor7[var56006] += (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var146002 >= poolTotalReferralAmount.length:
                                                require var150001 < poolTotalReferralAmount.length
                                                require var154003 < arg1.length
                                                if var156004 == cd[((32 * var156001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var169003 < arg1.length
                                                    # nil
            else:
                if uint256(stor2[var56003]) * stor7.length / stor7.length != uint256(stor2[var56003]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if totalRewardWeight <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalRewardWeight
                if not uint256(stor2[var56003]) * stor7.length / totalRewardWeight:
                    mem[64] = 160
                    mem[128] = uint256(stor3[var56003])
                    uint256(stor3[var56006]) = uint256(stor3[var56003])
                    if not stor[var56006]:
                        uint256(stor4[var56006]) = block.number
                        if var56009 + 1 < poolTotalReferralAmount.length:
                            mem[0] = 9
                            var56003 = (9 * var56009) + sha3(9) + 9
                            var56006 = (9 * var56009) + sha3(9) + 9
                            var56008 = (9 * var56009) + sha3(9) + 9
                            var56009 = var56009 + 1
                            continue 
                        if var80002 >= poolTotalReferralAmount.length:
                        require var84001 < poolTotalReferralAmount.length
                        require var88003 < arg1.length
                        if var90004 == cd[((32 * var90001) + arg1 + 36)]:
                            # nil
                        else:
                            require var103003 < arg1.length
                            # nil
                    else:
                        mem[160] = 0
                        if not tokenPoolIds[var56006]:
                            mem[64] = 224
                            mem[192] = stor7[var56006]
                            uint256(stor4[var56006]) = block.number
                            if var56009 + 1 < poolTotalReferralAmount.length:
                                mem[0] = 9
                                var56003 = (9 * var56009) + sha3(9) + 9
                                var56006 = (9 * var56009) + sha3(9) + 9
                                var56008 = (9 * var56009) + sha3(9) + 9
                                var56009 = var56009 + 1
                                continue 
                            if var87002 >= poolTotalReferralAmount.length:
                            require var91001 < poolTotalReferralAmount.length
                            require var95003 < arg1.length
                            if var97004 == cd[((32 * var97001) + arg1 + 36)]:
                                # nil
                            else:
                                require var110003 < arg1.length
                                # nil
                        else:
                            if uint256(stor4[var56006]) > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - uint256(stor4[var56006]):
                                mem[64] = 224
                                mem[192] = stor7[var56006]
                                uint256(stor4[var56006]) = block.number
                                if var56009 + 1 < poolTotalReferralAmount.length:
                                    mem[0] = 9
                                    var56003 = (9 * var56009) + sha3(9) + 9
                                    var56006 = (9 * var56009) + sha3(9) + 9
                                    var56008 = (9 * var56009) + sha3(9) + 9
                                    var56009 = var56009 + 1
                                    continue 
                                if var91002 >= poolTotalReferralAmount.length:
                                require var95001 < poolTotalReferralAmount.length
                                require var99003 < arg1.length
                                if var101004 == cd[((32 * var101001) + arg1 + 36)]:
                                    # nil
                                else:
                                    require var114003 < arg1.length
                                    # nil
                            else:
                                if not stor7.length:
                                    if totalRewardWeight <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalRewardWeight
                                    if not 0 / totalRewardWeight:
                                        mem[64] = 224
                                        mem[192] = stor7[var56006]
                                        uint256(stor4[var56006]) = block.number
                                        if var56009 + 1 < poolTotalReferralAmount.length:
                                            mem[0] = 9
                                            var56003 = (9 * var56009) + sha3(9) + 9
                                            var56006 = (9 * var56009) + sha3(9) + 9
                                            var56008 = (9 * var56009) + sha3(9) + 9
                                            var56009 = var56009 + 1
                                            continue 
                                        if var106002 >= poolTotalReferralAmount.length:
                                        require var110001 < poolTotalReferralAmount.length
                                        require var114003 < arg1.length
                                        if var116004 == cd[((32 * var116001) + arg1 + 36)]:
                                            # nil
                                        else:
                                            require var129003 < arg1.length
                                            # nil
                                    else:
                                        if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight):
                                            mem[64] = 224
                                            mem[192] = stor7[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var107002 >= poolTotalReferralAmount.length:
                                            require var111001 < poolTotalReferralAmount.length
                                            require var115003 < arg1.length
                                            if var117004 == cd[((32 * var117001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var130003 < arg1.length
                                                # nil
                                        else:
                                            mem[192] = 0
                                            mem[224] = 0
                                            require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / 10^18
                                            mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight)
                                            mem[288] = 0
                                            require tokenPoolIds[var56006]
                                            mem[320] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                            mem[352] = stor7[var56006]
                                            mem[384] = 0
                                            require stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                            mem[64] = 448
                                            mem[416] = stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006])
                                            stor7[var56006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var126002 >= poolTotalReferralAmount.length:
                                            require var130001 < poolTotalReferralAmount.length
                                            require var134003 < arg1.length
                                            if var136004 == cd[((32 * var136001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var149003 < arg1.length
                                                # nil
                                else:
                                    if uint256(stor2[var56006]) * stor7.length / stor7.length != uint256(stor2[var56006]):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalRewardWeight <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalRewardWeight
                                    if not uint256(stor2[var56006]) * stor7.length / totalRewardWeight:
                                        mem[64] = 224
                                        mem[192] = stor7[var56006]
                                        uint256(stor4[var56006]) = block.number
                                        if var56009 + 1 < poolTotalReferralAmount.length:
                                            mem[0] = 9
                                            var56003 = (9 * var56009) + sha3(9) + 9
                                            var56006 = (9 * var56009) + sha3(9) + 9
                                            var56008 = (9 * var56009) + sha3(9) + 9
                                            var56009 = var56009 + 1
                                            continue 
                                        if var107002 >= poolTotalReferralAmount.length:
                                        require var111001 < poolTotalReferralAmount.length
                                        require var115003 < arg1.length
                                        if var117004 == cd[((32 * var117001) + arg1 + 36)]:
                                            # nil
                                        else:
                                            require var130003 < arg1.length
                                            # nil
                                    else:
                                        if (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / uint256(stor2[var56006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight):
                                            mem[64] = 224
                                            mem[192] = stor7[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var108002 >= poolTotalReferralAmount.length:
                                            require var112001 < poolTotalReferralAmount.length
                                            require var116003 < arg1.length
                                            if var118004 == cd[((32 * var118001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var131003 < arg1.length
                                                # nil
                                        else:
                                            mem[192] = 0
                                            mem[224] = 0
                                            require (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / 10^18
                                            mem[256] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight)
                                            mem[288] = 0
                                            require tokenPoolIds[var56006]
                                            mem[320] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                            mem[352] = stor7[var56006]
                                            mem[384] = 0
                                            require stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                            mem[64] = 448
                                            mem[416] = stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006])
                                            stor7[var56006] += (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var127002 >= poolTotalReferralAmount.length:
                                            require var131001 < poolTotalReferralAmount.length
                                            require var135003 < arg1.length
                                            if var137004 == cd[((32 * var137001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var150003 < arg1.length
                                                # nil
                else:
                    if (block.number * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56003]) * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) / uint256(stor2[var56003]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var56003]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.number * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56003]) * uint256(stor2[var56003]) * stor7.length / totalRewardWeight):
                        mem[64] = 160
                        mem[128] = uint256(stor3[var56003])
                        uint256(stor3[var56006]) = uint256(stor3[var56003])
                        if not stor[var56006]:
                            uint256(stor4[var56006]) = block.number
                            if var56009 + 1 < poolTotalReferralAmount.length:
                                mem[0] = 9
                                var56003 = (9 * var56009) + sha3(9) + 9
                                var56006 = (9 * var56009) + sha3(9) + 9
                                var56008 = (9 * var56009) + sha3(9) + 9
                                var56009 = var56009 + 1
                                continue 
                            if var81002 >= poolTotalReferralAmount.length:
                            require var85001 < poolTotalReferralAmount.length
                            require var89003 < arg1.length
                            if var91004 == cd[((32 * var91001) + arg1 + 36)]:
                                # nil
                            else:
                                require var104003 < arg1.length
                                # nil
                        else:
                            mem[160] = 0
                            if not tokenPoolIds[var56006]:
                                mem[64] = 224
                                mem[192] = stor7[var56006]
                                uint256(stor4[var56006]) = block.number
                                if var56009 + 1 < poolTotalReferralAmount.length:
                                    mem[0] = 9
                                    var56003 = (9 * var56009) + sha3(9) + 9
                                    var56006 = (9 * var56009) + sha3(9) + 9
                                    var56008 = (9 * var56009) + sha3(9) + 9
                                    var56009 = var56009 + 1
                                    continue 
                                if var88002 >= poolTotalReferralAmount.length:
                                require var92001 < poolTotalReferralAmount.length
                                require var96003 < arg1.length
                                if var98004 == cd[((32 * var98001) + arg1 + 36)]:
                                    # nil
                                else:
                                    require var111003 < arg1.length
                                    # nil
                            else:
                                if uint256(stor4[var56006]) > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - uint256(stor4[var56006]):
                                    mem[64] = 224
                                    mem[192] = stor7[var56006]
                                    uint256(stor4[var56006]) = block.number
                                    if var56009 + 1 < poolTotalReferralAmount.length:
                                        mem[0] = 9
                                        var56003 = (9 * var56009) + sha3(9) + 9
                                        var56006 = (9 * var56009) + sha3(9) + 9
                                        var56008 = (9 * var56009) + sha3(9) + 9
                                        var56009 = var56009 + 1
                                        continue 
                                    if var92002 >= poolTotalReferralAmount.length:
                                    require var96001 < poolTotalReferralAmount.length
                                    require var100003 < arg1.length
                                    if var102004 == cd[((32 * var102001) + arg1 + 36)]:
                                        # nil
                                    else:
                                        require var115003 < arg1.length
                                        # nil
                                else:
                                    if not stor7.length:
                                        if totalRewardWeight <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalRewardWeight
                                        if not 0 / totalRewardWeight:
                                            mem[64] = 224
                                            mem[192] = stor7[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var107002 >= poolTotalReferralAmount.length:
                                            require var111001 < poolTotalReferralAmount.length
                                            require var115003 < arg1.length
                                            if var117004 == cd[((32 * var117001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var130003 < arg1.length
                                                # nil
                                        else:
                                            if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight):
                                                mem[64] = 224
                                                mem[192] = stor7[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var108002 >= poolTotalReferralAmount.length:
                                                require var112001 < poolTotalReferralAmount.length
                                                require var116003 < arg1.length
                                                if var118004 == cd[((32 * var118001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var131003 < arg1.length
                                                    # nil
                                            else:
                                                mem[192] = 0
                                                mem[224] = 0
                                                require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / 10^18
                                                mem[256] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight)
                                                mem[288] = 0
                                                require tokenPoolIds[var56006]
                                                mem[320] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                                mem[352] = stor7[var56006]
                                                mem[384] = 0
                                                require stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                                mem[64] = 448
                                                mem[416] = stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006])
                                                stor7[var56006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var127002 >= poolTotalReferralAmount.length:
                                                require var131001 < poolTotalReferralAmount.length
                                                require var135003 < arg1.length
                                                if var137004 == cd[((32 * var137001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var150003 < arg1.length
                                                    # nil
                                    else:
                                        if uint256(stor2[var56006]) * stor7.length / stor7.length != uint256(stor2[var56006]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalRewardWeight <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalRewardWeight
                                        if not uint256(stor2[var56006]) * stor7.length / totalRewardWeight:
                                            mem[64] = 224
                                            mem[192] = stor7[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var108002 >= poolTotalReferralAmount.length:
                                            require var112001 < poolTotalReferralAmount.length
                                            require var116003 < arg1.length
                                            if var118004 == cd[((32 * var118001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var131003 < arg1.length
                                                # nil
                                        else:
                                            if (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / uint256(stor2[var56006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight):
                                                mem[64] = 224
                                                mem[192] = stor7[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var109002 >= poolTotalReferralAmount.length:
                                                require var113001 < poolTotalReferralAmount.length
                                                require var117003 < arg1.length
                                                if var119004 == cd[((32 * var119001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var132003 < arg1.length
                                                    # nil
                                            else:
                                                mem[192] = 0
                                                mem[224] = 0
                                                require (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / 10^18
                                                mem[256] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight)
                                                mem[288] = 0
                                                require tokenPoolIds[var56006]
                                                mem[320] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                                mem[352] = stor7[var56006]
                                                mem[384] = 0
                                                require stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                                mem[64] = 448
                                                mem[416] = stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006])
                                                stor7[var56006] += (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var128002 >= poolTotalReferralAmount.length:
                                                require var132001 < poolTotalReferralAmount.length
                                                require var136003 < arg1.length
                                                if var138004 == cd[((32 * var138001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var151003 < arg1.length
                                                    # nil
                    else:
                        mem[128] = 0
                        mem[160] = 0
                        require (block.number * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56003]) * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56003]) * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) / 10^18
                        mem[192] = (10^18 * block.number * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56003]) * uint256(stor2[var56003]) * stor7.length / totalRewardWeight)
                        mem[224] = 0
                        require uint256(stor1[var56003])
                        mem[256] = (10^18 * block.number * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56003]) * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) / uint256(stor1[var56003])
                        mem[288] = uint256(stor3[var56003])
                        mem[320] = 0
                        require uint256(stor3[var56003]) + ((10^18 * block.number * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56003]) * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) / uint256(stor1[var56003])) >= uint256(stor3[var56003])
                        mem[64] = 384
                        mem[352] = uint256(stor3[var56003]) + ((10^18 * block.number * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56003]) * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) / uint256(stor1[var56003]))
                        uint256(stor3[var56006]) = uint256(stor3[var56003]) + ((10^18 * block.number * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56003]) * uint256(stor2[var56003]) * stor7.length / totalRewardWeight) / uint256(stor1[var56003]))
                        if not stor[var56006]:
                            uint256(stor4[var56006]) = block.number
                            if var56009 + 1 < poolTotalReferralAmount.length:
                                mem[0] = 9
                                var56003 = (9 * var56009) + sha3(9) + 9
                                var56006 = (9 * var56009) + sha3(9) + 9
                                var56008 = (9 * var56009) + sha3(9) + 9
                                var56009 = var56009 + 1
                                continue 
                            if var100002 >= poolTotalReferralAmount.length:
                            require var104001 < poolTotalReferralAmount.length
                            require var108003 < arg1.length
                            if var110004 == cd[((32 * var110001) + arg1 + 36)]:
                                # nil
                            else:
                                require var123003 < arg1.length
                                # nil
                        else:
                            mem[384] = 0
                            if not tokenPoolIds[var56006]:
                                mem[64] = 448
                                mem[416] = stor7[var56006]
                                uint256(stor4[var56006]) = block.number
                                if var56009 + 1 < poolTotalReferralAmount.length:
                                    mem[0] = 9
                                    var56003 = (9 * var56009) + sha3(9) + 9
                                    var56006 = (9 * var56009) + sha3(9) + 9
                                    var56008 = (9 * var56009) + sha3(9) + 9
                                    var56009 = var56009 + 1
                                    continue 
                                if var107002 >= poolTotalReferralAmount.length:
                                require var111001 < poolTotalReferralAmount.length
                                require var115003 < arg1.length
                                if var117004 == cd[((32 * var117001) + arg1 + 36)]:
                                    # nil
                                else:
                                    require var130003 < arg1.length
                                    # nil
                            else:
                                if uint256(stor4[var56006]) > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - uint256(stor4[var56006]):
                                    mem[64] = 448
                                    mem[416] = stor7[var56006]
                                    uint256(stor4[var56006]) = block.number
                                    if var56009 + 1 < poolTotalReferralAmount.length:
                                        mem[0] = 9
                                        var56003 = (9 * var56009) + sha3(9) + 9
                                        var56006 = (9 * var56009) + sha3(9) + 9
                                        var56008 = (9 * var56009) + sha3(9) + 9
                                        var56009 = var56009 + 1
                                        continue 
                                    if var111002 >= poolTotalReferralAmount.length:
                                    require var115001 < poolTotalReferralAmount.length
                                    require var119003 < arg1.length
                                    if var121004 == cd[((32 * var121001) + arg1 + 36)]:
                                        # nil
                                    else:
                                        require var134003 < arg1.length
                                        # nil
                                else:
                                    if not stor7.length:
                                        if totalRewardWeight <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalRewardWeight
                                        if not 0 / totalRewardWeight:
                                            mem[64] = 448
                                            mem[416] = stor7[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var126002 >= poolTotalReferralAmount.length:
                                            require var130001 < poolTotalReferralAmount.length
                                            require var134003 < arg1.length
                                            if var136004 == cd[((32 * var136001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var149003 < arg1.length
                                                # nil
                                        else:
                                            if (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) / 0 / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight):
                                                mem[64] = 448
                                                mem[416] = stor7[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var127002 >= poolTotalReferralAmount.length:
                                                require var131001 < poolTotalReferralAmount.length
                                                require var135003 < arg1.length
                                                if var137004 == cd[((32 * var137001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var150003 < arg1.length
                                                    # nil
                                            else:
                                                mem[416] = 0
                                                mem[448] = 0
                                                require (block.number * 0 / totalRewardWeight) - (uint256(stor4[var56006]) * 0 / totalRewardWeight) == (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / 10^18
                                                mem[480] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight)
                                                mem[512] = 0
                                                require tokenPoolIds[var56006]
                                                mem[544] = (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                                mem[576] = stor7[var56006]
                                                mem[608] = 0
                                                require stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                                mem[64] = 672
                                                mem[640] = stor7[var56006] + ((10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006])
                                                stor7[var56006] += (10^18 * block.number * 0 / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * 0 / totalRewardWeight) / tokenPoolIds[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var146002 >= poolTotalReferralAmount.length:
                                                require var150001 < poolTotalReferralAmount.length
                                                require var154003 < arg1.length
                                                if var156004 == cd[((32 * var156001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var169003 < arg1.length
                                                    # nil
                                    else:
                                        if uint256(stor2[var56006]) * stor7.length / stor7.length != uint256(stor2[var56006]):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalRewardWeight <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalRewardWeight
                                        if not uint256(stor2[var56006]) * stor7.length / totalRewardWeight:
                                            mem[64] = 448
                                            mem[416] = stor7[var56006]
                                            uint256(stor4[var56006]) = block.number
                                            if var56009 + 1 < poolTotalReferralAmount.length:
                                                mem[0] = 9
                                                var56003 = (9 * var56009) + sha3(9) + 9
                                                var56006 = (9 * var56009) + sha3(9) + 9
                                                var56008 = (9 * var56009) + sha3(9) + 9
                                                var56009 = var56009 + 1
                                                continue 
                                            if var127002 >= poolTotalReferralAmount.length:
                                            require var131001 < poolTotalReferralAmount.length
                                            require var135003 < arg1.length
                                            if var137004 == cd[((32 * var137001) + arg1 + 36)]:
                                                # nil
                                            else:
                                                require var150003 < arg1.length
                                                # nil
                                        else:
                                            if (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / uint256(stor2[var56006]) * stor7.length / totalRewardWeight != block.number - uint256(stor4[var56006]):
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight):
                                                mem[64] = 448
                                                mem[416] = stor7[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var128002 >= poolTotalReferralAmount.length:
                                                require var132001 < poolTotalReferralAmount.length
                                                require var136003 < arg1.length
                                                if var138004 == cd[((32 * var138001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var151003 < arg1.length
                                                    # nil
                                            else:
                                                mem[416] = 0
                                                mem[448] = 0
                                                require (block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) == (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / 10^18
                                                mem[480] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight)
                                                mem[512] = 0
                                                require tokenPoolIds[var56006]
                                                mem[544] = (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                                mem[576] = stor7[var56006]
                                                mem[608] = 0
                                                require stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]) >= stor7[var56006]
                                                mem[64] = 672
                                                mem[640] = stor7[var56006] + ((10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006])
                                                stor7[var56006] += (10^18 * block.number * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) - (10^18 * uint256(stor4[var56006]) * uint256(stor2[var56006]) * stor7.length / totalRewardWeight) / tokenPoolIds[var56006]
                                                uint256(stor4[var56006]) = block.number
                                                if var56009 + 1 < poolTotalReferralAmount.length:
                                                    mem[0] = 9
                                                    var56003 = (9 * var56009) + sha3(9) + 9
                                                    var56006 = (9 * var56009) + sha3(9) + 9
                                                    var56008 = (9 * var56009) + sha3(9) + 9
                                                    var56009 = var56009 + 1
                                                    continue 
                                                if var147002 >= poolTotalReferralAmount.length:
                                                require var151001 < poolTotalReferralAmount.length
                                                require var155003 < arg1.length
                                                if var157004 == cd[((32 * var157001) + arg1 + 36)]:
                                                    # nil
                                                else:
                                                    require var170003 < arg1.length
                                                    # nil
}



}
