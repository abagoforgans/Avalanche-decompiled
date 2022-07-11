contract main {




// =====================  Runtime code  =====================


#
#  - invest(address arg1, uint8 arg2)
#
const sub_2db49165(?) = 2

const sub_416b7b88(?) = 1000

const getContractBalance = eth.balance(this.address)

const sub_8e8f9d0d(?) = 50

const fund = 1

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
    return userDepositInfo[address(arg1)].field_768, 
           userDepositInfo[address(arg1)].field_1024,
           userDepositInfo[address(arg1)].field_1280
}

function getTotalStaked() {
    return totalStaked
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_256
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_1792
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
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
    return userDepositInfo[address(arg1)].field_0
}

function totalUsers() {
    return totalUsers
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userDepositInfo[address(arg1)].field_0
    return userDepositInfo[address(arg1)][arg2].field_1280, 
           userDepositInfo[address(arg1)][arg2].field_256,
           userDepositInfo[address(arg1)][arg2].field_0,
           userDepositInfo[address(arg1)][arg2].field_1024,
           userDepositInfo[address(arg1)][arg2].field_512,
           userDepositInfo[address(arg1)][arg2].field_768
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_512
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
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
    if userDepositInfo[address(arg1)].field_1536 > userDepositInfo[address(arg1)].field_1792:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userDepositInfo[address(arg1)].field_1792 - userDepositInfo[address(arg1)].field_1536)
}

function sub_0ba85b0e(?) {
    require calldata.size - 4 >= 32
    if block.timestamp <= sub_7cd28b7d:
        require arg1 < stor7.length
        return stor7[arg1].field_256
    if sub_7cd28b7d > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if uint255(block.timestamp - sub_7cd28b7d) != block.timestamp - sub_7cd28b7d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < stor7.length
    if stor7[arg1].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600) < stor7[arg1].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (stor7[arg1].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600))
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        require idx < userDepositInfo[address(arg1)].field_0
        if s + userDepositInfo[address(arg1)][idx].field_0 < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 8
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_0
        continue 
    return (s * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0)
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 8)
        if userDepositInfo[address(arg1)].field_512 < userDepositInfo[address(arg1)][idx].field_768:
            require idx < userDepositInfo[address(arg1)].field_0
            require idx < userDepositInfo[address(arg1)].field_0
            if userDepositInfo[address(arg1)][idx].field_1280 >= 3:
                mem[0] = sha3(address(arg1), 8)
                if block.timestamp > userDepositInfo[address(arg1)][idx].field_768:
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 8)
                    if userDepositInfo[address(arg1)][idx].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(arg1)][idx].field_0:
                    require idx < userDepositInfo[address(arg1)].field_0
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 8)
                    if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)].field_512:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)][idx].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userDepositInfo[address(arg1)][idx].field_0
                    if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / userDepositInfo[address(arg1)][idx].field_0 != userDepositInfo[address(arg1)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userDepositInfo[address(arg1)].field_0
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 8)
                    if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)].field_512:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)][idx].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_768 - userDepositInfo[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_768 - userDepositInfo[address(arg1)].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if ccAddress != msg.sender:
        return 0
    return eth.balance(this.address)
}

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 8)
        if userDepositInfo[address(arg1)].field_512 < userDepositInfo[address(arg1)][idx].field_768:
            require idx < userDepositInfo[address(arg1)].field_0
            require idx < userDepositInfo[address(arg1)].field_0
            if userDepositInfo[address(arg1)][idx].field_1280 >= 3:
                mem[0] = sha3(address(arg1), 8)
                if block.timestamp > userDepositInfo[address(arg1)][idx].field_768:
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 8)
                    if userDepositInfo[address(arg1)][idx].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(arg1)][idx].field_0:
                    require idx < userDepositInfo[address(arg1)].field_0
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 8)
                    if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)].field_512:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)][idx].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userDepositInfo[address(arg1)][idx].field_0
                    if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / userDepositInfo[address(arg1)][idx].field_0 != userDepositInfo[address(arg1)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userDepositInfo[address(arg1)].field_0
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 8)
                    if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)].field_512:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)][idx].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)][idx].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_768 - userDepositInfo[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_512 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 8)
                            if userDepositInfo[address(arg1)].field_512 < userDepositInfo[address(arg1)][idx].field_768:
                                if userDepositInfo[address(arg1)].field_512 > userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_768 - userDepositInfo[address(arg1)].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_512 * userDepositInfo[address(arg1)][idx].field_0 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if ccAddress != msg.sender:
        if userDepositInfo[address(arg1)].field_1536 < userDepositInfo[address(arg1)].field_1536:
            revert with 0, 'SafeMath: addition overflow'
        return userDepositInfo[address(arg1)].field_1536
    if userDepositInfo[address(arg1)].field_1536 + eth.balance(this.address) < userDepositInfo[address(arg1)].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    return (userDepositInfo[address(arg1)].field_1536 + eth.balance(this.address))
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userDepositInfo[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 8)
        if userDepositInfo[address(msg.sender)].field_512 < userDepositInfo[address(msg.sender)][idx].field_768:
            require idx < userDepositInfo[address(msg.sender)].field_0
            require idx < userDepositInfo[address(msg.sender)].field_0
            if userDepositInfo[address(msg.sender)][idx].field_1280 >= 3:
                mem[0] = sha3(address(msg.sender), 8)
                if block.timestamp > userDepositInfo[address(msg.sender)][idx].field_768:
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 8)
                    if userDepositInfo[address(msg.sender)][idx].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(msg.sender)][idx].field_0:
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 8)
                    if userDepositInfo[address(msg.sender)][idx].field_512 > userDepositInfo[address(msg.sender)].field_512:
                        if userDepositInfo[address(msg.sender)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userDepositInfo[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 8)
                            if userDepositInfo[address(msg.sender)][idx].field_512 < userDepositInfo[address(msg.sender)][idx].field_768:
                                if userDepositInfo[address(msg.sender)][idx].field_512 > userDepositInfo[address(msg.sender)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userDepositInfo[address(msg.sender)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)].field_512 < block.timestamp:
                                if userDepositInfo[address(msg.sender)].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 8)
                            if userDepositInfo[address(msg.sender)].field_512 < userDepositInfo[address(msg.sender)][idx].field_768:
                                if userDepositInfo[address(msg.sender)].field_512 > userDepositInfo[address(msg.sender)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userDepositInfo[address(msg.sender)][idx].field_0
                    if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / userDepositInfo[address(msg.sender)][idx].field_0 != userDepositInfo[address(msg.sender)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 8)
                    if userDepositInfo[address(msg.sender)][idx].field_512 > userDepositInfo[address(msg.sender)].field_512:
                        if userDepositInfo[address(msg.sender)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userDepositInfo[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    require userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 8)
                            if userDepositInfo[address(msg.sender)][idx].field_512 < userDepositInfo[address(msg.sender)][idx].field_768:
                                if userDepositInfo[address(msg.sender)][idx].field_512 > userDepositInfo[address(msg.sender)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    require userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000
                                    if (userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != userDepositInfo[address(msg.sender)][idx].field_768 - userDepositInfo[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userDepositInfo[address(msg.sender)][idx].field_768 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)].field_512 < block.timestamp:
                                if userDepositInfo[address(msg.sender)].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    require userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(msg.sender)].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 8)
                            if userDepositInfo[address(msg.sender)].field_512 < userDepositInfo[address(msg.sender)][idx].field_768:
                                if userDepositInfo[address(msg.sender)].field_512 > userDepositInfo[address(msg.sender)][idx].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    require userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000
                                    if (userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != userDepositInfo[address(msg.sender)][idx].field_768 - userDepositInfo[address(msg.sender)].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_512 * userDepositInfo[address(msg.sender)][idx].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if ccAddress != msg.sender:
        userDepositInfo[address(msg.sender)].field_512 = block.timestamp
        if eth.balance(this.address) >= 0:
            emit Withdrawn(0, msg.sender);
        else:
            emit Withdrawn(eth.balance(this.address), msg.sender);
    else:
        if not eth.balance(this.address):
            if ccAddress != msg.sender:
                if 0 > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow'
            userDepositInfo[address(msg.sender)].field_512 = block.timestamp
            emit Withdrawn(eth.balance(this.address), msg.sender);
        else:
            require eth.balance(this.address)
            if 100 * eth.balance(this.address) / eth.balance(this.address) != 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if msg.sender == ccAddress:
                userDepositInfo[address(msg.sender)].field_512 = block.timestamp
                emit Withdrawn(eth.balance(this.address), msg.sender);
            else:
                if 100 * eth.balance(this.address) / 1000 > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow'
                userDepositInfo[address(msg.sender)].field_512 = block.timestamp
                if eth.balance(this.address) >= eth.balance(this.address) - (100 * eth.balance(this.address) / 1000):
                    emit Withdrawn((eth.balance(this.address) - (100 * eth.balance(this.address) / 1000)), msg.sender);
                else:
                    emit Withdrawn(eth.balance(this.address), msg.sender);
}

function sub_93d5c96d(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if block.timestamp <= sub_7cd28b7d:
        require arg1 < stor7.length
        require arg1 < stor7.length
        if arg1 < 3:
            if not arg2:
                require arg1 < stor7.length
                if not stor7[2 * uint8(arg1)].field_0:
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp
                require stor7[2 * uint8(arg1)].field_0
                if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
            require arg2
            if arg2 * stor7[2 * uint8(arg1)].field_256 / arg2 != stor7[2 * uint8(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg2 * stor7[2 * uint8(arg1)].field_256 / 1000:
                require arg1 < stor7.length
                if not stor7[2 * uint8(arg1)].field_0:
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp
                require stor7[2 * uint8(arg1)].field_0
                if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
            require arg2 * stor7[2 * uint8(arg1)].field_256 / 1000
            if arg2 * stor7[2 * uint8(arg1)].field_256 / 1000 * stor7[2 * uint8(arg1)].field_0 / arg2 * stor7[2 * uint8(arg1)].field_256 / 1000 != stor7[2 * uint8(arg1)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require arg1 < stor7.length
            if not stor7[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256, 
                       arg2 * stor7[2 * uint8(arg1)].field_256 / 1000 * stor7[2 * uint8(arg1)].field_0,
                       block.timestamp
            require stor7[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256, 
                   arg2 * stor7[2 * uint8(arg1)].field_256 / 1000 * stor7[2 * uint8(arg1)].field_0,
                   block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
        if arg1 >= 6:
            if not stor7[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp
            require stor7[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
        if var31003 >= stor7[2 * uint8(arg1)].field_0:
            require arg1 < stor7.length
            if not stor7[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp
            require stor7[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
        if arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not arg2:
            require arg1 < stor7.length
            mem[0] = 7
            if var39007 + 1 < stor7[2 * uint8(arg1)].field_0:
                if arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                var39007 = var39007 + 1
                continue 
            require arg1 < stor7.length
            if not stor7[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp
            require stor7[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
        require arg2
        if arg2 * stor7[2 * uint8(arg1)].field_256 / arg2 != stor7[2 * uint8(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 * stor7[2 * uint8(arg1)].field_256 / 1000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < stor7.length
        mem[0] = 7
        if var39007 + 1 < stor7[2 * uint8(arg1)].field_0:
            if arg2 + (arg2 * stor7[2 * uint8(arg1)].field_256 / 1000) < arg2:
                revert with 0, 'SafeMath: addition overflow'
            var39007 = var39007 + 1
            continue 
        require arg1 < stor7.length
        if not stor7[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256, arg2 * stor7[2 * uint8(arg1)].field_256 / 1000, block.timestamp
        require stor7[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[2 * uint8(arg1)].field_256, 
               arg2 * stor7[2 * uint8(arg1)].field_256 / 1000,
               block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
    if sub_7cd28b7d > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if uint255(block.timestamp - sub_7cd28b7d) != block.timestamp - sub_7cd28b7d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < stor7.length
    if stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600) < stor7[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < stor7.length
    if arg1 < 3:
        if not arg2:
            require arg1 < stor7.length
            if not stor7[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 0, block.timestamp
            require stor7[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
                   0,
                   block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
        require arg2
        if (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / arg2 != stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000:
            require arg1 < stor7.length
            if not stor7[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 0, block.timestamp
            require stor7[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
                   0,
                   block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
        require (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000
        if (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000 * stor7[2 * uint8(arg1)].field_0 / (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000 != stor7[2 * uint8(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require arg1 < stor7.length
        if not stor7[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
                   (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000 * stor7[2 * uint8(arg1)].field_0,
                   block.timestamp
        require stor7[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
               (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000 * stor7[2 * uint8(arg1)].field_0,
               block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
    if arg1 >= 6:
        if not stor7[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 0, block.timestamp
        require stor7[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
    if var47003 >= stor7[2 * uint8(arg1)].field_0:
        require arg1 < stor7.length
        if not stor7[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 0, block.timestamp
        require stor7[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
    if arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if not arg2:
        require arg1 < stor7.length
        mem[0] = 7
        if var55007 + 1 < stor7[2 * uint8(arg1)].field_0:
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            var55007 = var55007 + 1
            continue 
        require arg1 < stor7.length
        if not stor7[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 0, block.timestamp
        require stor7[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
    require arg2
    if (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / arg2 != stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000 < 0:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < stor7.length
    mem[0] = 7
    if var55007 + 1 < stor7[2 * uint8(arg1)].field_0:
        if arg2 + ((stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000) < arg2:
            revert with 0, 'SafeMath: addition overflow'
        var55007 = var55007 + 1
        continue 
    require arg1 < stor7.length
    if not stor7[2 * uint8(arg1)].field_0:
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
               (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000,
               block.timestamp
    require stor7[2 * uint8(arg1)].field_0
    if 24 * 3600 * stor7[2 * uint8(arg1)].field_0 / stor7[2 * uint8(arg1)].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    return stor7[2 * uint8(arg1)].field_256 + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600), 
           (stor7[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - sub_7cd28b7d / 24 * 3600 * arg2) / 1000,
           block.timestamp + (24 * 3600 * stor7[2 * uint8(arg1)].field_0)
}



}
