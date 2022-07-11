contract main {




// =====================  Runtime code  =====================


#
#  - invest(address arg1, uint8 arg2)
#
const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const PROJECT_FEE = 120

const PERCENT_STEP = 3

const WITHDRAW_FEE = 1000

const INVEST_MIN_AMOUNT = 10^17


array of uint256 rEFERRAL_PERCENTS;
uint256 totalStaked;
uint256 totalRefBonus;
array of struct planInfo;
mapping of struct userDepositInfo;
uint256 startUNIX;
address commissionWalletAddress;

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_768, 
           userDepositInfo[address(arg1)].field_1024,
           userDepositInfo[address(arg1)].field_1280
}

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
            require idx < userDepositInfo[address(arg1)].field_0
            require idx < userDepositInfo[address(arg1)].field_0
            if userDepositInfo[address(arg1)][idx].field_0 >= 3:
                mem[0] = sha3(address(arg1), 4)
                if block.timestamp > userDepositInfo[address(arg1)][idx].field_1280:
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userDepositInfo[address(arg1)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(arg1)][idx].field_512:
                    require idx < userDepositInfo[address(arg1)].field_0
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userDepositInfo[address(arg1)][idx].field_512
                    if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / userDepositInfo[address(arg1)][idx].field_512 != userDepositInfo[address(arg1)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userDepositInfo[address(arg1)].field_0
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userDepositInfo[address(arg1)].field_1536 < userDepositInfo[address(arg1)].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    return userDepositInfo[address(arg1)].field_1536
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_512
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
    return totalRefBonus
}

function totalStaked() {
    return totalStaked
}

function commissionWallet() {
    return commissionWalletAddress
}

function getUserAmountOfDeposits(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_0
}

function getPlanInfo(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < planInfo.length
    return planInfo[2 * uint8(arg1)].field_0, planInfo[2 * uint8(arg1)].field_256
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userDepositInfo[address(arg1)].field_0
    return userDepositInfo[address(arg1)][arg2].field_0, 
           userDepositInfo[address(arg1)][arg2].field_256,
           userDepositInfo[address(arg1)][arg2].field_512,
           userDepositInfo[address(arg1)][arg2].field_768,
           userDepositInfo[address(arg1)][arg2].field_1024,
           userDepositInfo[address(arg1)][arg2].field_1280
}

function startUNIX() {
    return startUNIX
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_256
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_1536
}

function _fallback() payable {
    revert
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    if userDepositInfo[address(arg1)].field_1536 > userDepositInfo[address(arg1)].field_1792:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userDepositInfo[address(arg1)].field_1792 - userDepositInfo[address(arg1)].field_1536)
}

function getPercent(uint8 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp <= startUNIX:
        require arg1 < planInfo.length
        return planInfo[2 * uint8(arg1)].field_256
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (3 * block.timestamp) - (3 * startUNIX) / 3 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < planInfo.length
    if planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600) < planInfo[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600))
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        require idx < userDepositInfo[address(arg1)].field_0
        if s + userDepositInfo[address(arg1)][idx].field_512 < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_512
        continue 
    return (s * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0)
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
            require idx < userDepositInfo[address(arg1)].field_0
            require idx < userDepositInfo[address(arg1)].field_0
            if userDepositInfo[address(arg1)][idx].field_0 >= 3:
                mem[0] = sha3(address(arg1), 4)
                if block.timestamp > userDepositInfo[address(arg1)][idx].field_1280:
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userDepositInfo[address(arg1)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(arg1)][idx].field_512:
                    require idx < userDepositInfo[address(arg1)].field_0
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userDepositInfo[address(arg1)][idx].field_512
                    if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / userDepositInfo[address(arg1)][idx].field_512 != userDepositInfo[address(arg1)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userDepositInfo[address(arg1)].field_0
                    require idx < userDepositInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_1024 < block.timestamp:
                                if userDepositInfo[address(arg1)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)][idx].field_1024 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                                if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 4)
                            if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
                                if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                                    require userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 != userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function withdraw() {
    idx = 0
    while idx < userDepositInfo[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 4)
        if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1280:
            require idx < userDepositInfo[address(msg.sender)].field_0
            require idx < userDepositInfo[address(msg.sender)].field_0
            if userDepositInfo[address(msg.sender)][idx].field_0 >= 3:
                mem[0] = sha3(address(msg.sender), 4)
                if block.timestamp > userDepositInfo[address(msg.sender)][idx].field_1280:
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    if userDepositInfo[address(msg.sender)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(msg.sender)][idx].field_512:
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    if userDepositInfo[address(msg.sender)][idx].field_1024 > userDepositInfo[address(msg.sender)].field_256:
                        if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)][idx].field_1024 < block.timestamp:
                                if userDepositInfo[address(msg.sender)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            if userDepositInfo[address(msg.sender)][idx].field_1024 < userDepositInfo[address(msg.sender)][idx].field_1280:
                                if userDepositInfo[address(msg.sender)][idx].field_1024 > userDepositInfo[address(msg.sender)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)].field_256 < block.timestamp:
                                if userDepositInfo[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userDepositInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1280:
                                if userDepositInfo[address(msg.sender)].field_256 > userDepositInfo[address(msg.sender)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userDepositInfo[address(msg.sender)][idx].field_512
                    if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / userDepositInfo[address(msg.sender)][idx].field_512 != userDepositInfo[address(msg.sender)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    require idx < userDepositInfo[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    if userDepositInfo[address(msg.sender)][idx].field_1024 > userDepositInfo[address(msg.sender)].field_256:
                        if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)][idx].field_1024 < block.timestamp:
                                if userDepositInfo[address(msg.sender)][idx].field_1024 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    require userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(msg.sender)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            if userDepositInfo[address(msg.sender)][idx].field_1024 < userDepositInfo[address(msg.sender)][idx].field_1280:
                                if userDepositInfo[address(msg.sender)][idx].field_1024 > userDepositInfo[address(msg.sender)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    require userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000
                                    if (userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != userDepositInfo[address(msg.sender)][idx].field_1280 - userDepositInfo[address(msg.sender)][idx].field_1024:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
                            if userDepositInfo[address(msg.sender)].field_256 < block.timestamp:
                                if userDepositInfo[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    require userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userDepositInfo[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userDepositInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 4)
                            if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1280:
                                if userDepositInfo[address(msg.sender)].field_256 > userDepositInfo[address(msg.sender)][idx].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                                    require userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000
                                    if (userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 != userDepositInfo[address(msg.sender)][idx].field_1280 - userDepositInfo[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userDepositInfo[address(msg.sender)].field_1536 <= 0:
        revert with 0, 'User has no dividends'
    userDepositInfo[address(msg.sender)].field_1536 = 0
    if userDepositInfo[address(msg.sender)].field_1536 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if userDepositInfo[address(msg.sender)].field_1536 <= 0:
        revert with 0, 'User has no dividends'
    userDepositInfo[address(msg.sender)].field_256 = block.timestamp
    if eth.balance(this.address) >= userDepositInfo[address(msg.sender)].field_1536:
        call msg.sender with:
           value userDepositInfo[address(msg.sender)].field_1536 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(userDepositInfo[address(msg.sender)].field_1536, msg.sender);
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(eth.balance(this.address), msg.sender);
}

function getResult(uint8 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if block.timestamp <= startUNIX:
        require arg1 < planInfo.length
        require arg1 < planInfo.length
        if arg1 < 3:
            if not arg2:
                require arg1 < planInfo.length
                if not planInfo[2 * uint8(arg1)].field_0:
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp
                require planInfo[2 * uint8(arg1)].field_0
                if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
            require arg2
            if arg2 * planInfo[2 * uint8(arg1)].field_256 / arg2 != planInfo[2 * uint8(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000:
                require arg1 < planInfo.length
                if not planInfo[2 * uint8(arg1)].field_0:
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp
                require planInfo[2 * uint8(arg1)].field_0
                if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
            require arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000
            if arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0 / arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000 != planInfo[2 * uint8(arg1)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require arg1 < planInfo.length
            if not planInfo[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256, 
                       arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0,
                       block.timestamp
            require planInfo[2 * uint8(arg1)].field_0
            if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256, 
                   arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0,
                   block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
        if arg1 >= 6:
            if not planInfo[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp
            require planInfo[2 * uint8(arg1)].field_0
            if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
        if var31003 >= planInfo[2 * uint8(arg1)].field_0:
            require arg1 < planInfo.length
            if not planInfo[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp
            require planInfo[2 * uint8(arg1)].field_0
            if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
        if arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not arg2:
            require arg1 < planInfo.length
            mem[0] = 3
            if var39007 + 1 < planInfo[2 * uint8(arg1)].field_0:
                if arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                var39007 = var39007 + 1
                continue 
            require arg1 < planInfo.length
            if not planInfo[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp
            require planInfo[2 * uint8(arg1)].field_0
            if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
        require arg2
        if arg2 * planInfo[2 * uint8(arg1)].field_256 / arg2 != planInfo[2 * uint8(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < planInfo.length
        mem[0] = 3
        if var39007 + 1 < planInfo[2 * uint8(arg1)].field_0:
            if arg2 + (arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000) < arg2:
                revert with 0, 'SafeMath: addition overflow'
            var39007 = var39007 + 1
            continue 
        require arg1 < planInfo.length
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256, arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000, block.timestamp
        require planInfo[2 * uint8(arg1)].field_0
        if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256, 
               arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (3 * block.timestamp) - (3 * startUNIX) / 3 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < planInfo.length
    if planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600) < planInfo[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < planInfo.length
    if arg1 < 3:
        if not arg2:
            require arg1 < planInfo.length
            if not planInfo[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
            require planInfo[2 * uint8(arg1)].field_0
            if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
                   0,
                   block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
        require arg2
        if (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / arg2 != planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000:
            require arg1 < planInfo.length
            if not planInfo[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
            require planInfo[2 * uint8(arg1)].field_0
            if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
                   0,
                   block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
        require (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000
        if (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 * planInfo[2 * uint8(arg1)].field_0 / (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 != planInfo[2 * uint8(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require arg1 < planInfo.length
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
                   (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 * planInfo[2 * uint8(arg1)].field_0,
                   block.timestamp
        require planInfo[2 * uint8(arg1)].field_0
        if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 * planInfo[2 * uint8(arg1)].field_0,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    if arg1 >= 6:
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
        require planInfo[2 * uint8(arg1)].field_0
        if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    if var47003 >= planInfo[2 * uint8(arg1)].field_0:
        require arg1 < planInfo.length
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
        require planInfo[2 * uint8(arg1)].field_0
        if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    if arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if not arg2:
        require arg1 < planInfo.length
        mem[0] = 3
        if var55007 + 1 < planInfo[2 * uint8(arg1)].field_0:
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            var55007 = var55007 + 1
            continue 
        require arg1 < planInfo.length
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
        require planInfo[2 * uint8(arg1)].field_0
        if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    require arg2
    if (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / arg2 != planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 < 0:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < planInfo.length
    mem[0] = 3
    if var55007 + 1 < planInfo[2 * uint8(arg1)].field_0:
        if arg2 + ((planInfo[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000) < arg2:
            revert with 0, 'SafeMath: addition overflow'
        var55007 = var55007 + 1
        continue 
    require arg1 < planInfo.length
    if not planInfo[2 * uint8(arg1)].field_0:
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000,
               block.timestamp
    require planInfo[2 * uint8(arg1)].field_0
    if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    return planInfo[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
           (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000,
           block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
}



}
