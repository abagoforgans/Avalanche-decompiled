contract main {




// =====================  Runtime code  =====================


#
#  - stake(address arg1, uint8 arg2)
#
const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const PROJECT_FEE = 100

const INVEST_MIN_AMOUNT = 10^17


array of uint256 rEFERRAL_PERCENTS;
uint256 totalStaked;
array of struct planInfo;
mapping of struct userDepositInfo;
address sub_9f809b34Address;

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_768, 
           userDepositInfo[address(arg1)].field_1024,
           userDepositInfo[address(arg1)].field_1280
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_512
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_2048
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < rEFERRAL_PERCENTS.length
    return rEFERRAL_PERCENTS[arg1]
}

function sub_7d05c50c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return userDepositInfo[address(arg1)].field_768, 
           userDepositInfo[address(arg1)].field_1024,
           userDepositInfo[address(arg1)].field_1280,
           userDepositInfo[address(arg1)].field_2048
}

function totalStaked() {
    return totalStaked
}

function getUserClaimable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            if not userDepositInfo[address(arg1)][idx].field_512:
                if idx >= userDepositInfo[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if idx >= userDepositInfo[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 3)
                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                    if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 'NH{q', 17
                    else:
                        if idx >= userDepositInfo[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 3)
                        if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                            if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 'NH{q', 17
                else:
                    if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(arg1)].field_256:
                                revert with 'NH{q', 17
                    else:
                        if idx >= userDepositInfo[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 3)
                        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                            if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)].field_256:
                                revert with 'NH{q', 17
            else:
                if userDepositInfo[address(arg1)][idx].field_512 and userDepositInfo[address(arg1)][idx].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512:
                    revert with 'NH{q', 17
                if not userDepositInfo[address(arg1)][idx].field_512:
                    revert with 'NH{q', 18
                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / userDepositInfo[address(arg1)][idx].field_512 != userDepositInfo[address(arg1)][idx].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if idx >= userDepositInfo[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if idx >= userDepositInfo[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 3)
                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                    if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)][idx].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)][idx].field_1024:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userDepositInfo[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 3)
                        if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                            if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)][idx].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)][idx].field_1024:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(arg1)].field_256:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userDepositInfo[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 3)
                        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                            if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)].field_256:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if userDepositInfo[address(arg1)].field_1792 > -1:
        revert with 'NH{q', 17
    if userDepositInfo[address(arg1)].field_1792 < userDepositInfo[address(arg1)].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    return userDepositInfo[address(arg1)].field_1792
}

function sub_9f809b34(?) {
    return sub_9f809b34Address
}

function getPlanInfo(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    return planInfo[2 * uint8(arg1)].field_0, planInfo[2 * uint8(arg1)].field_256
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= userDepositInfo[address(arg1)].field_0:
        revert with 'NH{q', 50
    return userDepositInfo[address(arg1)][arg2].field_0, 
           userDepositInfo[address(arg1)][arg2].field_256,
           userDepositInfo[address(arg1)][arg2].field_512,
           userDepositInfo[address(arg1)][arg2].field_768,
           userDepositInfo[address(arg1)][arg2].field_1024,
           userDepositInfo[address(arg1)][arg2].field_1280
}

function sub_c55321e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return userDepositInfo[address(arg1)].field_1536
}

function sub_d6a13301(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return userDepositInfo[address(arg1)].field_0
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_256
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_1792
}

function _fallback() payable {
    revert
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userDepositInfo[address(arg1)].field_1792 > userDepositInfo[address(arg1)].field_2048:
        revert with 0, 'SafeMath: subtraction overflow'
    if userDepositInfo[address(arg1)].field_2048 < userDepositInfo[address(arg1)].field_1792:
        revert with 'NH{q', 17
    return (userDepositInfo[address(arg1)].field_2048 - userDepositInfo[address(arg1)].field_1792)
}

function sub_54e501ea(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if userDepositInfo[address(arg1)][idx].field_1280 <= block.timestamp:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = address(arg1)
            mem[32] = 3
            idx = idx + 1
            s = s
            continue 
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if s > -userDepositInfo[address(arg1)][idx].field_512 - 1:
            revert with 'NH{q', 17
        if s + userDepositInfo[address(arg1)][idx].field_512 < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = address(arg1)
        mem[32] = 3
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_512
        continue 
    return s
}

function sub_cabc14e7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 3
    mem[64] = (32 * userDepositInfo[address(arg1)].field_0) + 128
    mem[96] = userDepositInfo[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        _16 = mem[64]
        mem[64] = mem[64] + 192
        mem[_16] = userDepositInfo[address(arg1)][idx].field_0
        mem[_16 + 32] = userDepositInfo[address(arg1)][idx].field_256
        mem[_16 + 64] = userDepositInfo[address(arg1)][idx].field_512
        mem[_16 + 96] = userDepositInfo[address(arg1)][idx].field_768
        mem[_16 + 128] = userDepositInfo[address(arg1)][idx].field_1024
        mem[_16 + 160] = userDepositInfo[address(arg1)][idx].field_1280
        mem[s] = _16
        s = s + 32
        idx = idx + 1
        continue 
    _17 = mem[64]
    mem[mem[64]] = 32
    _18 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _18:
        _27 = mem[s]
        mem[t] = mem[mem[s] + 31 len 1]
        mem[t + 32] = mem[_27 + 32]
        mem[t + 64] = mem[_27 + 64]
        mem[t + 96] = mem[_27 + 96]
        mem[t + 128] = mem[_27 + 128]
        mem[t + 160] = mem[_27 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _17 + (192 * _18) + -mem[64] + 64
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if s > -userDepositInfo[address(arg1)][idx].field_512 - 1:
            revert with 'NH{q', 17
        if s + userDepositInfo[address(arg1)][idx].field_512 < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 3
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_512
        continue 
    return (s * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0)
}

function getResult(uint8 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    if not arg2:
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp
        if planInfo[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if not planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 18
        if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp > (-86400 * planInfo[2 * uint8(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    if arg2 and planInfo[2 * uint8(arg1)].field_256 > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if arg2 * planInfo[2 * uint8(arg1)].field_256 / arg2 != planInfo[2 * uint8(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000:
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp
        if planInfo[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if not planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 18
        if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp > (-86400 * planInfo[2 * uint8(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    if arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000 and planInfo[2 * uint8(arg1)].field_0 > -1 / arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000:
        revert with 'NH{q', 17
    if not arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000:
        revert with 'NH{q', 18
    if arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0 / arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000 != planInfo[2 * uint8(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    if not planInfo[2 * uint8(arg1)].field_0:
        if block.timestamp > -1:
            revert with 'NH{q', 17
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256, 
               arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0,
               block.timestamp
    if planInfo[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / planInfo[2 * uint8(arg1)].field_0:
        revert with 'NH{q', 17
    if not planInfo[2 * uint8(arg1)].field_0:
        revert with 'NH{q', 18
    if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if block.timestamp > (-86400 * planInfo[2 * uint8(arg1)].field_0) - 1:
        revert with 'NH{q', 17
    if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    return planInfo[2 * uint8(arg1)].field_256, 
           arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0,
           block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            if not userDepositInfo[address(arg1)][idx].field_512:
                if idx >= userDepositInfo[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if idx >= userDepositInfo[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 3)
                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                    if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 'NH{q', 17
                    else:
                        if idx >= userDepositInfo[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 3)
                        if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                            if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 'NH{q', 17
                else:
                    if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(arg1)].field_256:
                                revert with 'NH{q', 17
                    else:
                        if idx >= userDepositInfo[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 3)
                        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                            if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)].field_256:
                                revert with 'NH{q', 17
            else:
                if userDepositInfo[address(arg1)][idx].field_512 and userDepositInfo[address(arg1)][idx].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512:
                    revert with 'NH{q', 17
                if not userDepositInfo[address(arg1)][idx].field_512:
                    revert with 'NH{q', 18
                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / userDepositInfo[address(arg1)][idx].field_512 != userDepositInfo[address(arg1)][idx].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if idx >= userDepositInfo[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if idx >= userDepositInfo[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 3)
                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                    if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)][idx].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)][idx].field_1024:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userDepositInfo[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 3)
                        if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                            if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)][idx].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)][idx].field_1024:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(arg1)].field_256:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userDepositInfo[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 3)
                        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                            if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)].field_256:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function getUserBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if userDepositInfo[address(arg1)][idx].field_1280 <= block.timestamp:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = arg1
            mem[32] = 3
            idx = idx + 1
            s = s
            continue 
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if s > -userDepositInfo[address(arg1)][idx].field_512 - 1:
            revert with 'NH{q', 17
        if s + userDepositInfo[address(arg1)][idx].field_512 < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 3
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_512
        continue 
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            if not userDepositInfo[address(arg1)][idx].field_512:
                if idx >= userDepositInfo[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if idx >= userDepositInfo[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 3)
                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                    if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 'NH{q', 17
                    else:
                        if idx >= userDepositInfo[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 3)
                        if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                            if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 'NH{q', 17
                else:
                    if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(arg1)].field_256:
                                revert with 'NH{q', 17
                    else:
                        if idx >= userDepositInfo[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 3)
                        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                            if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)].field_256:
                                revert with 'NH{q', 17
            else:
                if userDepositInfo[address(arg1)][idx].field_512 and userDepositInfo[address(arg1)][idx].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512:
                    revert with 'NH{q', 17
                if not userDepositInfo[address(arg1)][idx].field_512:
                    revert with 'NH{q', 18
                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / userDepositInfo[address(arg1)][idx].field_512 != userDepositInfo[address(arg1)][idx].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if idx >= userDepositInfo[address(arg1)].field_0:
                    revert with 'NH{q', 50
                if idx >= userDepositInfo[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 3)
                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                    if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)][idx].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)][idx].field_1024:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userDepositInfo[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 3)
                        if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                            if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)][idx].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)][idx].field_1024:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(arg1)].field_256:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userDepositInfo[address(arg1)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(arg1), 3)
                        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                            if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)].field_256:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if userDepositInfo[address(arg1)].field_1792 > -1:
        revert with 'NH{q', 17
    if userDepositInfo[address(arg1)].field_1792 < userDepositInfo[address(arg1)].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    return s, userDepositInfo[address(arg1)].field_1536, userDepositInfo[address(arg1)].field_1792
}

function claimReward() {
    idx = 0
    while idx < userDepositInfo[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 3)
        if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1280:
            if idx >= userDepositInfo[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if not userDepositInfo[address(msg.sender)][idx].field_512:
                if idx >= userDepositInfo[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                if idx >= userDepositInfo[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(msg.sender), 3)
                if userDepositInfo[address(msg.sender)][idx].field_1024 > userDepositInfo[address(msg.sender)].field_256:
                    if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(msg.sender)][idx].field_1024 < block.timestamp:
                            if userDepositInfo[address(msg.sender)][idx].field_1024 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(msg.sender)][idx].field_1024:
                                revert with 'NH{q', 17
                    else:
                        if idx >= userDepositInfo[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 3)
                        if userDepositInfo[address(msg.sender)][idx].field_1024 < userDepositInfo[address(msg.sender)][idx].field_1280:
                            if userDepositInfo[address(msg.sender)][idx].field_1024 > userDepositInfo[address(msg.sender)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(msg.sender)][idx].field_1280 < userDepositInfo[address(msg.sender)][idx].field_1024:
                                revert with 'NH{q', 17
                else:
                    if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(msg.sender)].field_256 < block.timestamp:
                            if userDepositInfo[address(msg.sender)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(msg.sender)].field_256:
                                revert with 'NH{q', 17
                    else:
                        if idx >= userDepositInfo[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 3)
                        if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1280:
                            if userDepositInfo[address(msg.sender)].field_256 > userDepositInfo[address(msg.sender)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(msg.sender)][idx].field_1280 < userDepositInfo[address(msg.sender)].field_256:
                                revert with 'NH{q', 17
            else:
                if userDepositInfo[address(msg.sender)][idx].field_512 and userDepositInfo[address(msg.sender)][idx].field_256 > -1 / userDepositInfo[address(msg.sender)][idx].field_512:
                    revert with 'NH{q', 17
                if not userDepositInfo[address(msg.sender)][idx].field_512:
                    revert with 'NH{q', 18
                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / userDepositInfo[address(msg.sender)][idx].field_512 != userDepositInfo[address(msg.sender)][idx].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if idx >= userDepositInfo[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                if idx >= userDepositInfo[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(msg.sender), 3)
                if userDepositInfo[address(msg.sender)][idx].field_1024 > userDepositInfo[address(msg.sender)].field_256:
                    if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(msg.sender)][idx].field_1024 < block.timestamp:
                            if userDepositInfo[address(msg.sender)][idx].field_1024 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(msg.sender)][idx].field_1024:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(msg.sender)][idx].field_1024 > -1 / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(msg.sender)][idx].field_1024:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userDepositInfo[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 3)
                        if userDepositInfo[address(msg.sender)][idx].field_1024 < userDepositInfo[address(msg.sender)][idx].field_1280:
                            if userDepositInfo[address(msg.sender)][idx].field_1024 > userDepositInfo[address(msg.sender)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(msg.sender)][idx].field_1280 < userDepositInfo[address(msg.sender)][idx].field_1024:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 and userDepositInfo[address(msg.sender)][idx].field_1280 - userDepositInfo[address(msg.sender)][idx].field_1024 > -1 / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != userDepositInfo[address(msg.sender)][idx].field_1280 - userDepositInfo[address(msg.sender)][idx].field_1024:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
                        if userDepositInfo[address(msg.sender)].field_256 < block.timestamp:
                            if userDepositInfo[address(msg.sender)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp < userDepositInfo[address(msg.sender)].field_256:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(msg.sender)].field_256 > -1 / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(msg.sender)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        if idx >= userDepositInfo[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 3)
                        if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1280:
                            if userDepositInfo[address(msg.sender)].field_256 > userDepositInfo[address(msg.sender)][idx].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(msg.sender)][idx].field_1280 < userDepositInfo[address(msg.sender)].field_256:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 and userDepositInfo[address(msg.sender)][idx].field_1280 - userDepositInfo[address(msg.sender)].field_256 > -1 / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    revert with 'NH{q', 17
                                if not userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    revert with 'NH{q', 18
                                if (userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != userDepositInfo[address(msg.sender)][idx].field_1280 - userDepositInfo[address(msg.sender)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 0 > -((userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                if (userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if userDepositInfo[address(msg.sender)].field_1792 <= 0:
        revert with 0, 'User has no claimable rewards'
    userDepositInfo[address(msg.sender)].field_1792 = 0
    if 0 > -userDepositInfo[address(msg.sender)].field_1792 - 1:
        revert with 'NH{q', 17
    if userDepositInfo[address(msg.sender)].field_1792 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if userDepositInfo[address(msg.sender)].field_1792 <= 0:
        revert with 0, 'User has no claimable rewards'
    userDepositInfo[address(msg.sender)].field_256 = block.timestamp
    if eth.balance(this.address) >= userDepositInfo[address(msg.sender)].field_1792:
        if userDepositInfo[address(msg.sender)].field_1536 > -userDepositInfo[address(msg.sender)].field_1792 - 1:
            revert with 'NH{q', 17
        if userDepositInfo[address(msg.sender)].field_1536 + userDepositInfo[address(msg.sender)].field_1792 < userDepositInfo[address(msg.sender)].field_1536:
            revert with 0, 'SafeMath: addition overflow'
        userDepositInfo[address(msg.sender)].field_1536 += userDepositInfo[address(msg.sender)].field_1792
        call msg.sender with:
           value userDepositInfo[address(msg.sender)].field_1792 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(userDepositInfo[address(msg.sender)].field_1792, msg.sender);
    else:
        if userDepositInfo[address(msg.sender)].field_1536 > -eth.balance(this.address) - 1:
            revert with 'NH{q', 17
        if userDepositInfo[address(msg.sender)].field_1536 + eth.balance(this.address) < userDepositInfo[address(msg.sender)].field_1536:
            revert with 0, 'SafeMath: addition overflow'
        userDepositInfo[address(msg.sender)].field_1536 += eth.balance(this.address)
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(eth.balance(this.address), msg.sender);
}



}
