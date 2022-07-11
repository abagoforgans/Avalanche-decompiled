contract main {




// =====================  Runtime code  =====================


#
#  - invest(address arg1, uint8 arg2)
#
const sub_2db49165(?) = 2

const sub_416b7b88(?) = 1000

const getContractBalance = eth.balance(this.address)

const sub_8e8f9d0d(?) = 50

const MIN_INVEST = 5 * 10^16

const WITHDRAW_FEE = 100

const TIME_INCREMENT = (24 * 3600)


array of uint256 rEFERRAL_PERCENTS;
uint256 totalStaked;
uint256 sub_fd8768b6;
address sub_fdf46760Address;
address ccAddress;
uint256 sub_7cd28b7d;
uint256 totalUsers;
array of struct stor7;
mapping of struct userDepositInfo;

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_768, 
           userDepositInfo[address(arg1)].field_1024,
           userDepositInfo[address(arg1)].field_1280
}

function getTotalStaked() {
    return totalStaked
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_256
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_1792
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < rEFERRAL_PERCENTS.length
    return rEFERRAL_PERCENTS[arg1]
}

function totalRefBonus() {
    return sub_fd8768b6
}

function sub_7cd28b7d(?) {
    return sub_7cd28b7d
}

function totalStaked() {
    return totalStaked
}

function getTotalUsers() {
    return totalUsers
}

function cc() {
    return ccAddress
}

function getUserAmountOfDeposits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_0
}

function totalUsers() {
    return totalUsers
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= userDepositInfo[address(arg1)].field_0:
        revert with 'NH{q', 50
    return userDepositInfo[address(arg1)][arg2].field_1280, 
           userDepositInfo[address(arg1)][arg2].field_256,
           userDepositInfo[address(arg1)][arg2].field_0,
           userDepositInfo[address(arg1)][arg2].field_1024,
           userDepositInfo[address(arg1)][arg2].field_512,
           userDepositInfo[address(arg1)][arg2].field_768
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_512
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_1536
}

function sub_fd8768b6(?) {
    return sub_fd8768b6
}

function sub_fdf46760(?) {
    return sub_fdf46760Address
}

function _fallback() payable {
    revert
}

function sub_843a267d(?) {
    return (msg.sender == ccAddress)
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userDepositInfo[address(arg1)].field_1536 > userDepositInfo[address(arg1)].field_1792:
        revert with 0, 'SafeMath: subtraction overflow'
    if userDepositInfo[address(arg1)].field_1792 < userDepositInfo[address(arg1)].field_1536:
        revert with 'NH{q', 17
    return (userDepositInfo[address(arg1)].field_1792 - userDepositInfo[address(arg1)].field_1536)
}

function sub_0ba85b0e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp <= sub_7cd28b7d:
        if arg1 >= stor7.length:
            revert with 'NH{q', 50
        return stor7[arg1].field_256
    if sub_7cd28b7d > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < sub_7cd28b7d:
        revert with 'NH{q', 17
    if block.timestamp - sub_7cd28b7d > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if uint255(block.timestamp - sub_7cd28b7d) != block.timestamp - sub_7cd28b7d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if arg1 >= stor7.length:
        revert with 'NH{q', 50
    if stor7[arg1].field_256 > -(2 * block.timestamp - sub_7cd28b7d / 24 * 3600) - 1:
        revert with 'NH{q', 17
    if stor7[arg1].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600) < stor7[arg1].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (stor7[arg1].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600))
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if s > -userDepositInfo[address(arg1)][idx].field_0 - 1:
            revert with 'NH{q', 17
        if s + userDepositInfo[address(arg1)][idx].field_0 < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 8
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_0
        continue 
    return (s * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0)
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 8)
        if userDepositInfo[address(arg1)].field_512 < userDepositInfo[address(arg1)][idx].field_768:
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            if userDepositInfo[address(arg1)][idx].field_1280 >= 3:
                mem[0] = sha3(address(arg1), 8)
                if block.timestamp > userDepositInfo[address(arg1)][idx].field_768:
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 8)
                    if 0 > -userDepositInfo[address(arg1)][idx].field_1024 - 1:
                        revert with 'NH{q', 17
                    if userDepositInfo[address(arg1)][idx].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(arg1)][idx].field_0:
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 8)
                    if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)].field_512:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userDepositInfo[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                        else:
                            if idx >= userDepositInfo[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)][idx].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_768 < userDepositInfo[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                    else:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userDepositInfo[address(arg1)].field_512:
                                    revert with 'NH{q', 17
                        else:
                            if idx >= userDepositInfo[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_768 < userDepositInfo[address(arg1)].field_512:
                                    revert with 'NH{q', 17
                else:
                    if userDepositInfo[address(arg1)][idx].field_0 and userDepositInfo[address(arg1)][idx].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_0:
                        revert with 'NH{q', 17
                    if not userDepositInfo[address(arg1)][idx].field_0:
                        revert with 'NH{q', 18
                    if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / userDepositInfo[address(arg1)][idx].field_0 != userDepositInfo[address(arg1)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 8)
                    if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)].field_512:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userDepositInfo[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)][idx].field_512 > -1 / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if idx >= userDepositInfo[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)][idx].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_768 < userDepositInfo[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_768 - userDepositInfo[address(arg1)][idx].field_512 > -1 / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_768 - userDepositInfo[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userDepositInfo[address(arg1)].field_512:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)].field_512 > -1 / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if idx >= userDepositInfo[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_768 < userDepositInfo[address(arg1)].field_512:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_768 - userDepositInfo[address(arg1)].field_512 > -1 / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_768 - userDepositInfo[address(arg1)].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if ccAddress != msg.sender:
        return 0
    return eth.balance(this.address)
}

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 8)
        if userDepositInfo[address(arg1)].field_512 < userDepositInfo[address(arg1)][idx].field_768:
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            if userDepositInfo[address(arg1)][idx].field_1280 >= 3:
                mem[0] = sha3(address(arg1), 8)
                if block.timestamp > userDepositInfo[address(arg1)][idx].field_768:
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 8)
                    if 0 > -userDepositInfo[address(arg1)][idx].field_1024 - 1:
                        revert with 'NH{q', 17
                    if userDepositInfo[address(arg1)][idx].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(arg1)][idx].field_0:
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 8)
                    if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)].field_512:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userDepositInfo[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                        else:
                            if idx >= userDepositInfo[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)][idx].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_768 < userDepositInfo[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                    else:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userDepositInfo[address(arg1)].field_512:
                                    revert with 'NH{q', 17
                        else:
                            if idx >= userDepositInfo[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_768 < userDepositInfo[address(arg1)].field_512:
                                    revert with 'NH{q', 17
                else:
                    if userDepositInfo[address(arg1)][idx].field_0 and userDepositInfo[address(arg1)][idx].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_0:
                        revert with 'NH{q', 17
                    if not userDepositInfo[address(arg1)][idx].field_0:
                        revert with 'NH{q', 18
                    if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / userDepositInfo[address(arg1)][idx].field_0 != userDepositInfo[address(arg1)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 8)
                    if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)].field_512:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userDepositInfo[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)][idx].field_512 > -1 / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if idx >= userDepositInfo[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)][idx].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_768 < userDepositInfo[address(arg1)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_768 - userDepositInfo[address(arg1)][idx].field_512 > -1 / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_768 - userDepositInfo[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userDepositInfo[address(arg1)].field_512:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)].field_512 > -1 / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if idx >= userDepositInfo[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_768 < userDepositInfo[address(arg1)].field_512:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_768 - userDepositInfo[address(arg1)].field_512 > -1 / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_768 - userDepositInfo[address(arg1)].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if ccAddress != msg.sender:
        if userDepositInfo[address(arg1)].field_1536 > -1:
            revert with 'NH{q', 17
        if userDepositInfo[address(arg1)].field_1536 < userDepositInfo[address(arg1)].field_1536:
            revert with 0, 'SafeMath: addition overflow'
        return userDepositInfo[address(arg1)].field_1536
    if userDepositInfo[address(arg1)].field_1536 > -eth.balance(this.address) - 1:
        revert with 'NH{q', 17
    if userDepositInfo[address(arg1)].field_1536 + eth.balance(this.address) < userDepositInfo[address(arg1)].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    return (userDepositInfo[address(arg1)].field_1536 + eth.balance(this.address))
}

function withdraw() {
    idx = 0
    while idx < userDepositInfo[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 8)
        if userDepositInfo[address(msg.sender)].field_512 < userDepositInfo[address(msg.sender)][idx].field_768:
            if idx >= userDepositInfo[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if idx >= userDepositInfo[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if userDepositInfo[address(msg.sender)][idx].field_1280 >= 3:
                mem[0] = sha3(address(msg.sender), 8)
                if block.timestamp > userDepositInfo[address(msg.sender)][idx].field_768:
                    if idx >= userDepositInfo[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 8)
                    if 0 > -userDepositInfo[address(msg.sender)][idx].field_1024 - 1:
                        revert with 'NH{q', 17
                    if userDepositInfo[address(msg.sender)][idx].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(msg.sender)][idx].field_0:
                    if idx >= userDepositInfo[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    if idx >= userDepositInfo[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 8)
                    if userDepositInfo[address(msg.sender)][idx].field_512 > userDepositInfo[address(msg.sender)].field_512:
                        if userDepositInfo[address(msg.sender)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userDepositInfo[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userDepositInfo[address(msg.sender)][idx].field_512:
                                    revert with 'NH{q', 17
                        else:
                            if idx >= userDepositInfo[address(msg.sender)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(msg.sender), 8)
                            if userDepositInfo[address(msg.sender)][idx].field_512 < userDepositInfo[address(msg.sender)][idx].field_768:
                                if userDepositInfo[address(msg.sender)][idx].field_512 > userDepositInfo[address(msg.sender)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_768 < userDepositInfo[address(msg.sender)][idx].field_512:
                                    revert with 'NH{q', 17
                    else:
                        if userDepositInfo[address(msg.sender)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)].field_512 < block.timestamp:
                                if userDepositInfo[address(msg.sender)].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userDepositInfo[address(msg.sender)].field_512:
                                    revert with 'NH{q', 17
                        else:
                            if idx >= userDepositInfo[address(msg.sender)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(msg.sender), 8)
                            if userDepositInfo[address(msg.sender)].field_512 < userDepositInfo[address(msg.sender)][idx].field_768:
                                if userDepositInfo[address(msg.sender)].field_512 > userDepositInfo[address(msg.sender)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_768 < userDepositInfo[address(msg.sender)].field_512:
                                    revert with 'NH{q', 17
                else:
                    if userDepositInfo[address(msg.sender)][idx].field_0 and userDepositInfo[address(msg.sender)][idx].field_256 > -1 / userDepositInfo[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    if not userDepositInfo[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 18
                    if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / userDepositInfo[address(msg.sender)][idx].field_0 != userDepositInfo[address(msg.sender)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if idx >= userDepositInfo[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    if idx >= userDepositInfo[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 8)
                    if userDepositInfo[address(msg.sender)][idx].field_512 > userDepositInfo[address(msg.sender)].field_512:
                        if userDepositInfo[address(msg.sender)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userDepositInfo[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userDepositInfo[address(msg.sender)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(msg.sender)][idx].field_512 > -1 / userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if idx >= userDepositInfo[address(msg.sender)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(msg.sender), 8)
                            if userDepositInfo[address(msg.sender)][idx].field_512 < userDepositInfo[address(msg.sender)][idx].field_768:
                                if userDepositInfo[address(msg.sender)][idx].field_512 > userDepositInfo[address(msg.sender)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_768 < userDepositInfo[address(msg.sender)][idx].field_512:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 and userDepositInfo[address(msg.sender)][idx].field_768 - userDepositInfo[address(msg.sender)][idx].field_512 > -1 / userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != userDepositInfo[address(msg.sender)][idx].field_768 - userDepositInfo[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userDepositInfo[address(msg.sender)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)].field_512 < block.timestamp:
                                if userDepositInfo[address(msg.sender)].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < userDepositInfo[address(msg.sender)].field_512:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(msg.sender)].field_512 > -1 / userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(msg.sender)].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if idx >= userDepositInfo[address(msg.sender)].field_0:
                                revert with 'NH{q', 50
                            mem[0] = sha3(address(msg.sender), 8)
                            if userDepositInfo[address(msg.sender)].field_512 < userDepositInfo[address(msg.sender)][idx].field_768:
                                if userDepositInfo[address(msg.sender)].field_512 > userDepositInfo[address(msg.sender)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_768 < userDepositInfo[address(msg.sender)].field_512:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 and userDepositInfo[address(msg.sender)][idx].field_768 - userDepositInfo[address(msg.sender)].field_512 > -1 / userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                        revert with 'NH{q', 17
                                    if not userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                        revert with 'NH{q', 18
                                    if (userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != userDepositInfo[address(msg.sender)][idx].field_768 - userDepositInfo[address(msg.sender)].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 0 > -((userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    if (userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if ccAddress != msg.sender:
        userDepositInfo[address(msg.sender)].field_512 = block.timestamp
        if eth.balance(this.address) >= 0:
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn(0, msg.sender);
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn(eth.balance(this.address), msg.sender);
    else:
        if not eth.balance(this.address):
            if ccAddress != msg.sender:
                if 0 > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 'NH{q', 17
            userDepositInfo[address(msg.sender)].field_512 = block.timestamp
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn(eth.balance(this.address), msg.sender);
        else:
            if eth.balance(this.address) and 100 > -1 / eth.balance(this.address):
                revert with 'NH{q', 17
            if not eth.balance(this.address):
                revert with 'NH{q', 18
            if 100 * eth.balance(this.address) / eth.balance(this.address) != 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if msg.sender == ccAddress:
                userDepositInfo[address(msg.sender)].field_512 = block.timestamp
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdrawn(eth.balance(this.address), msg.sender);
            else:
                if 100 * eth.balance(this.address) / 1000 > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 100 * eth.balance(this.address) / 1000:
                    revert with 'NH{q', 17
                userDepositInfo[address(msg.sender)].field_512 = block.timestamp
                if eth.balance(this.address) >= eth.balance(this.address) - (100 * eth.balance(this.address) / 1000):
                    call msg.sender with:
                       value eth.balance(this.address) - (100 * eth.balance(this.address) / 1000) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawn((eth.balance(this.address) - (100 * eth.balance(this.address) / 1000)), msg.sender);
                else:
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdrawn(eth.balance(this.address), msg.sender);
}

function sub_93d5c96d(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == arg2
    if block.timestamp <= sub_7cd28b7d:
        if uint8(arg1) >= stor7.length:
            revert with 'NH{q', 50
        if uint8(arg1) >= stor7.length:
            revert with 'NH{q', 50
        if uint8(arg1) < 3:
            if not arg2:
                if uint8(arg1) >= stor7.length:
                    revert with 'NH{q', 50
                if not stor7[2 * uint8(arg1)].field_0:
                    if block.timestamp > -1:
                        revert with 'NH{q', 17
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp
                if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
                    revert with 'NH{q', 17
                if not stor7[2 * uint8(arg1)].field_0:
                    revert with 'NH{q', 18
                if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
            if arg2 and stor7[2 * uint8(arg1)].field_256 > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if arg2 * stor7[2 * uint8(arg1)].field_256 / arg2 != stor7[2 * uint8(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not arg2 * stor7[2 * uint8(arg1)].field_256 / 1000:
                if uint8(arg1) >= stor7.length:
                    revert with 'NH{q', 50
                if not stor7[2 * uint8(arg1)].field_0:
                    if block.timestamp > -1:
                        revert with 'NH{q', 17
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp
                if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
                    revert with 'NH{q', 17
                if not stor7[2 * uint8(arg1)].field_0:
                    revert with 'NH{q', 18
                if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
            if arg2 * stor7[2 * uint8(arg1)].field_256 / 1000 and stor7[2 * uint8(arg1)].field_0 > -1 / arg2 * stor7[2 * uint8(arg1)].field_256 / 1000:
                revert with 'NH{q', 17
            if not arg2 * stor7[2 * uint8(arg1)].field_256 / 1000:
                revert with 'NH{q', 18
            if arg2 * stor7[2 * uint8(arg1)].field_256 / 1000 * stor7[2 * uint8(arg1)].field_0 / arg2 * stor7[2 * uint8(arg1)].field_256 / 1000 != stor7[2 * uint8(arg1)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if uint8(arg1) >= stor7.length:
                revert with 'NH{q', 50
            if not stor7[2 * uint8(arg1)].field_0:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256, 
                       arg2 * stor7[2 * uint8(arg1)].field_256 / 1000 * stor7[2 * uint8(arg1)].field_0,
                       block.timestamp
            if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if not stor7[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 18
            if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
                revert with 'NH{q', 17
            if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256, 
                   arg2 * stor7[2 * uint8(arg1)].field_256 / 1000 * stor7[2 * uint8(arg1)].field_0,
                   block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
        if uint8(arg1) >= 6:
            if not stor7[2 * uint8(arg1)].field_0:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp
            if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if not stor7[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 18
            if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
                revert with 'NH{q', 17
            if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
        if var72003 >= stor7[2 * uint8(arg1)].field_0:
            if uint8(arg1) >= stor7.length:
                revert with 'NH{q', 50
            if not stor7[2 * uint8(arg1)].field_0:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp
            if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if not stor7[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 18
            if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
                revert with 'NH{q', 17
            if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
        if arg2 > -1:
            revert with 'NH{q', 17
        if arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not arg2:
            if var94007 == -1:
                revert with 'NH{q', 17
            if uint8(arg1) >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = 7
            if var94007 + 1 < stor7[2 * uint8(arg1)].field_0:
                if arg2 > -1:
                    revert with 'NH{q', 17
                if arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                var94007 = var94007 + 1
                continue 
            if uint8(arg1) >= stor7.length:
                revert with 'NH{q', 50
            if not stor7[2 * uint8(arg1)].field_0:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp
            if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if not stor7[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 18
            if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
                revert with 'NH{q', 17
            if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
        if arg2 and stor7[2 * uint8(arg1)].field_256 > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if arg2 * stor7[2 * uint8(arg1)].field_256 / arg2 != stor7[2 * uint8(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 0 > -(arg2 * stor7[2 * uint8(arg1)].field_256 / 1000) - 1:
            revert with 'NH{q', 17
        if arg2 * stor7[2 * uint8(arg1)].field_256 / 1000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if var94007 == -1:
            revert with 'NH{q', 17
        if uint8(arg1) >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        if var94007 + 1 < stor7[2 * uint8(arg1)].field_0:
            if arg2 > -(arg2 * stor7[2 * uint8(arg1)].field_256 / 1000) - 1:
                revert with 'NH{q', 17
            if arg2 + (arg2 * stor7[2 * uint8(arg1)].field_256 / 1000) < arg2:
                revert with 0, 'SafeMath: addition overflow'
            var94007 = var94007 + 1
            continue 
        if uint8(arg1) >= stor7.length:
            revert with 'NH{q', 50
        if not stor7[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256, arg2 * stor7[2 * uint8(arg1)].field_256 / 1000, block.timestamp
        if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if not stor7[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 18
        if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[2 * uint8(arg1)].field_256, 
               arg2 * stor7[2 * uint8(arg1)].field_256 / 1000,
               block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
    if sub_7cd28b7d > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < sub_7cd28b7d:
        revert with 'NH{q', 17
    if block.timestamp - sub_7cd28b7d > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if uint255(block.timestamp - sub_7cd28b7d) != block.timestamp - sub_7cd28b7d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if uint8(arg1) >= stor7.length:
        revert with 'NH{q', 50
    if stor7[2 * uint8(arg1)].field_256 > -(2 * block.timestamp - sub_7cd28b7d / 24 * 3600) - 1:
        revert with 'NH{q', 17
    if stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600) < stor7[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if uint8(arg1) >= stor7.length:
        revert with 'NH{q', 50
    if uint8(arg1) < 3:
        if not arg2:
            if uint8(arg1) >= stor7.length:
                revert with 'NH{q', 50
            if not stor7[2 * uint8(arg1)].field_0:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 0, block.timestamp
            if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if not stor7[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 18
            if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
                revert with 'NH{q', 17
            if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
                   0,
                   block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
        if arg2 and stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600) > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / arg2 != stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000:
            if uint8(arg1) >= stor7.length:
                revert with 'NH{q', 50
            if not stor7[2 * uint8(arg1)].field_0:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 0, block.timestamp
            if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if not stor7[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 18
            if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
                revert with 'NH{q', 17
            if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
                   0,
                   block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
        if (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000 and stor7[2 * uint8(arg1)].field_0 > -1 / (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000:
            revert with 'NH{q', 17
        if not (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000:
            revert with 'NH{q', 18
        if (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000 * stor7[2 * uint8(arg1)].field_0 / (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000 != stor7[2 * uint8(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if uint8(arg1) >= stor7.length:
            revert with 'NH{q', 50
        if not stor7[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
                   (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000 * stor7[2 * uint8(arg1)].field_0,
                   block.timestamp
        if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if not stor7[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 18
        if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
               (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000 * stor7[2 * uint8(arg1)].field_0,
               block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
    if uint8(arg1) >= 6:
        if not stor7[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 0, block.timestamp
        if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if not stor7[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 18
        if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
    if var121003 >= stor7[2 * uint8(arg1)].field_0:
        if uint8(arg1) >= stor7.length:
            revert with 'NH{q', 50
        if not stor7[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 0, block.timestamp
        if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if not stor7[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 18
        if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
    if arg2 > -1:
        revert with 'NH{q', 17
    if arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if not arg2:
        if var143007 == -1:
            revert with 'NH{q', 17
        if uint8(arg1) >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = 7
        if var143007 + 1 < stor7[2 * uint8(arg1)].field_0:
            if arg2 > -1:
                revert with 'NH{q', 17
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            var143007 = var143007 + 1
            continue 
        if uint8(arg1) >= stor7.length:
            revert with 'NH{q', 50
        if not stor7[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 0, block.timestamp
        if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if not stor7[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 18
        if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
    if arg2 and stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600) > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / arg2 != stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if 0 > -((stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000) - 1:
        revert with 'NH{q', 17
    if (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if var143007 == -1:
        revert with 'NH{q', 17
    if uint8(arg1) >= stor7.length:
        revert with 'NH{q', 50
    mem[0] = 7
    if var143007 + 1 < stor7[2 * uint8(arg1)].field_0:
        if arg2 > -((stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000) - 1:
            revert with 'NH{q', 17
        if arg2 + ((stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000) < arg2:
            revert with 0, 'SafeMath: addition overflow'
        var143007 = var143007 + 1
        continue 
    if uint8(arg1) >= stor7.length:
        revert with 'NH{q', 50
    if not stor7[2 * uint8(arg1)].field_0:
        if block.timestamp > -1:
            revert with 'NH{q', 17
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
               (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000,
               block.timestamp
    if stor7[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / stor7[2 * uint8(arg1)].field_0:
        revert with 'NH{q', 17
    if not stor7[2 * uint8(arg1)].field_0:
        revert with 'NH{q', 18
    if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if block.timestamp > (-86400 * stor7[2 * uint8(arg1)].field_0) - 1:
        revert with 'NH{q', 17
    if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
           (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000,
           block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
}



}
