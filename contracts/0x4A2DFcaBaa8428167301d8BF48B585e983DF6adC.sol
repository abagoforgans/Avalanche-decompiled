contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - mint(address arg1, uint256 arg2)
#  - stake(uint256 arg1, bool arg2)
#  - exit()
#
const lockDuration = (17640 * 24 * 3600)

const rewardsDuration = (168 * 24 * 3600)


uint32 stor1;
address owner;
uint256 stor1;
address stakingTokenAddress;
array of address rewardTokens;
mapping of struct rewardData;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 totalSupply;
uint256 lockedSupply;
mapping of struct totalBalance;
array of struct stor12;
array of struct stor13;

function totalSupply() payable {
    return totalSupply
}

function rewardDistributors(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[arg1][arg2])
}

function rewardData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardData[arg1].field_0, rewardData[arg1].field_256, rewardData[arg1].field_512, rewardData[arg1].field_768
}

function totalBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalBalance[address(arg1)].field_0
}

function userRewardPerTokenPaid(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userRewardPerTokenPaid[arg1][arg2]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardTokens.length
    return rewardTokens[arg1]
}

function owner() payable {
    return address(owner)
}

function lockedSupply() payable {
    return lockedSupply
}

function rewards(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return rewards[arg1][arg2]
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function lastTimeRewardApplicable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < rewardData[address(arg1)].field_0:
        return block.timestamp
    return rewardData[address(arg1)].field_0
}

function approveRewardDistributor(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require rewardData[address(arg1)].field_512
    stor6[address(arg1)][address(arg2)] = uint8(arg3)
}

function addReward(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require not rewardData[address(arg1)].field_512
    rewardTokens.length++
    rewardTokens[rewardTokens.length] = arg1
    rewardData[address(arg1)].field_512 = block.timestamp
    stor6[address(arg1)][address(arg2)] = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function getRewardForDuration(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not rewardData[address(arg1)].field_256:
        return 0
    if 168 * 24 * 3600 * rewardData[address(arg1)].field_256 / rewardData[address(arg1)].field_256 != 168 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (168 * 24 * 3600 * rewardData[address(arg1)].field_256)
}

function unlockedBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = totalBalance[address(arg1)].field_256
    while idx < stor13[msg.sender].field_0:
        if stor13[msg.sender][idx].field_256 > block.timestamp:
            return s
        require idx < stor13[msg.sender].field_0
        mem[0] = sha3(msg.sender, 13)
        if stor13[msg.sender][idx].field_0 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = stor13[msg.sender][idx].field_0 + s
        continue 
    return (totalBalance[address(arg1)].field_256 + (stor[(2 * stor13[msg.sender].field_0) + _13] * stor13[msg.sender].field_0))
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stakingTokenAddress == arg1:
        revert with 0, 'Cannot withdraw staking token'
    if rewardData[address(arg1)].field_512:
        revert with 0, 'Cannot withdraw reward token'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Recovered(address(arg1), arg2);
}

function withdrawableBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalBalance[address(arg1)].field_768:
        if totalBalance[address(arg1)].field_768 + totalBalance[address(arg1)].field_256 < totalBalance[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > totalBalance[address(arg1)].field_768 + totalBalance[address(arg1)].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalBalance[address(arg1)].field_768 + totalBalance[address(arg1)].field_256, 0
    idx = 0
    while idx < stor13[address(arg1)].field_0:
        mem[32] = 13
        require idx < stor13[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 13)
        if 0 == stor13[address(arg1)][idx].field_0:
            idx = idx + 1
            continue 
        mem[32] = 13
        require idx < stor13[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 13)
        if stor13[address(arg1)][idx].field_256 <= block.timestamp:
            if stor13[address(arg1)][idx].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
        if 0 > totalBalance[address(arg1)].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalBalance[address(arg1)].field_768 + totalBalance[address(arg1)].field_256 < totalBalance[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if uint255(totalBalance[address(arg1)].field_769) > totalBalance[address(arg1)].field_768 + totalBalance[address(arg1)].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        return totalBalance[address(arg1)].field_768 + totalBalance[address(arg1)].field_256 - uint255(totalBalance[address(arg1)].field_769), 
               uint255(totalBalance[address(arg1)].field_769)
    if 0 > totalBalance[address(arg1)].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalBalance[address(arg1)].field_768 + totalBalance[address(arg1)].field_256 < totalBalance[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if uint255(totalBalance[address(arg1)].field_769) > totalBalance[address(arg1)].field_768 + totalBalance[address(arg1)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    return totalBalance[address(arg1)].field_768 + totalBalance[address(arg1)].field_256 - uint255(totalBalance[address(arg1)].field_769), 
           uint255(totalBalance[address(arg1)].field_769)
}

function earnedBalances(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 13
    idx = 0
    s = 0
    t = 96
    u = 0
    while idx < stor13[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 13)
        if stor13[address(arg1)][idx].field_256 <= block.timestamp:
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if s:
            require idx < stor13[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 13)
            _27 = mem[64]
            mem[64] = mem[64] + 64
            mem[_27] = stor13[address(arg1)][idx].field_0
            mem[_27 + 32] = stor13[address(arg1)][idx].field_256
            require s < mem[t]
            mem[(32 * s) + t + 32] = _27
            require idx < stor13[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 13)
            if stor13[address(arg1)][idx].field_0 + u < u:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + 1
            t = t
            u = stor13[address(arg1)][idx].field_0 + u
            continue 
        require stor13[address(arg1)].field_0 - idx <= test266151307()
        _29 = mem[64]
        mem[mem[64]] = stor13[address(arg1)].field_0 - idx
        if not stor13[address(arg1)].field_0 - idx:
            require idx < stor13[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 13)
            _36 = mem[64] + (32 * stor13[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor13[address(arg1)].field_0 - idx) + 96
            mem[_36] = stor13[address(arg1)][idx].field_0
            mem[_36 + 32] = stor13[address(arg1)][idx].field_256
            require s < mem[_29]
            mem[(32 * s) + _29 + 32] = _36
        else:
            _61 = mem[64] + (32 * stor13[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor13[address(arg1)].field_0 - idx) + 96
            mem[_61] = 0
            mem[_61 + 32] = 0
            mem[var20001] = _61
            v = var20001
            t = var20002
            while t - 1:
                _61 = mem[64]
                mem[64] = mem[64] + 64
                mem[_61] = 0
                mem[_61 + 32] = 0
                mem[v + 32] = _61
                v = v + 32
                t = t - 1
                continue 
            require idx < stor13[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 13)
            _63 = mem[64]
            mem[64] = mem[64] + 64
            mem[_63] = stor13[address(arg1)][idx].field_0
            mem[_63 + 32] = stor13[address(arg1)][idx].field_256
            require s < mem[_29]
            mem[(32 * s) + _29 + 32] = _63
        require idx < stor13[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 13)
        if stor13[address(arg1)][idx].field_0 + u < u:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + 1
        t = _29
        u = stor13[address(arg1)][idx].field_0 + u
        continue 
    _23 = mem[64]
    mem[mem[64]] = u
    mem[mem[64] + 32] = 64
    _25 = mem[t]
    mem[mem[64] + 64] = mem[t]
    idx = 0
    s = t + 32
    u = mem[64] + 96
    while idx < _25:
        _50 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_50 + 32]
        idx = idx + 1
        s = s + 32
        u = u + 64
        continue 
    return memory
      from mem[64]
       len _23 + (64 * _25) + -mem[64] + 96
}

function lockedBalances(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 12
    idx = 0
    s = 0
    t = 96
    u = 0
    while idx < stor12[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 12)
        if stor12[address(arg1)][idx].field_256 <= block.timestamp:
            require idx < stor12[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 12)
            if stor12[address(arg1)][idx].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if s:
            require idx < stor12[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 12)
            _33 = mem[64]
            mem[64] = mem[64] + 64
            mem[_33] = stor12[address(arg1)][idx].field_0
            mem[_33 + 32] = stor12[address(arg1)][idx].field_256
            require s < mem[t]
            mem[(32 * s) + t + 32] = _33
            require idx < stor12[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 12)
            if stor12[address(arg1)][idx].field_0 + u < u:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + 1
            t = t
            u = stor12[address(arg1)][idx].field_0 + u
            continue 
        require stor12[address(arg1)].field_0 - idx <= test266151307()
        _35 = mem[64]
        mem[mem[64]] = stor12[address(arg1)].field_0 - idx
        if not stor12[address(arg1)].field_0 - idx:
            require idx < stor12[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 12)
            _44 = mem[64] + (32 * stor12[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor12[address(arg1)].field_0 - idx) + 96
            mem[_44] = stor12[address(arg1)][idx].field_0
            mem[_44 + 32] = stor12[address(arg1)][idx].field_256
            require s < mem[_35]
            mem[(32 * s) + _35 + 32] = _44
        else:
            _69 = mem[64] + (32 * stor12[address(arg1)].field_0 - idx) + 32
            mem[64] = mem[64] + (32 * stor12[address(arg1)].field_0 - idx) + 96
            mem[_69] = 0
            mem[_69 + 32] = 0
            mem[var20001] = _69
            v = var20001
            t = var20002
            while t - 1:
                _69 = mem[64]
                mem[64] = mem[64] + 64
                mem[_69] = 0
                mem[_69 + 32] = 0
                mem[v + 32] = _69
                v = v + 32
                t = t - 1
                continue 
            require idx < stor12[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 12)
            _71 = mem[64]
            mem[64] = mem[64] + 64
            mem[_71] = stor12[address(arg1)][idx].field_0
            mem[_71 + 32] = stor12[address(arg1)][idx].field_256
            require s < mem[_35]
            mem[(32 * s) + _35 + 32] = _71
        require idx < stor12[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 12)
        if stor12[address(arg1)][idx].field_0 + u < u:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + 1
        t = _35
        u = stor12[address(arg1)][idx].field_0 + u
        continue 
    mem[0] = arg1
    mem[32] = 11
    _28 = mem[64]
    mem[mem[64]] = totalBalance[address(arg1)].field_512
    mem[mem[64] + 32] = 0
    mem[mem[64] + 64] = u
    mem[mem[64] + 96] = 128
    _30 = mem[t]
    mem[mem[64] + 128] = mem[t]
    idx = 0
    s = t + 32
    u = mem[64] + 160
    while idx < _30:
        _58 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_58 + 32]
        idx = idx + 1
        s = s + 32
        u = u + 64
        continue 
    return memory
      from mem[64]
       len _28 + (64 * _30) + -mem[64] + 160
}

function withdrawExpiredLocks() payable {
    mem[64] = 96
    mem[32] = 11
    require stor12[msg.sender].field_0 - 1 < stor12[msg.sender].field_0
    mem[0] = sha3(msg.sender, 12)
    if stor12[msg.sender][stor12[msg.sender].field_0 - 1].field_256 > block.timestamp:
        idx = 0
        s = 0
        while idx < stor12[msg.sender].field_0:
            mem[0] = sha3(msg.sender, 12)
            if stor12[msg.sender][idx].field_256 <= block.timestamp:
                require idx < stor12[msg.sender].field_0
                if stor12[msg.sender][idx].field_0 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < stor12[msg.sender].field_0
                mem[0] = sha3(msg.sender, 12)
                stor12[msg.sender][idx].field_0 = 0
                stor12[msg.sender][idx].field_256 = 0
                idx = idx + 1
                s = stor12[msg.sender][idx].field_0 + s
                continue 
            if s > totalBalance[msg.sender].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            totalBalance[msg.sender].field_512 -= s
            if s > totalBalance[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            totalBalance[msg.sender].field_0 -= s
            if s > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= s
            if s > lockedSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            lockedSupply -= s
            mem[132] = msg.sender
            mem[164] = s
            mem[96] = 68
            mem[128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
            mem[64] = 260
            mem[196] = 32
            mem[228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(stakingTokenAddress):
                revert with 0, 'Address: call to non-contract'
            s = 128
            t = mem[64]
            idx = mem[96]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[96])] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32] or Mask(8 * -(mem[96] % 32) + 32, -(8 * -(mem[96] % 32) + 32) + 256, mem[mem[64] + floor32(mem[96])])
            call stakingTokenAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len -mem[64] + 324]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _351 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[196]
                _353 = mem[196]
                idx = 0
                while idx < _353:
                    mem[idx + _351 + 68] = mem[idx + 228]
                    idx = idx + 32
                    continue 
                if not _353 % 32:
                    revert with memory
                      from mem[64]
                       len _353 + _351 + -mem[64] + 68
                mem[floor32(_353) + _351 + 68] = mem[floor32(_353) + _351 + -(_353 % 32) + 100 len _353 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_353) + _351 + -mem[64] + 100
            _335 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_335] = return_data.size
            mem[_335 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_335 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _355 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[196]
            _357 = mem[196]
            idx = 0
            while idx < _357:
                mem[idx + _355 + 68] = mem[idx + 228]
                idx = idx + 32
                continue 
            if not _357 % 32:
                revert with memory
                  from mem[64]
                   len _357 + _355 + -mem[64] + 68
            mem[floor32(_357) + _355 + 68] = mem[floor32(_357) + _355 + -(_357 % 32) + 100 len _357 % 32]
            revert with memory
              from mem[64]
               len floor32(_357) + _355 + -mem[64] + 100
        if s > totalBalance[msg.sender].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        totalBalance[msg.sender].field_512 -= s
        if s > totalBalance[msg.sender].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        totalBalance[msg.sender].field_0 -= s
        if s > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= s
        if s > lockedSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        lockedSupply -= s
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(stakingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, s) >> 32
        mem[324 len 0] = 0
        call stakingTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, s) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, s
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        stor12[msg.sender].field_0 = 0
        idx = 0
        while 2 * stor12[msg.sender].field_0 > idx:
            stor12[msg.sender][idx].field_0 = 0
            stor12[msg.sender][idx].field_256 = 0
            idx = idx + 2
            continue 
        if totalBalance[msg.sender].field_512 > totalBalance[msg.sender].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        totalBalance[msg.sender].field_512 = 0
        if totalBalance[msg.sender].field_512 > totalBalance[msg.sender].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        totalBalance[msg.sender].field_0 -= totalBalance[msg.sender].field_512
        if totalBalance[msg.sender].field_512 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= totalBalance[msg.sender].field_512
        if totalBalance[msg.sender].field_512 > lockedSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        lockedSupply -= totalBalance[msg.sender].field_512
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(stakingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, totalBalance[msg.sender].field_544)
        mem[324 len 0] = 0
        call stakingTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, 0, totalBalance[msg.sender].field_512), mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, totalBalance[msg.sender].field_512
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
}

function rewardPerToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stakingTokenAddress == arg1:
        if not lockedSupply:
            return rewardData[address(arg1)].field_768
        if block.timestamp < rewardData[address(arg1)].field_0:
            if rewardData[address(arg1)].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - rewardData[address(arg1)].field_512:
                if lockedSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require lockedSupply
                if (0 / lockedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / lockedSupply) + rewardData[address(arg1)].field_768)
            if (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / block.timestamp - rewardData[address(arg1)].field_512 != rewardData[address(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
                if lockedSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require lockedSupply
                if (0 / lockedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / lockedSupply) + rewardData[address(arg1)].field_768)
            if (10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if lockedSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require lockedSupply
            if ((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / lockedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return (((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / lockedSupply) + rewardData[address(arg1)].field_768)
        if rewardData[address(arg1)].field_512 > rewardData[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512:
            if lockedSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require lockedSupply
            if (0 / lockedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / lockedSupply) + rewardData[address(arg1)].field_768)
        if (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512 != rewardData[address(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
            if lockedSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require lockedSupply
            if (0 / lockedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / lockedSupply) + rewardData[address(arg1)].field_768)
        if (10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if lockedSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require lockedSupply
        if ((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / lockedSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / lockedSupply) + rewardData[address(arg1)].field_768)
    if not totalSupply:
        return rewardData[address(arg1)].field_768
    if block.timestamp < rewardData[address(arg1)].field_0:
        if rewardData[address(arg1)].field_512 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - rewardData[address(arg1)].field_512:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardData[address(arg1)].field_768)
        if (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / block.timestamp - rewardData[address(arg1)].field_512 != rewardData[address(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardData[address(arg1)].field_768)
        if (10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / (block.timestamp * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if ((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / totalSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * block.timestamp * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / totalSupply) + rewardData[address(arg1)].field_768)
    if rewardData[address(arg1)].field_512 > rewardData[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardData[address(arg1)].field_768)
    if (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / rewardData[address(arg1)].field_0 - rewardData[address(arg1)].field_512 != rewardData[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardData[address(arg1)].field_768)
    if (10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if ((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / totalSupply) + rewardData[address(arg1)].field_768 < rewardData[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_256) / totalSupply) + rewardData[address(arg1)].field_768)
}

function notifyRewardAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if lockedSupply:
        if block.timestamp < rewardData[stor2].field_0:
            if rewardData[stor2].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - rewardData[stor2].field_512:
                if lockedSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require lockedSupply
                if (0 / lockedSupply) + rewardData[stor2].field_768 < rewardData[stor2].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                rewardData[stor2].field_768 += 0 / lockedSupply
            else:
                if (block.timestamp * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256) / block.timestamp - rewardData[stor2].field_512 != rewardData[stor2].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.timestamp * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256):
                    if lockedSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require lockedSupply
                    if (0 / lockedSupply) + rewardData[stor2].field_768 < rewardData[stor2].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor2].field_768 += 0 / lockedSupply
                else:
                    if (10^18 * block.timestamp * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / (block.timestamp * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if lockedSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require lockedSupply
                    if ((10^18 * block.timestamp * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply) + rewardData[stor2].field_768 < rewardData[stor2].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor2].field_768 += (10^18 * block.timestamp * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply
        else:
            if rewardData[stor2].field_512 > rewardData[stor2].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not rewardData[stor2].field_0 - rewardData[stor2].field_512:
                if lockedSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require lockedSupply
                if (0 / lockedSupply) + rewardData[stor2].field_768 < rewardData[stor2].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                rewardData[stor2].field_768 += 0 / lockedSupply
            else:
                if (rewardData[stor2].field_0 * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256) / rewardData[stor2].field_0 - rewardData[stor2].field_512 != rewardData[stor2].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (rewardData[stor2].field_0 * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256):
                    if lockedSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require lockedSupply
                    if (0 / lockedSupply) + rewardData[stor2].field_768 < rewardData[stor2].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor2].field_768 += 0 / lockedSupply
                else:
                    if (10^18 * rewardData[stor2].field_0 * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / (rewardData[stor2].field_0 * rewardData[stor2].field_256) - (rewardData[stor2].field_512 * rewardData[stor2].field_256) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if lockedSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require lockedSupply
                    if ((10^18 * rewardData[stor2].field_0 * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply) + rewardData[stor2].field_768 < rewardData[stor2].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor2].field_768 += (10^18 * rewardData[stor2].field_0 * rewardData[stor2].field_256) - (10^18 * rewardData[stor2].field_512 * rewardData[stor2].field_256) / lockedSupply
    if block.timestamp < rewardData[stor2].field_0:
        rewardData[stor2].field_512 = block.timestamp
    else:
        rewardData[stor2].field_512 = rewardData[stor2].field_0
    idx = 1
    s = stakingTokenAddress
    while idx < rewardTokens.length:
        if totalSupply:
            if block.timestamp < rewardData[stor3[idx]].field_0:
                if rewardData[stor3[idx]].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - rewardData[stor3[idx]].field_512:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor3[idx]].field_768 += 0 / totalSupply
                else:
                    if (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / block.timestamp - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor3[idx]].field_768 += 0 / totalSupply
                    else:
                        if (10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor3[idx]].field_768 += (10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply
            else:
                if rewardData[stor3[idx]].field_512 > rewardData[stor3[idx]].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor3[idx]].field_768 += 0 / totalSupply
                else:
                    if (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor3[idx]].field_768 += 0 / totalSupply
                    else:
                        if (10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor3[idx]].field_768 += (10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply
        mem[0] = rewardTokens[idx]
        mem[32] = 4
        if block.timestamp < rewardData[stor3[idx]].field_0:
            rewardData[stor3[idx]].field_512 = block.timestamp
        else:
            rewardData[stor3[idx]].field_512 = rewardData[stor3[idx]].field_0
        idx = idx + 1
        s = rewardTokens[idx]
        continue 
    require stor6[address(arg1)][msg.sender]
    if arg2 <= 0:
        revert with 0, 'No reward'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if block.timestamp >= rewardData[address(arg1)].field_0:
            rewardData[address(arg1)].field_256 = arg2 / 168 * 24 * 3600
        else:
            if block.timestamp > rewardData[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not rewardData[address(arg1)].field_0 - block.timestamp:
                if arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                rewardData[address(arg1)].field_256 = arg2 / 168 * 24 * 3600
            else:
                if (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (block.timestamp * rewardData[address(arg1)].field_256) / rewardData[address(arg1)].field_0 - block.timestamp != rewardData[address(arg1)].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (block.timestamp * rewardData[address(arg1)].field_256) + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                rewardData[address(arg1)].field_256 = (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (block.timestamp * rewardData[address(arg1)].field_256) + arg2 / 168 * 24 * 3600
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if block.timestamp >= rewardData[address(arg1)].field_0:
            rewardData[address(arg1)].field_256 = arg2 / 168 * 24 * 3600
        else:
            if block.timestamp > rewardData[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not rewardData[address(arg1)].field_0 - block.timestamp:
                if arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                rewardData[address(arg1)].field_256 = arg2 / 168 * 24 * 3600
            else:
                if (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (block.timestamp * rewardData[address(arg1)].field_256) / rewardData[address(arg1)].field_0 - block.timestamp != rewardData[address(arg1)].field_256:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (block.timestamp * rewardData[address(arg1)].field_256) + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                rewardData[address(arg1)].field_256 = (rewardData[address(arg1)].field_0 * rewardData[address(arg1)].field_256) - (block.timestamp * rewardData[address(arg1)].field_256) + arg2 / 168 * 24 * 3600
    rewardData[address(arg1)].field_512 = block.timestamp
    if block.timestamp + (168 * 24 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    rewardData[address(arg1)].field_0 = block.timestamp + (168 * 24 * 3600)
    emit RewardAdded(arg2);
}

function claimableRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require rewardTokens.length <= test266151307()
    mem[96] = rewardTokens.length
    mem[64] = (32 * rewardTokens.length) + 128
    if not rewardTokens.length:
        idx = 0
        while idx < rewardTokens.length:
            require idx < rewardTokens.length
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = rewardTokens[idx]
            require idx < mem[96]
            if not idx:
                if not lockedSupply:
                    mem[0] = rewardTokens[idx]
                    mem[32] = 4
                    if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > rewardData[stor3[idx]].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not totalBalance[address(arg1)].field_512:
                        if rewards[address(arg1)][stor3[idx]] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                    else:
                        if (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
                else:
                    if block.timestamp < rewardData[stor3[idx]].field_0:
                        if rewardData[stor3[idx]].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - rewardData[stor3[idx]].field_512:
                            if lockedSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require lockedSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / lockedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / lockedSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_512:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != (0 / lockedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
                        else:
                            if (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / block.timestamp - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                                if lockedSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require lockedSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if (0 / lockedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / lockedSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_512:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != (0 / lockedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
                            else:
                                if (10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if lockedSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require lockedSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_512:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
                    else:
                        if rewardData[stor3[idx]].field_512 > rewardData[stor3[idx]].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512:
                            if lockedSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require lockedSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / lockedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / lockedSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_512:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != (0 / lockedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
                        else:
                            if (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                                if lockedSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require lockedSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if (0 / lockedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / lockedSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_512:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != (0 / lockedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
                            else:
                                if (10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if lockedSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require lockedSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_512:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
            else:
                if not totalSupply:
                    mem[0] = rewardTokens[idx]
                    mem[32] = 4
                    if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > rewardData[stor3[idx]].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not totalBalance[address(arg1)].field_0:
                        if rewards[address(arg1)][stor3[idx]] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                    else:
                        if (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                else:
                    if block.timestamp < rewardData[stor3[idx]].field_0:
                        if rewardData[stor3[idx]].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - rewardData[stor3[idx]].field_512:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_0:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                        else:
                            if (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / block.timestamp - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_0:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                            else:
                                if (10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_0:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                    else:
                        if rewardData[stor3[idx]].field_512 > rewardData[stor3[idx]].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_0:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                        else:
                            if (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_0:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                            else:
                                if (10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                mem[0] = rewardTokens[idx]
                                mem[32] = 4
                                if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not totalBalance[address(arg1)].field_0:
                                    if rewards[address(arg1)][stor3[idx]] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                                else:
                                    if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
            idx = idx + 1
            continue 
        _299 = mem[64]
        mem[mem[64]] = 32
        _302 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _302:
            _733 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_733 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _299 + (64 * _302) + -mem[64] + 64
    mem[64] = (32 * rewardTokens.length) + 192
    mem[(32 * rewardTokens.length) + 128] = 0
    mem[(32 * rewardTokens.length) + 160] = 0
    mem[var14001] = (32 * rewardTokens.length) + 128
    s = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * rewardTokens.length) + 128] = 0
        mem[(32 * rewardTokens.length) + 160] = 0
        mem[s + 32] = (32 * rewardTokens.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    _884 = mem[96]
    idx = 0
    while idx < _884:
        require idx < rewardTokens.length
        require idx < mem[96]
        mem[mem[(32 * idx) + 128]] = rewardTokens[idx]
        require idx < mem[96]
        if not idx:
            if not lockedSupply:
                mem[0] = rewardTokens[idx]
                mem[32] = 4
                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > rewardData[stor3[idx]].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalBalance[address(arg1)].field_512:
                    if rewards[address(arg1)][stor3[idx]] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                else:
                    if (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
            else:
                if block.timestamp < rewardData[stor3[idx]].field_0:
                    if rewardData[stor3[idx]].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - rewardData[stor3[idx]].field_512:
                        if lockedSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require lockedSupply
                        mem[0] = rewardTokens[idx]
                        mem[32] = 4
                        if (0 / lockedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / lockedSupply) + rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalBalance[address(arg1)].field_512:
                            if rewards[address(arg1)][stor3[idx]] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                        else:
                            if (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != (0 / lockedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
                    else:
                        if (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / block.timestamp - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                            if lockedSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require lockedSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / lockedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / lockedSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_512:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != (0 / lockedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
                        else:
                            if (10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if lockedSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require lockedSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_512:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
                else:
                    if rewardData[stor3[idx]].field_512 > rewardData[stor3[idx]].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512:
                        if lockedSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require lockedSupply
                        mem[0] = rewardTokens[idx]
                        mem[32] = 4
                        if (0 / lockedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / lockedSupply) + rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalBalance[address(arg1)].field_512:
                            if rewards[address(arg1)][stor3[idx]] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                        else:
                            if (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != (0 / lockedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
                    else:
                        if (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                            if lockedSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require lockedSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / lockedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / lockedSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_512:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != (0 / lockedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < (0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
                        else:
                            if (10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if lockedSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require lockedSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_512:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / totalBalance[address(arg1)].field_512 != ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18) < ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / lockedSupply * totalBalance[address(arg1)].field_512) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_512) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_512) / 10^18)
        else:
            if not totalSupply:
                mem[0] = rewardTokens[idx]
                mem[32] = 4
                if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > rewardData[stor3[idx]].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalBalance[address(arg1)].field_0:
                    if rewards[address(arg1)][stor3[idx]] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                else:
                    if (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
            else:
                if block.timestamp < rewardData[stor3[idx]].field_0:
                    if rewardData[stor3[idx]].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - rewardData[stor3[idx]].field_512:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        mem[0] = rewardTokens[idx]
                        mem[32] = 4
                        if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalBalance[address(arg1)].field_0:
                            if rewards[address(arg1)][stor3[idx]] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                        else:
                            if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                    else:
                        if (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / block.timestamp - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_0:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                        else:
                            if (10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (block.timestamp * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_0:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * block.timestamp * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                else:
                    if rewardData[stor3[idx]].field_512 > rewardData[stor3[idx]].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        mem[0] = rewardTokens[idx]
                        mem[32] = 4
                        if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalBalance[address(arg1)].field_0:
                            if rewards[address(arg1)][stor3[idx]] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                        else:
                            if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                    else:
                        if (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / rewardData[stor3[idx]].field_0 - rewardData[stor3[idx]].field_512 != rewardData[stor3[idx]].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if (0 / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > (0 / totalSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_0:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != (0 / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < (0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + ((0 / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
                        else:
                            if (10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / (rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            mem[0] = rewardTokens[idx]
                            mem[32] = 4
                            if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 < rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(arg1)][stor3[idx]] > ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not totalBalance[address(arg1)].field_0:
                                if rewards[address(arg1)][stor3[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]]
                            else:
                                if ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / totalBalance[address(arg1)].field_0 != ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply) + rewardData[stor3[idx]].field_768 - userRewardPerTokenPaid[address(arg1)][stor3[idx]]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18) < ((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = rewards[address(arg1)][stor3[idx]] + (((10^18 * rewardData[stor3[idx]].field_0 * rewardData[stor3[idx]].field_256) - (10^18 * rewardData[stor3[idx]].field_512 * rewardData[stor3[idx]].field_256) / totalSupply * totalBalance[address(arg1)].field_0) + (rewardData[stor3[idx]].field_768 * totalBalance[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)][stor3[idx]] * totalBalance[address(arg1)].field_0) / 10^18)
        idx = idx + 1
        continue 
    _885 = mem[64]
    mem[mem[64]] = 32
    _888 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _888:
        _1171 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1171 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _885 + (64 * _888) + -mem[64] + 64
}



}
