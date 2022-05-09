contract main {




// =====================  Runtime code  =====================


#
#  - transferPenalty(address arg1)
#  - withdrawEarning(uint256 arg1)
#  - addEarning(address arg1, uint256 arg2, uint256 arg3)
#
address rewardAddress;
array of struct stor1;
uint256 duration;
mapping of struct userBalances;
uint256 accumulatedPenalty;
address governanceAddress;
address pendingGovernanceAddress;
address rewardSourceAddress;

function duration() payable {
    return duration
}

function reward() payable {
    return rewardAddress
}

function userBalances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userBalances[arg1].field_0
}

function governance() payable {
    return governanceAddress
}

function rewardSource() payable {
    return rewardSourceAddress
}

function accumulatedPenalty() payable {
    return accumulatedPenalty
}

function pendingGovernance() payable {
    return pendingGovernanceAddress
}

function _fallback() payable {
    revert
}

function acceptGovernance() payable {
    if pendingGovernanceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RewardVesting: only pending governance'
    governanceAddress = pendingGovernanceAddress
    emit GovernanceUpdated(pendingGovernanceAddress);
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if governanceAddress != msg.sender:
        revert with 0, 'RewardVesting: only governance'
    if rewardAddress:
        revert with 0, 'Already initialized'
    if not arg2:
        revert with 0, 'Zero address'
    rewardAddress = arg1
    rewardSourceAddress = arg2
}

function setPendingGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'RewardVesting: only governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'RewardVesting: pending governance address cannot be 0x0'
    pendingGovernanceAddress = arg1
    emit PendingGovernanceUpdated(arg1);
}

function withdrawableEarning(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not userBalances[address(arg1)].field_0:
        if 0 > userBalances[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        return userBalances[address(arg1)].field_0, 0, 0
    idx = 0
    while idx < stor1[address(arg1)].field_0:
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if 0 == stor1[address(arg1)][idx].field_0:
            idx = idx + 1
            continue 
        mem[32] = 1
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= block.timestamp:
            if stor1[address(arg1)][idx].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        if 0 > userBalances[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 > userBalances[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if userBalances[address(arg1)].field_0:
            if userBalances[address(arg1)].field_1 + 1 > userBalances[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            return userBalances[address(arg1)].field_0 + -userBalances[address(arg1)].field_1 - 1, 
                   userBalances[address(arg1)].field_1 + 1,
                   0
        if userBalances[address(arg1)].field_1 > userBalances[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        return userBalances[address(arg1)].field_0 - userBalances[address(arg1)].field_1, 
               2 * Mask(256, -1, userBalances[address(arg1)].field_1),
               0
    if 0 > userBalances[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if 0 > userBalances[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if userBalances[address(arg1)].field_0:
        if userBalances[address(arg1)].field_1 + 1 > userBalances[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        return userBalances[address(arg1)].field_0 + -userBalances[address(arg1)].field_1 - 1, 
               userBalances[address(arg1)].field_1 + 1,
               0
    if userBalances[address(arg1)].field_1 > userBalances[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    return userBalances[address(arg1)].field_0 - userBalances[address(arg1)].field_1, 
           2 * Mask(256, -1, userBalances[address(arg1)].field_1),
           0
}

function earnedBalances(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 1
    idx = 0
    s = 0
    t = 96
    u = 0
    while idx < stor1[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_256 <= block.timestamp:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if s:
            require idx < stor1[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 1)
            require s < mem[t]
            mem[mem[(32 * s) + t + 32]] = stor1[address(arg1)][idx].field_0
            require idx < stor1[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 1)
            require s < mem[t]
            mem[mem[(32 * s) + t + 32] + 32] = stor1[address(arg1)][idx].field_256
            require idx < stor1[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 1)
            if stor1[address(arg1)][idx].field_0 + u < u:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + 1
            t = t
            u = stor1[address(arg1)][idx].field_0 + u
            continue 
        require stor1[address(arg1)].field_0 - idx <= test266151307()
        _34 = mem[64]
        mem[mem[64]] = stor1[address(arg1)].field_0 - idx
        mem[64] = mem[64] + (32 * stor1[address(arg1)].field_0 - idx) + 32
        if stor1[address(arg1)].field_0 - idx:
            mem[64] = _34 + (32 * stor1[address(arg1)].field_0 - idx) + 96
            mem[_34 + (32 * stor1[address(arg1)].field_0 - idx) + 32 len 64] = call.data[calldata.size len 64]
            mem[var20001] = _34 + (32 * stor1[address(arg1)].field_0 - idx) + 32
            v = var20001
            t = var20002
            while t - 1:
                mem[64] = mem[64] + 64
                mem[_34 + (32 * stor1[address(arg1)].field_0 - idx) + 32 len 64] = call.data[calldata.size len 64]
                mem[v + 32] = _34 + (32 * stor1[address(arg1)].field_0 - idx) + 32
                v = v + 32
                t = t - 1
                continue 
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        require s < mem[_34]
        mem[mem[(32 * s) + _34 + 32]] = stor1[address(arg1)][idx].field_0
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        require s < mem[_34]
        mem[mem[(32 * s) + _34 + 32] + 32] = stor1[address(arg1)][idx].field_256
        require idx < stor1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_0 + u < u:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + 1
        t = _34
        u = stor1[address(arg1)][idx].field_0 + u
        continue 
    mem[mem[64]] = u
    mem[mem[64] + 32] = 64
    _30 = mem[t]
    mem[mem[64] + 64] = mem[t]
    idx = 0
    s = mem[64] + 96
    u = t + 32
    while idx < _30:
        s = mem[u]
        v = t
        t = 0
        while t < 2:
            mem[v] = mem[s]
            s = s + 32
            v = v + 32
            t = t + 1
            continue 
        s = mem[u] + 65
        t = 66
        u = u + 32
        continue 
    return memory
      from mem[64]
       len s - mem[64]
}



}
