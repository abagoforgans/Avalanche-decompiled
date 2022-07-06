contract main {




// =====================  Runtime code  =====================


#
#  - invest(address arg1, uint256 arg2)
#
const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const PROJECT_FEE = 55

const PERCENT_STEP = 5

const MARKETING_FEE = 35

const DEVELOPER_FEE = 10

const INVEST_MIN_AMOUNT = 10^17


array of uint256 rEFERRAL_PERCENTS;
uint256 totalStaked;
uint256 totalRefBonus;
uint256 totalDeposits;
array of uint256 sub_e93f6f22;
mapping of struct userDepositInfo;
mapping of struct planInfo;
uint256 startUNIX;
address stor9;
address marketingWalletAddress;

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_768, 
           userDepositInfo[address(arg1)].field_1024,
           userDepositInfo[address(arg1)].field_1280,
           userDepositInfo[address(arg1)].field_1536,
           userDepositInfo[address(arg1)].field_1792
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_512
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_2048
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < rEFERRAL_PERCENTS.length
    return rEFERRAL_PERCENTS[arg1]
}

function totalRefBonus() {
    return totalRefBonus
}

function marketingWallet() {
    return marketingWalletAddress
}

function totalDeposits() {
    return totalDeposits
}

function totalStaked() {
    return totalStaked
}

function getUserAmountOfDeposits(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_0
}

function getPlanInfo(uint8 arg1) {
    require calldata.size - 4 >= 32
    return planInfo[arg1 << 248].field_0, planInfo[arg1 << 248].field_256
}

function plans(uint256 arg1) {
    require calldata.size - 4 >= 32
    return planInfo[arg1].field_0, planInfo[arg1].field_256
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userDepositInfo[address(arg1)].field_0
    return userDepositInfo[address(arg1)][arg2].field_0, 
           userDepositInfo[address(arg1)][arg2].field_256,
           userDepositInfo[address(arg1)][arg2].field_512,
           userDepositInfo[address(arg1)][arg2].field_768,
           userDepositInfo[address(arg1)][arg2].field_1024
}

function startUNIX() {
    return startUNIX
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    return userDepositInfo[address(arg1)].field_256
}

function sub_e93f6f22(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e93f6f22.length
    return sub_e93f6f22[arg1]
}

function _fallback() payable {
    revert
}

function launch() {
    require msg.sender == stor9
    startUNIX = block.timestamp
}

function sub_552e41c6(?) {
    idx = 0
    while uint8(idx) <= 21:
        require uint8(idx) < sub_e93f6f22.length
        mem[0] = 4
        require uint8(idx) < 21
        mem[(32 * uint8(idx)) + 128] = sub_e93f6f22[uint8(idx)]
        idx = idx + 1
        continue 
    mem[864 len 0] = None
    return Array(len=21, data=mem[864 len 672])
}

function sub_9e3c0da3(?) {
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (5 * block.timestamp) - (5 * startUNIX) / 5 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
}

function getPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (5 * block.timestamp) - (5 * startUNIX) / 5 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if planInfo[arg1].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) < planInfo[arg1].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (planInfo[arg1].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600))
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        require idx < userDepositInfo[address(arg1)].field_0
        if s + userDepositInfo[address(arg1)][idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 5
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_256
        continue 
    return (s * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0)
}

function getResult(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (5 * block.timestamp) - (5 * startUNIX) / 5 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if planInfo[arg2].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) < planInfo[arg2].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        if not planInfo[arg2].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[arg2].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 0, block.timestamp
        require planInfo[arg2].field_0
        if 24 * 3600 * planInfo[arg2].field_0 / planInfo[arg2].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * planInfo[arg2].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[arg2].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * planInfo[arg2].field_0)
    require arg1
    if (planInfo[arg2].field_256 * arg1) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg1) / arg1 != planInfo[arg2].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (planInfo[arg2].field_256 * arg1) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg1) / 1000:
        if not planInfo[arg2].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[arg2].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 0, block.timestamp
        require planInfo[arg2].field_0
        if 24 * 3600 * planInfo[arg2].field_0 / planInfo[arg2].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * planInfo[arg2].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[arg2].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * planInfo[arg2].field_0)
    require (planInfo[arg2].field_256 * arg1) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg1) / 1000
    if (planInfo[arg2].field_256 * arg1) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg1) / 1000 * planInfo[arg2].field_0 / (planInfo[arg2].field_256 * arg1) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg1) / 1000 != planInfo[arg2].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not planInfo[arg2].field_0:
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[arg2].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
               (planInfo[arg2].field_256 * arg1) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg1) / 1000 * planInfo[arg2].field_0,
               block.timestamp
    require planInfo[arg2].field_0
    if 24 * 3600 * planInfo[arg2].field_0 / planInfo[arg2].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if block.timestamp + (24 * 3600 * planInfo[arg2].field_0) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    return planInfo[arg2].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
           (planInfo[arg2].field_256 * arg1) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg1) / 1000 * planInfo[arg2].field_0,
           block.timestamp + (24 * 3600 * planInfo[arg2].field_0)
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1024:
            require idx < userDepositInfo[address(arg1)].field_0
            if not userDepositInfo[address(arg1)][idx].field_256:
                require idx < userDepositInfo[address(arg1)].field_0
                require idx < userDepositInfo[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 5)
                if userDepositInfo[address(arg1)][idx].field_768 > userDepositInfo[address(arg1)].field_256:
                    if userDepositInfo[address(arg1)][idx].field_1024 >= block.timestamp:
                        if userDepositInfo[address(arg1)][idx].field_768 < block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_768 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userDepositInfo[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDepositInfo[address(arg1)][idx].field_768 < userDepositInfo[address(arg1)][idx].field_1024:
                            if userDepositInfo[address(arg1)][idx].field_768 > userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if userDepositInfo[address(arg1)][idx].field_1024 >= block.timestamp:
                        if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userDepositInfo[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1024:
                            if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
            else:
                require userDepositInfo[address(arg1)][idx].field_256
                if userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / userDepositInfo[address(arg1)][idx].field_256 != userDepositInfo[address(arg1)][idx].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require idx < userDepositInfo[address(arg1)].field_0
                require idx < userDepositInfo[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 5)
                if userDepositInfo[address(arg1)][idx].field_768 > userDepositInfo[address(arg1)].field_256:
                    if userDepositInfo[address(arg1)][idx].field_1024 >= block.timestamp:
                        if userDepositInfo[address(arg1)][idx].field_768 < block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_768 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000:
                                require userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000 != block.timestamp - userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userDepositInfo[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDepositInfo[address(arg1)][idx].field_768 < userDepositInfo[address(arg1)][idx].field_1024:
                            if userDepositInfo[address(arg1)][idx].field_768 > userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000:
                                require userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000
                                if (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000 != userDepositInfo[address(arg1)][idx].field_1024 - userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDepositInfo[address(arg1)][idx].field_1024 >= block.timestamp:
                        if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000:
                                require userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000 != block.timestamp - userDepositInfo[address(arg1)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userDepositInfo[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1024:
                            if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000:
                                require userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000
                                if (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000 != userDepositInfo[address(arg1)][idx].field_1024 - userDepositInfo[address(arg1)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1024:
            require idx < userDepositInfo[address(arg1)].field_0
            if not userDepositInfo[address(arg1)][idx].field_256:
                require idx < userDepositInfo[address(arg1)].field_0
                require idx < userDepositInfo[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 5)
                if userDepositInfo[address(arg1)][idx].field_768 > userDepositInfo[address(arg1)].field_256:
                    if userDepositInfo[address(arg1)][idx].field_1024 >= block.timestamp:
                        if userDepositInfo[address(arg1)][idx].field_768 < block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_768 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userDepositInfo[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDepositInfo[address(arg1)][idx].field_768 < userDepositInfo[address(arg1)][idx].field_1024:
                            if userDepositInfo[address(arg1)][idx].field_768 > userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if userDepositInfo[address(arg1)][idx].field_1024 >= block.timestamp:
                        if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userDepositInfo[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1024:
                            if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
            else:
                require userDepositInfo[address(arg1)][idx].field_256
                if userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / userDepositInfo[address(arg1)][idx].field_256 != userDepositInfo[address(arg1)][idx].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require idx < userDepositInfo[address(arg1)].field_0
                require idx < userDepositInfo[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 5)
                if userDepositInfo[address(arg1)][idx].field_768 > userDepositInfo[address(arg1)].field_256:
                    if userDepositInfo[address(arg1)][idx].field_1024 >= block.timestamp:
                        if userDepositInfo[address(arg1)][idx].field_768 < block.timestamp:
                            if userDepositInfo[address(arg1)][idx].field_768 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000:
                                require userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000 != block.timestamp - userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userDepositInfo[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDepositInfo[address(arg1)][idx].field_768 < userDepositInfo[address(arg1)][idx].field_1024:
                            if userDepositInfo[address(arg1)][idx].field_768 > userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000:
                                require userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000
                                if (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000 != userDepositInfo[address(arg1)][idx].field_1024 - userDepositInfo[address(arg1)][idx].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)][idx].field_768 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDepositInfo[address(arg1)][idx].field_1024 >= block.timestamp:
                        if userDepositInfo[address(arg1)].field_256 < block.timestamp:
                            if userDepositInfo[address(arg1)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000:
                                require userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000 != block.timestamp - userDepositInfo[address(arg1)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userDepositInfo[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1024:
                            if userDepositInfo[address(arg1)].field_256 > userDepositInfo[address(arg1)][idx].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000:
                                require userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000
                                if (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000 != userDepositInfo[address(arg1)][idx].field_1024 - userDepositInfo[address(arg1)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_256 * userDepositInfo[address(arg1)][idx].field_0 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function withdraw() {
    if startUNIX >= block.timestamp:
        revert with 0, 'contract hasn`t started yet'
    idx = 0
    while idx < userDepositInfo[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 5)
        if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1024:
            require idx < userDepositInfo[address(msg.sender)].field_0
            if not userDepositInfo[address(msg.sender)][idx].field_256:
                require idx < userDepositInfo[address(msg.sender)].field_0
                require idx < userDepositInfo[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 5)
                if userDepositInfo[address(msg.sender)][idx].field_768 > userDepositInfo[address(msg.sender)].field_256:
                    if userDepositInfo[address(msg.sender)][idx].field_1024 >= block.timestamp:
                        if userDepositInfo[address(msg.sender)][idx].field_768 < block.timestamp:
                            if userDepositInfo[address(msg.sender)][idx].field_768 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userDepositInfo[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 5)
                        if userDepositInfo[address(msg.sender)][idx].field_768 < userDepositInfo[address(msg.sender)][idx].field_1024:
                            if userDepositInfo[address(msg.sender)][idx].field_768 > userDepositInfo[address(msg.sender)][idx].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if userDepositInfo[address(msg.sender)][idx].field_1024 >= block.timestamp:
                        if userDepositInfo[address(msg.sender)].field_256 < block.timestamp:
                            if userDepositInfo[address(msg.sender)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userDepositInfo[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 5)
                        if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1024:
                            if userDepositInfo[address(msg.sender)].field_256 > userDepositInfo[address(msg.sender)][idx].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
            else:
                require userDepositInfo[address(msg.sender)][idx].field_256
                if userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / userDepositInfo[address(msg.sender)][idx].field_256 != userDepositInfo[address(msg.sender)][idx].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require idx < userDepositInfo[address(msg.sender)].field_0
                require idx < userDepositInfo[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 5)
                if userDepositInfo[address(msg.sender)][idx].field_768 > userDepositInfo[address(msg.sender)].field_256:
                    if userDepositInfo[address(msg.sender)][idx].field_1024 >= block.timestamp:
                        if userDepositInfo[address(msg.sender)][idx].field_768 < block.timestamp:
                            if userDepositInfo[address(msg.sender)][idx].field_768 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000:
                                require userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000
                                if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) / userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000 != block.timestamp - userDepositInfo[address(msg.sender)][idx].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userDepositInfo[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 5)
                        if userDepositInfo[address(msg.sender)][idx].field_768 < userDepositInfo[address(msg.sender)][idx].field_1024:
                            if userDepositInfo[address(msg.sender)][idx].field_768 > userDepositInfo[address(msg.sender)][idx].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000:
                                require userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000
                                if (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) / userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000 != userDepositInfo[address(msg.sender)][idx].field_1024 - userDepositInfo[address(msg.sender)][idx].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_768 * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDepositInfo[address(msg.sender)][idx].field_1024 >= block.timestamp:
                        if userDepositInfo[address(msg.sender)].field_256 < block.timestamp:
                            if userDepositInfo[address(msg.sender)].field_256 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000:
                                require userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000
                                if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) / userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000 != block.timestamp - userDepositInfo[address(msg.sender)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (block.timestamp * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userDepositInfo[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 5)
                        if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1024:
                            if userDepositInfo[address(msg.sender)].field_256 > userDepositInfo[address(msg.sender)][idx].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000:
                                require userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000
                                if (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) / userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000 != userDepositInfo[address(msg.sender)][idx].field_1024 - userDepositInfo[address(msg.sender)].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_256 * userDepositInfo[address(msg.sender)][idx].field_0 / 1000) / 24 * 3600 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    revert with 0, 'User has no dividends'
}



}
