contract main {




// =====================  Runtime code  =====================


#
#  - invest(address arg1, uint8 arg2)
#
const sub_44767308(?) = 15

const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const PROJECT_FEE = 66

const PERCENT_STEP = 3

const DEVELOPER_FEE = 44

const INVEST_MIN_AMOUNT = 5 * 10^16


array of uint256 rEFERRAL_PERCENTS;
uint256 stor1;
uint256 totalStaked;
uint256 totalRefBonus;
uint256 totalUsers;
array of struct planInfo;
mapping of struct userDownlineCount;
uint256 startUNIX;
address stor9;

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    return userDownlineCount[address(arg1)].field_1024
}

function getUserWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    return userDownlineCount[address(arg1)].field_1536
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    return userDownlineCount[address(arg1)].field_768
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userDownlineCount[address(arg1)].field_1280
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

function getUserAmountOfDeposits(address arg1) {
    require calldata.size - 4 >= 32
    return userDownlineCount[address(arg1)].field_0
}

function getPlanInfo(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < planInfo.length
    return planInfo[2 * uint8(arg1)].field_0, planInfo[2 * uint8(arg1)].field_256
}

function totalUsers() {
    return totalUsers
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userDownlineCount[address(arg1)].field_0
    return userDownlineCount[address(arg1)][arg2].field_0, 
           userDownlineCount[address(arg1)][arg2].field_256,
           userDownlineCount[address(arg1)][arg2].field_512,
           userDownlineCount[address(arg1)][arg2].field_768,
           userDownlineCount[address(arg1)][arg2].field_1024,
           userDownlineCount[address(arg1)][arg2].field_1280
}

function startUNIX() {
    return startUNIX
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    return userDownlineCount[address(arg1)].field_256
}

function _fallback() payable {
    revert
}

function getContractInfo() {
    return totalStaked, totalRefBonus, totalUsers
}

function launch() {
    require msg.sender == stor9
    startUNIX = block.timestamp
}

function getUserTotalWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    return 0
}

function getUserPercentRate(address arg1) {
    require calldata.size - 4 >= 32
    if userDownlineCount[address(arg1)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 <= 15:
        return (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600)
    return 15
}

function getPercent(uint8 arg1) {
    require calldata.size - 4 >= 32
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
    while idx < userDownlineCount[address(arg1)].field_0:
        require idx < userDownlineCount[address(arg1)].field_0
        if s + userDownlineCount[address(arg1)][idx].field_512 < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        s = s + userDownlineCount[address(arg1)][idx].field_512
        continue 
    return (s * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0)
}

function getResult(uint8 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
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
    if var45003 >= planInfo[2 * uint8(arg1)].field_0:
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
        mem[0] = 5
        if var53007 + 1 < planInfo[2 * uint8(arg1)].field_0:
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            var53007 = var53007 + 1
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
    mem[0] = 5
    if var53007 + 1 < planInfo[2 * uint8(arg1)].field_0:
        if arg2 + ((planInfo[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000) < arg2:
            revert with 0, 'SafeMath: addition overflow'
        var53007 = var53007 + 1
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

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    if userDownlineCount[address(arg1)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 <= 15:
        idx = 0
        while idx < userDownlineCount[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 6)
            if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                require idx < userDownlineCount[address(arg1)].field_0
                require idx < userDownlineCount[address(arg1)].field_0
                if userDownlineCount[address(arg1)][idx].field_0 >= 3:
                    mem[0] = sha3(address(arg1), 6)
                    if block.timestamp > userDownlineCount[address(arg1)][idx].field_1280:
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 6)
                        if userDownlineCount[address(arg1)][idx].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDownlineCount[address(arg1)][idx].field_256 + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600) < userDownlineCount[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(arg1)].field_0
                    if not userDownlineCount[address(arg1)][idx].field_512:
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 6)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)][idx].field_1024 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)].field_256 < block.timestamp:
                                    if userDownlineCount[address(arg1)].field_256 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)].field_256 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require userDownlineCount[address(arg1)][idx].field_512
                        if (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / userDownlineCount[address(arg1)][idx].field_512 != userDownlineCount[address(arg1)][idx].field_256 + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 6)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != block.timestamp - userDownlineCount[address(arg1)][idx].field_1024:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)][idx].field_1024 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != userDownlineCount[address(arg1)][idx].field_1280 - userDownlineCount[address(arg1)][idx].field_1024:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)].field_256 < block.timestamp:
                                    if userDownlineCount[address(arg1)].field_256 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != block.timestamp - userDownlineCount[address(arg1)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)].field_256 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != userDownlineCount[address(arg1)][idx].field_1280 - userDownlineCount[address(arg1)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < userDownlineCount[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 6)
            if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                require idx < userDownlineCount[address(arg1)].field_0
                require idx < userDownlineCount[address(arg1)].field_0
                if userDownlineCount[address(arg1)][idx].field_0 >= 3:
                    mem[0] = sha3(address(arg1), 6)
                    if block.timestamp > userDownlineCount[address(arg1)][idx].field_1280:
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 6)
                        if userDownlineCount[address(arg1)][idx].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDownlineCount[address(arg1)][idx].field_256 + 15 < userDownlineCount[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(arg1)].field_0
                    if not userDownlineCount[address(arg1)][idx].field_512:
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 6)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)][idx].field_1024 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)].field_256 < block.timestamp:
                                    if userDownlineCount[address(arg1)].field_256 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)].field_256 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require userDownlineCount[address(arg1)][idx].field_512
                        if (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / userDownlineCount[address(arg1)][idx].field_512 != userDownlineCount[address(arg1)][idx].field_256 + 15:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 6)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != block.timestamp - userDownlineCount[address(arg1)][idx].field_1024:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)][idx].field_1024 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != userDownlineCount[address(arg1)][idx].field_1280 - userDownlineCount[address(arg1)][idx].field_1024:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)].field_256 < block.timestamp:
                                    if userDownlineCount[address(arg1)].field_256 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != block.timestamp - userDownlineCount[address(arg1)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)].field_256 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != userDownlineCount[address(arg1)][idx].field_1280 - userDownlineCount[address(arg1)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
    return 0
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    if userDownlineCount[address(arg1)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 <= 15:
        idx = 0
        while idx < userDownlineCount[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 6)
            if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                require idx < userDownlineCount[address(arg1)].field_0
                require idx < userDownlineCount[address(arg1)].field_0
                if userDownlineCount[address(arg1)][idx].field_0 >= 3:
                    mem[0] = sha3(address(arg1), 6)
                    if block.timestamp > userDownlineCount[address(arg1)][idx].field_1280:
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 6)
                        if not userDownlineCount[address(arg1)][idx].field_768:
                            if 0 > userDownlineCount[address(arg1)][idx].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDownlineCount[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require userDownlineCount[address(arg1)][idx].field_768
                            if userDownlineCount[address(arg1)][idx].field_768 * stor1 / userDownlineCount[address(arg1)][idx].field_768 != stor1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userDownlineCount[address(arg1)][idx].field_768 * stor1 / 1000 > userDownlineCount[address(arg1)][idx].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDownlineCount[address(arg1)][idx].field_768 - (userDownlineCount[address(arg1)][idx].field_768 * stor1 / 1000) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDownlineCount[address(arg1)][idx].field_256 + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600) < userDownlineCount[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(arg1)].field_0
                    if not userDownlineCount[address(arg1)][idx].field_512:
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 6)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)][idx].field_1024 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)].field_256 < block.timestamp:
                                    if userDownlineCount[address(arg1)].field_256 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)].field_256 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require userDownlineCount[address(arg1)][idx].field_512
                        if (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / userDownlineCount[address(arg1)][idx].field_512 != userDownlineCount[address(arg1)][idx].field_256 + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 6)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != block.timestamp - userDownlineCount[address(arg1)][idx].field_1024:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600
                                            if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)][idx].field_1024 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != userDownlineCount[address(arg1)][idx].field_1280 - userDownlineCount[address(arg1)][idx].field_1024:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)].field_256 < block.timestamp:
                                    if userDownlineCount[address(arg1)].field_256 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != block.timestamp - userDownlineCount[address(arg1)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600
                                            if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)].field_256 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != userDownlineCount[address(arg1)][idx].field_1280 - userDownlineCount[address(arg1)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < userDownlineCount[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 6)
            if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                require idx < userDownlineCount[address(arg1)].field_0
                require idx < userDownlineCount[address(arg1)].field_0
                if userDownlineCount[address(arg1)][idx].field_0 >= 3:
                    mem[0] = sha3(address(arg1), 6)
                    if block.timestamp > userDownlineCount[address(arg1)][idx].field_1280:
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 6)
                        if not userDownlineCount[address(arg1)][idx].field_768:
                            if 0 > userDownlineCount[address(arg1)][idx].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDownlineCount[address(arg1)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require userDownlineCount[address(arg1)][idx].field_768
                            if userDownlineCount[address(arg1)][idx].field_768 * stor1 / userDownlineCount[address(arg1)][idx].field_768 != stor1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userDownlineCount[address(arg1)][idx].field_768 * stor1 / 1000 > userDownlineCount[address(arg1)][idx].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDownlineCount[address(arg1)][idx].field_768 - (userDownlineCount[address(arg1)][idx].field_768 * stor1 / 1000) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDownlineCount[address(arg1)][idx].field_256 + 15 < userDownlineCount[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(arg1)].field_0
                    if not userDownlineCount[address(arg1)][idx].field_512:
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 6)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)][idx].field_1024 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)].field_256 < block.timestamp:
                                    if userDownlineCount[address(arg1)].field_256 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)].field_256 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require userDownlineCount[address(arg1)][idx].field_512
                        if (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / userDownlineCount[address(arg1)][idx].field_512 != userDownlineCount[address(arg1)][idx].field_256 + 15:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 6)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != block.timestamp - userDownlineCount[address(arg1)][idx].field_1024:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600
                                            if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)][idx].field_1024 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != userDownlineCount[address(arg1)][idx].field_1280 - userDownlineCount[address(arg1)][idx].field_1024:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)].field_256 < block.timestamp:
                                    if userDownlineCount[address(arg1)].field_256 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != block.timestamp - userDownlineCount[address(arg1)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600
                                            if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 6)
                                if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                                    if userDownlineCount[address(arg1)].field_256 > userDownlineCount[address(arg1)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000:
                                        require (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000
                                        if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000 != userDownlineCount[address(arg1)][idx].field_1280 - userDownlineCount[address(arg1)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
    return 0
}

function withdraw() {
    if userDownlineCount[address(msg.sender)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 <= 15:
        idx = 0
        while idx < userDownlineCount[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 6)
            if userDownlineCount[address(msg.sender)].field_256 < userDownlineCount[address(msg.sender)][idx].field_1280:
                require idx < userDownlineCount[address(msg.sender)].field_0
                require idx < userDownlineCount[address(msg.sender)].field_0
                if userDownlineCount[address(msg.sender)][idx].field_0 >= 3:
                    mem[0] = sha3(address(msg.sender), 6)
                    if block.timestamp > userDownlineCount[address(msg.sender)][idx].field_1280:
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        if not userDownlineCount[address(msg.sender)][idx].field_768:
                            if 0 > userDownlineCount[address(msg.sender)][idx].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDownlineCount[address(msg.sender)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require userDownlineCount[address(msg.sender)][idx].field_768
                            if userDownlineCount[address(msg.sender)][idx].field_768 * stor1 / userDownlineCount[address(msg.sender)][idx].field_768 != stor1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userDownlineCount[address(msg.sender)][idx].field_768 * stor1 / 1000 > userDownlineCount[address(msg.sender)][idx].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDownlineCount[address(msg.sender)][idx].field_768 - (userDownlineCount[address(msg.sender)][idx].field_768 * stor1 / 1000) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDownlineCount[address(msg.sender)][idx].field_256 + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600) < userDownlineCount[address(msg.sender)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(msg.sender)].field_0
                    if not userDownlineCount[address(msg.sender)][idx].field_512:
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)].field_256:
                            if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(msg.sender)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(msg.sender)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 6)
                                if userDownlineCount[address(msg.sender)][idx].field_1024 < userDownlineCount[address(msg.sender)][idx].field_1280:
                                    if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(msg.sender)].field_256 < block.timestamp:
                                    if userDownlineCount[address(msg.sender)].field_256 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 6)
                                if userDownlineCount[address(msg.sender)].field_256 < userDownlineCount[address(msg.sender)][idx].field_1280:
                                    if userDownlineCount[address(msg.sender)].field_256 > userDownlineCount[address(msg.sender)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require userDownlineCount[address(msg.sender)][idx].field_512
                        if (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / userDownlineCount[address(msg.sender)][idx].field_512 != userDownlineCount[address(msg.sender)][idx].field_256 + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)].field_256:
                            if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(msg.sender)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(msg.sender)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000:
                                        require (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000
                                        if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000 != block.timestamp - userDownlineCount[address(msg.sender)][idx].field_1024:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600
                                            if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 6)
                                if userDownlineCount[address(msg.sender)][idx].field_1024 < userDownlineCount[address(msg.sender)][idx].field_1280:
                                    if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000:
                                        require (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000
                                        if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000 != userDownlineCount[address(msg.sender)][idx].field_1280 - userDownlineCount[address(msg.sender)][idx].field_1024:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(msg.sender)].field_256 < block.timestamp:
                                    if userDownlineCount[address(msg.sender)].field_256 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000:
                                        require (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000
                                        if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000 != block.timestamp - userDownlineCount[address(msg.sender)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600
                                            if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 6)
                                if userDownlineCount[address(msg.sender)].field_256 < userDownlineCount[address(msg.sender)][idx].field_1280:
                                    if userDownlineCount[address(msg.sender)].field_256 > userDownlineCount[address(msg.sender)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000:
                                        require (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000
                                        if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000 != userDownlineCount[address(msg.sender)][idx].field_1280 - userDownlineCount[address(msg.sender)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < userDownlineCount[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 6)
            if userDownlineCount[address(msg.sender)].field_256 < userDownlineCount[address(msg.sender)][idx].field_1280:
                require idx < userDownlineCount[address(msg.sender)].field_0
                require idx < userDownlineCount[address(msg.sender)].field_0
                if userDownlineCount[address(msg.sender)][idx].field_0 >= 3:
                    mem[0] = sha3(address(msg.sender), 6)
                    if block.timestamp > userDownlineCount[address(msg.sender)][idx].field_1280:
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        if not userDownlineCount[address(msg.sender)][idx].field_768:
                            if 0 > userDownlineCount[address(msg.sender)][idx].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDownlineCount[address(msg.sender)][idx].field_768 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require userDownlineCount[address(msg.sender)][idx].field_768
                            if userDownlineCount[address(msg.sender)][idx].field_768 * stor1 / userDownlineCount[address(msg.sender)][idx].field_768 != stor1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userDownlineCount[address(msg.sender)][idx].field_768 * stor1 / 1000 > userDownlineCount[address(msg.sender)][idx].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userDownlineCount[address(msg.sender)][idx].field_768 - (userDownlineCount[address(msg.sender)][idx].field_768 * stor1 / 1000) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDownlineCount[address(msg.sender)][idx].field_256 + 15 < userDownlineCount[address(msg.sender)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(msg.sender)].field_0
                    if not userDownlineCount[address(msg.sender)][idx].field_512:
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)].field_256:
                            if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(msg.sender)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(msg.sender)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 6)
                                if userDownlineCount[address(msg.sender)][idx].field_1024 < userDownlineCount[address(msg.sender)][idx].field_1280:
                                    if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(msg.sender)].field_256 < block.timestamp:
                                    if userDownlineCount[address(msg.sender)].field_256 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 6)
                                if userDownlineCount[address(msg.sender)].field_256 < userDownlineCount[address(msg.sender)][idx].field_1280:
                                    if userDownlineCount[address(msg.sender)].field_256 > userDownlineCount[address(msg.sender)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require userDownlineCount[address(msg.sender)][idx].field_512
                        if (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / userDownlineCount[address(msg.sender)][idx].field_512 != userDownlineCount[address(msg.sender)][idx].field_256 + 15:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 6)
                        if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)].field_256:
                            if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(msg.sender)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(msg.sender)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000:
                                        require (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000
                                        if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000 != block.timestamp - userDownlineCount[address(msg.sender)][idx].field_1024:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600
                                            if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 6)
                                if userDownlineCount[address(msg.sender)][idx].field_1024 < userDownlineCount[address(msg.sender)][idx].field_1280:
                                    if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000:
                                        require (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000
                                        if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000 != userDownlineCount[address(msg.sender)][idx].field_1280 - userDownlineCount[address(msg.sender)][idx].field_1024:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(msg.sender)].field_256 < block.timestamp:
                                    if userDownlineCount[address(msg.sender)].field_256 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000:
                                        require (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000
                                        if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000 != block.timestamp - userDownlineCount[address(msg.sender)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600
                                            if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 6)
                                if userDownlineCount[address(msg.sender)].field_256 < userDownlineCount[address(msg.sender)][idx].field_1280:
                                    if userDownlineCount[address(msg.sender)].field_256 > userDownlineCount[address(msg.sender)][idx].field_1280:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000:
                                        require (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000
                                        if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000 != userDownlineCount[address(msg.sender)][idx].field_1280 - userDownlineCount[address(msg.sender)].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                            if 0 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor1 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
    revert with 0, 'User has no dividends'
}



}
