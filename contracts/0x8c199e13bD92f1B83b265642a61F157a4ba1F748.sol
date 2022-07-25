contract main {




// =====================  Runtime code  =====================


#
#  - invest(address arg1, uint8 arg2)
#
const sub_44767308(?) = 15

const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const PROJECT_FEE = 10

const PERCENT_STEP = 10

const DEVELOPER_FEE = 20

const INVEST_MIN_AMOUNT = 10^17


array of uint256 rEFERRAL_PERCENTS;
array of uint256 sub_bb64289f;
uint256 stor2;
uint256 totalStaked;
uint256 totalRefBonus;
uint256 totalUsers;
uint256 sub_7a0d725b;
array of struct planInfo;
mapping of struct userDownlineCount;
mapping of struct sub_1261910b;
mapping of struct sub_ed132679;
uint256 startUNIX;
address stor13;

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    return userDownlineCount[address(arg1)].field_1024
}

function sub_1261910b(?) {
    require calldata.size - 4 >= 32
    return bool(sub_1261910b[address(arg1)].field_0), sub_1261910b[address(arg1)].field_256
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

function sub_7a0d725b(?) {
    return sub_7a0d725b
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
    return planInfo[arg1].field_0, planInfo[arg1].field_256, planInfo[arg1].field_512
}

function sub_bb64289f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_bb64289f.length
    return sub_bb64289f[arg1]
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
           userDownlineCount[address(arg1)][arg2].field_1280,
           userDownlineCount[address(arg1)][arg2].field_1536
}

function startUNIX() {
    return startUNIX
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    return userDownlineCount[address(arg1)].field_256
}

function sub_ed132679(?) {
    require calldata.size - 4 >= 32
    return sub_ed132679[arg1].field_0, sub_ed132679[arg1].field_256, sub_ed132679[arg1].field_512
}

function _fallback() payable {
    revert
}

function getContractInfo() {
    return totalStaked, totalRefBonus, totalUsers
}

function launch() {
    require msg.sender == stor13
    startUNIX = block.timestamp
}

function getUserTotalWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    return 0
}

function sub_d72f493d(?) {
    require calldata.size - 4 >= 32
    if stor13 != msg.sender:
        revert with 0, 'only owner'
    if not sub_1261910b[address(arg1)].field_0:
        revert with 0, 'wrong status'
    sub_1261910b[address(arg1)].field_0 = 0
    emit 0xcbcf626c: arg1
}

function sub_103bb18e(?) {
    require calldata.size - 4 >= 64
    if stor13 != msg.sender:
        revert with 0, 'only owner'
    if bool(sub_1261910b[address(arg1)].field_0) == 1:
        revert with 0, 'wrong status'
    if arg2 > 50:
        revert with 0, 'Maximum 5%'
    sub_1261910b[address(arg1)].field_0 = 1
    sub_1261910b[address(arg1)].field_256 = arg2
    emit 0x9782d072: arg1
}

function getUserPercentRate(address arg1) {
    require calldata.size - 4 >= 32
    if userDownlineCount[address(arg1)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 <= 15:
        return (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600)
    return 15
}

function sub_47436fb2(?) {
    require calldata.size - 4 >= 160
    if stor13 != msg.sender:
        revert with 0, 'only owner'
    userDownlineCount[address(arg1)].field_2304 = uint8(arg2)
    userDownlineCount[address(arg1)].field_2312 = Mask(248, 0, arg3)
    userDownlineCount[address(arg1)].field_2320 = Mask(240, 0, arg4)
    userDownlineCount[address(arg1)].field_2328 = Mask(232, 0, arg5)
}

function getPercent(uint8 arg1) {
    require calldata.size - 4 >= 32
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (10 * block.timestamp) - (10 * startUNIX) / 10 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < planInfo.length
    if planInfo[arg1].field_256 + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600) < planInfo[arg1].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (planInfo[arg1].field_256 + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600))
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
        mem[32] = 8
        idx = idx + 1
        s = s + userDownlineCount[address(arg1)][idx].field_512
        continue 
    return (s * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0)
}

function getResult(uint8 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (10 * block.timestamp) - (10 * startUNIX) / 10 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < planInfo.length
    if planInfo[arg1].field_256 + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600) < planInfo[arg1].field_256:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < planInfo.length
    if not arg2:
        require arg1 < planInfo.length
        if not planInfo[arg1].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[arg1].field_256 + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600), 0, block.timestamp
        require planInfo[arg1].field_0
        if 24 * 3600 * planInfo[arg1].field_0 / planInfo[arg1].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * planInfo[arg1].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[arg1].field_256 + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * planInfo[arg1].field_0)
    require arg2
    if (planInfo[arg1].field_256 * arg2) + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600 * arg2) / arg2 != planInfo[arg1].field_256 + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (planInfo[arg1].field_256 * arg2) + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600 * arg2) / 1000:
        require arg1 < planInfo.length
        if not planInfo[arg1].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[arg1].field_256 + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600), 0, block.timestamp
        require planInfo[arg1].field_0
        if 24 * 3600 * planInfo[arg1].field_0 / planInfo[arg1].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * planInfo[arg1].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[arg1].field_256 + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * planInfo[arg1].field_0)
    require (planInfo[arg1].field_256 * arg2) + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600 * arg2) / 1000
    if (planInfo[arg1].field_256 * arg2) + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600 * arg2) / 1000 * planInfo[arg1].field_0 / (planInfo[arg1].field_256 * arg2) + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600 * arg2) / 1000 != planInfo[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < planInfo.length
    if not planInfo[arg1].field_0:
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[arg1].field_256 + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600), 
               (planInfo[arg1].field_256 * arg2) + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600 * arg2) / 1000 * planInfo[arg1].field_0,
               block.timestamp
    require planInfo[arg1].field_0
    if 24 * 3600 * planInfo[arg1].field_0 / planInfo[arg1].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if block.timestamp + (24 * 3600 * planInfo[arg1].field_0) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    return planInfo[arg1].field_256 + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600), 
           (planInfo[arg1].field_256 * arg2) + ((10 * block.timestamp) - (10 * startUNIX) / 24 * 3600 * arg2) / 1000 * planInfo[arg1].field_0,
           block.timestamp + (24 * 3600 * planInfo[arg1].field_0)
}

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    if userDownlineCount[address(arg1)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 <= 15:
        idx = 0
        while idx < userDownlineCount[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 8)
            if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                require idx < userDownlineCount[address(arg1)].field_0
                require idx < userDownlineCount[address(arg1)].field_0
                if userDownlineCount[address(arg1)][idx].field_0 < 3:
                    if userDownlineCount[address(arg1)][idx].field_256 + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600) < userDownlineCount[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(arg1)].field_0
                    if not userDownlineCount[address(arg1)][idx].field_512:
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 8)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
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
                                mem[0] = sha3(address(arg1), 8)
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
                        mem[0] = sha3(address(arg1), 8)
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
                                mem[0] = sha3(address(arg1), 8)
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
                                mem[0] = sha3(address(arg1), 8)
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
                else:
                    mem[0] = sha3(address(arg1), 8)
                    if userDownlineCount[address(arg1)][idx].field_0 >= 3:
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 8)
                        if block.timestamp > userDownlineCount[address(arg1)][idx].field_1536:
                            require idx < userDownlineCount[address(arg1)].field_0
                            if userDownlineCount[address(arg1)][idx].field_256 + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600) < userDownlineCount[address(arg1)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < userDownlineCount[address(arg1)].field_0
                            if not userDownlineCount[address(arg1)][idx].field_512:
                                require idx < userDownlineCount[address(arg1)].field_0
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
                                if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                                    if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                        if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                            if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require idx < userDownlineCount[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
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
                                        mem[0] = sha3(address(arg1), 8)
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
                                mem[0] = sha3(address(arg1), 8)
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
                                        mem[0] = sha3(address(arg1), 8)
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
                                        mem[0] = sha3(address(arg1), 8)
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
            mem[0] = sha3(address(arg1), 8)
            if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                require idx < userDownlineCount[address(arg1)].field_0
                require idx < userDownlineCount[address(arg1)].field_0
                if userDownlineCount[address(arg1)][idx].field_0 < 3:
                    if userDownlineCount[address(arg1)][idx].field_256 + 15 < userDownlineCount[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(arg1)].field_0
                    if not userDownlineCount[address(arg1)][idx].field_512:
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 8)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
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
                                mem[0] = sha3(address(arg1), 8)
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
                        mem[0] = sha3(address(arg1), 8)
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
                                mem[0] = sha3(address(arg1), 8)
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
                                mem[0] = sha3(address(arg1), 8)
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
                else:
                    mem[0] = sha3(address(arg1), 8)
                    if userDownlineCount[address(arg1)][idx].field_0 >= 3:
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 8)
                        if block.timestamp > userDownlineCount[address(arg1)][idx].field_1536:
                            require idx < userDownlineCount[address(arg1)].field_0
                            if userDownlineCount[address(arg1)][idx].field_256 + 15 < userDownlineCount[address(arg1)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < userDownlineCount[address(arg1)].field_0
                            if not userDownlineCount[address(arg1)][idx].field_512:
                                require idx < userDownlineCount[address(arg1)].field_0
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
                                if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                                    if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                        if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                            if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require idx < userDownlineCount[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
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
                                        mem[0] = sha3(address(arg1), 8)
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
                                mem[0] = sha3(address(arg1), 8)
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
                                        mem[0] = sha3(address(arg1), 8)
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
                                        mem[0] = sha3(address(arg1), 8)
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
            mem[0] = sha3(address(arg1), 8)
            if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                require idx < userDownlineCount[address(arg1)].field_0
                require idx < userDownlineCount[address(arg1)].field_0
                if userDownlineCount[address(arg1)][idx].field_0 < 3:
                    if userDownlineCount[address(arg1)][idx].field_256 + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600) < userDownlineCount[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(arg1)].field_0
                    if not userDownlineCount[address(arg1)][idx].field_512:
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 8)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
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
                                mem[0] = sha3(address(arg1), 8)
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
                        mem[0] = sha3(address(arg1), 8)
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
                                            if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
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
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
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
                                            if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
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
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[0] = sha3(address(arg1), 8)
                    if userDownlineCount[address(arg1)][idx].field_0 >= 3:
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 8)
                        if block.timestamp > userDownlineCount[address(arg1)][idx].field_1536:
                            require idx < userDownlineCount[address(arg1)].field_0
                            if userDownlineCount[address(arg1)][idx].field_256 + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600) < userDownlineCount[address(arg1)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < userDownlineCount[address(arg1)].field_0
                            if not userDownlineCount[address(arg1)][idx].field_512:
                                require idx < userDownlineCount[address(arg1)].field_0
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
                                if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                                    if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                        if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                            if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require idx < userDownlineCount[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
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
                                        mem[0] = sha3(address(arg1), 8)
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
                                mem[0] = sha3(address(arg1), 8)
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
                                                    if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require idx < userDownlineCount[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
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
                                                    if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
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
                                                    if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require idx < userDownlineCount[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
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
                                                    if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(arg1)][idx].field_1280 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < userDownlineCount[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 8)
            if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                require idx < userDownlineCount[address(arg1)].field_0
                require idx < userDownlineCount[address(arg1)].field_0
                if userDownlineCount[address(arg1)][idx].field_0 < 3:
                    if userDownlineCount[address(arg1)][idx].field_256 + 15 < userDownlineCount[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(arg1)].field_0
                    if not userDownlineCount[address(arg1)][idx].field_512:
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 8)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
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
                                mem[0] = sha3(address(arg1), 8)
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
                        mem[0] = sha3(address(arg1), 8)
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
                                            if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
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
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
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
                                            if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
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
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[0] = sha3(address(arg1), 8)
                    if userDownlineCount[address(arg1)][idx].field_0 >= 3:
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 8)
                        if block.timestamp > userDownlineCount[address(arg1)][idx].field_1536:
                            require idx < userDownlineCount[address(arg1)].field_0
                            if userDownlineCount[address(arg1)][idx].field_256 + 15 < userDownlineCount[address(arg1)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < userDownlineCount[address(arg1)].field_0
                            if not userDownlineCount[address(arg1)][idx].field_512:
                                require idx < userDownlineCount[address(arg1)].field_0
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 8)
                                if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                                    if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                        if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                            if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require idx < userDownlineCount[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
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
                                        mem[0] = sha3(address(arg1), 8)
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
                                mem[0] = sha3(address(arg1), 8)
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
                                                    if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require idx < userDownlineCount[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
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
                                                    if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)][idx].field_1024 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
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
                                                    if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require idx < userDownlineCount[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 8)
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
                                                    if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(arg1)][idx].field_1280 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) - (userDownlineCount[address(arg1)].field_256 * (15 * userDownlineCount[address(arg1)][idx].field_512) + (userDownlineCount[address(arg1)][idx].field_256 * userDownlineCount[address(arg1)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
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
            mem[0] = sha3(address(msg.sender), 8)
            if userDownlineCount[address(msg.sender)].field_256 < userDownlineCount[address(msg.sender)][idx].field_1280:
                require idx < userDownlineCount[address(msg.sender)].field_0
                require idx < userDownlineCount[address(msg.sender)].field_0
                if userDownlineCount[address(msg.sender)][idx].field_0 < 3:
                    if userDownlineCount[address(msg.sender)][idx].field_256 + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600) < userDownlineCount[address(msg.sender)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(msg.sender)].field_0
                    if not userDownlineCount[address(msg.sender)][idx].field_512:
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 8)
                        if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)].field_256:
                            if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(msg.sender)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(msg.sender)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 8)
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
                                mem[0] = sha3(address(msg.sender), 8)
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
                        mem[0] = sha3(address(msg.sender), 8)
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
                                            if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 8)
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
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
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
                                            if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 8)
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
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[0] = sha3(address(msg.sender), 8)
                    if userDownlineCount[address(msg.sender)][idx].field_0 >= 3:
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 8)
                        if block.timestamp > userDownlineCount[address(msg.sender)][idx].field_1536:
                            require idx < userDownlineCount[address(msg.sender)].field_0
                            if userDownlineCount[address(msg.sender)][idx].field_256 + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600) < userDownlineCount[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < userDownlineCount[address(msg.sender)].field_0
                            if not userDownlineCount[address(msg.sender)][idx].field_512:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 8)
                                if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)].field_256:
                                    if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                        if userDownlineCount[address(msg.sender)][idx].field_1024 < block.timestamp:
                                            if userDownlineCount[address(msg.sender)][idx].field_1024 > block.timestamp:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require idx < userDownlineCount[address(msg.sender)].field_0
                                        mem[0] = sha3(address(msg.sender), 8)
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
                                        mem[0] = sha3(address(msg.sender), 8)
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
                                mem[0] = sha3(address(msg.sender), 8)
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
                                                    if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require idx < userDownlineCount[address(msg.sender)].field_0
                                        mem[0] = sha3(address(msg.sender), 8)
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
                                                    if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
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
                                                    if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require idx < userDownlineCount[address(msg.sender)].field_0
                                        mem[0] = sha3(address(msg.sender), 8)
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
                                                    if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < userDownlineCount[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 8)
            if userDownlineCount[address(msg.sender)].field_256 < userDownlineCount[address(msg.sender)][idx].field_1280:
                require idx < userDownlineCount[address(msg.sender)].field_0
                require idx < userDownlineCount[address(msg.sender)].field_0
                if userDownlineCount[address(msg.sender)][idx].field_0 < 3:
                    if userDownlineCount[address(msg.sender)][idx].field_256 + 15 < userDownlineCount[address(msg.sender)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(msg.sender)].field_0
                    if not userDownlineCount[address(msg.sender)][idx].field_512:
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 8)
                        if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)].field_256:
                            if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(msg.sender)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(msg.sender)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 8)
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
                                mem[0] = sha3(address(msg.sender), 8)
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
                        mem[0] = sha3(address(msg.sender), 8)
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
                                            if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 8)
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
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
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
                                            if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 8)
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
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if ((userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[0] = sha3(address(msg.sender), 8)
                    if userDownlineCount[address(msg.sender)][idx].field_0 >= 3:
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 8)
                        if block.timestamp > userDownlineCount[address(msg.sender)][idx].field_1536:
                            require idx < userDownlineCount[address(msg.sender)].field_0
                            if userDownlineCount[address(msg.sender)][idx].field_256 + 15 < userDownlineCount[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < userDownlineCount[address(msg.sender)].field_0
                            if not userDownlineCount[address(msg.sender)][idx].field_512:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 8)
                                if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)].field_256:
                                    if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                        if userDownlineCount[address(msg.sender)][idx].field_1024 < block.timestamp:
                                            if userDownlineCount[address(msg.sender)][idx].field_1024 > block.timestamp:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require idx < userDownlineCount[address(msg.sender)].field_0
                                        mem[0] = sha3(address(msg.sender), 8)
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
                                        mem[0] = sha3(address(msg.sender), 8)
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
                                mem[0] = sha3(address(msg.sender), 8)
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
                                                    if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require idx < userDownlineCount[address(msg.sender)].field_0
                                        mem[0] = sha3(address(msg.sender), 8)
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
                                                    if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
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
                                                    if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require idx < userDownlineCount[address(msg.sender)].field_0
                                        mem[0] = sha3(address(msg.sender), 8)
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
                                                    if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 != stor2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000 > (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if ((userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600) - ((userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 * stor2 / 1000) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
    revert with 0, 'User has no dividends'
}



}
