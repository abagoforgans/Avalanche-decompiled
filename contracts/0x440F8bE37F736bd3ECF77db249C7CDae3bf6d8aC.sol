contract main {




// =====================  Runtime code  =====================


#
#  - invest(address arg1, uint8 arg2)
#
const sub_14f57d83(?) = 10 * 10^18

const sub_2715d219(?) = 200

const sub_44767308(?) = 15

const getContractBalance = eth.balance(this.address)

const sub_a4e01f7b(?) = 10

const sub_ad0b4fe6(?) = 100

const sub_ca6fa011(?) = 50

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const PROJECT_FEE = 80

const PERCENT_STEP = 5

const DEVELOPER_FEE = 20

const INVEST_MIN_AMOUNT = 10^17


array of uint256 rEFERRAL_PERCENTS;
uint256 totalStaked;
uint256 totalRefBonus;
uint256 totalUsers;
array of struct planInfo;
mapping of struct userDownlineCount;
uint256 startUNIX;
address stor8;

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
    require msg.sender == stor8
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
    if (5 * block.timestamp) - (5 * startUNIX) / 5 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < planInfo.length
    if planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) < planInfo[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600))
}

function sub_a566dc7e(?) {
    require calldata.size - 4 >= 64
    if arg2 < 10 * 10^18:
        return 0
    if arg1 == 3:
        if arg2 / 10 * 10^18 <= 10:
            return (arg2 / 10 * 10^18)
        return 10
    if arg1 == 4:
        if not arg2 / 10 * 10^18:
            return 0
        require arg2 / 10 * 10^18
        if 2 * arg2 / 10 * 10^18 / arg2 / 10 * 10^18 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 * arg2 / 10 * 10^18 <= 50:
            return (2 * arg2 / 10 * 10^18)
        return 50
    if arg1 != 5:
        return 0
    if not arg2 / 10 * 10^18:
        return 0
    require arg2 / 10 * 10^18
    if 3 * arg2 / 10 * 10^18 / arg2 / 10 * 10^18 != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if 3 * arg2 / 10 * 10^18 <= 100:
        return (3 * arg2 / 10 * 10^18)
    return 100
}

function forceWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if userDownlineCount[address(msg.sender)].field_0 <= 0:
        revert with 0, 'user doesn`t have deposits'
    if arg1 >= userDownlineCount[address(msg.sender)].field_0:
        revert with 0, 'Invalid index'
    if userDownlineCount[address(msg.sender)][arg1].field_0 <= 2:
        revert with 0, 'unable to withdraw deposit'
    require arg1 < userDownlineCount[address(msg.sender)].field_0
    if userDownlineCount[address(msg.sender)][arg1].field_1280 <= 0:
        revert with 0, 'Already withdrawn'
    require arg1 < userDownlineCount[address(msg.sender)].field_0
    if userDownlineCount[address(msg.sender)][arg1].field_1280 <= block.timestamp:
        revert with 0, 'Period already ended'
    require arg1 < userDownlineCount[address(msg.sender)].field_0
    if not userDownlineCount[address(msg.sender)][arg1].field_512:
        if 0 > userDownlineCount[address(msg.sender)][arg1].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        require arg1 < userDownlineCount[address(msg.sender)].field_0
        userDownlineCount[address(msg.sender)][arg1].field_1280 = 0
        if userDownlineCount[address(msg.sender)][arg1].field_512 <= eth.balance(this.address):
            call msg.sender with:
               value userDownlineCount[address(msg.sender)][arg1].field_512 wei
                 gas 2300 * is_zero(value) wei
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    else:
        require userDownlineCount[address(msg.sender)][arg1].field_512
        if 200 * userDownlineCount[address(msg.sender)][arg1].field_512 / userDownlineCount[address(msg.sender)][arg1].field_512 != 200:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 200 * userDownlineCount[address(msg.sender)][arg1].field_512 / 1000 > userDownlineCount[address(msg.sender)][arg1].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        require arg1 < userDownlineCount[address(msg.sender)].field_0
        userDownlineCount[address(msg.sender)][arg1].field_1280 = 0
        if userDownlineCount[address(msg.sender)][arg1].field_512 - (200 * userDownlineCount[address(msg.sender)][arg1].field_512 / 1000) <= eth.balance(this.address):
            call msg.sender with:
               value userDownlineCount[address(msg.sender)][arg1].field_512 - (200 * userDownlineCount[address(msg.sender)][arg1].field_512 / 1000) wei
                 gas 2300 * is_zero(value) wei
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        mem[32] = 5
        idx = idx + 1
        s = s + userDownlineCount[address(arg1)][idx].field_512
        continue 
    return (s * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0 * userDownlineCount[address(arg1)].field_0)
}

function getResult(uint8 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (5 * block.timestamp) - (5 * startUNIX) / 5 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < planInfo.length
    if planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) < planInfo[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < planInfo.length
    if not arg2:
        require arg1 < planInfo.length
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 0, block.timestamp
        require planInfo[2 * uint8(arg1)].field_0
        if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    require arg2
    if (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / arg2 != planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000:
        require arg1 < planInfo.length
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 0, block.timestamp
        require planInfo[2 * uint8(arg1)].field_0
        if 24 * 3600 * planInfo[2 * uint8(arg1)].field_0 / planInfo[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    require (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000
    if (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000 * planInfo[2 * uint8(arg1)].field_0 / (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000 != planInfo[2 * uint8(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < planInfo.length
    if not planInfo[2 * uint8(arg1)].field_0:
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
               (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000 * planInfo[2 * uint8(arg1)].field_0,
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
    return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
           (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000 * planInfo[2 * uint8(arg1)].field_0,
           block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
}

function sub_16c0e2b7(?) {
    require calldata.size - 4 >= 32
    mem[96] = 3
    mem[128 len 96] = code.data[11740 len 96]
    idx = 0
    while idx < userDownlineCount[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        if userDownlineCount[address(arg1)][idx].field_0 > 2:
            require idx < userDownlineCount[address(arg1)].field_0
            if 3 > userDownlineCount[address(arg1)][idx].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            require idx < userDownlineCount[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 5)
            require userDownlineCount[address(arg1)][idx].field_0 - 3 < mem[96]
            if mem[(32 * userDownlineCount[address(arg1)][idx].field_0 - 3) + 128] + userDownlineCount[address(arg1)][idx].field_512 < mem[(32 * userDownlineCount[address(arg1)][idx].field_0 - 3) + 128]:
                revert with 0, 'SafeMath: addition overflow'
            require userDownlineCount[address(arg1)][idx].field_0 - 3 < mem[96]
            mem[(32 * userDownlineCount[address(arg1)][idx].field_0 - 3) + 128] = mem[(32 * userDownlineCount[address(arg1)][idx].field_0 - 3) + 128] + userDownlineCount[address(arg1)][idx].field_512
        idx = idx + 1
        continue 
    require 0 < mem[96]
    require 1 < mem[96]
    if mem[128] < 10 * 10^18:
        if mem[160] < 10 * 10^18:
            require 2 < mem[96]
            if mem[192] < 10 * 10^18:
                return 0
            if not mem[192] / 10 * 10^18:
                return 0
            require mem[192] / 10 * 10^18
            if 3 * mem[192] / 10 * 10^18 / mem[192] / 10 * 10^18 != 3:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if 3 * mem[192] / 10 * 10^18 > 100:
                return 100
            if 3 * mem[192] / 10 * 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (3 * mem[192] / 10 * 10^18)
        if not mem[160] / 10 * 10^18:
            require 2 < mem[96]
            if mem[192] < 10 * 10^18:
                return 0
            if not mem[192] / 10 * 10^18:
                return 0
            require mem[192] / 10 * 10^18
            if 3 * mem[192] / 10 * 10^18 / mem[192] / 10 * 10^18 != 3:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if 3 * mem[192] / 10 * 10^18 > 100:
                return 100
            if 3 * mem[192] / 10 * 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (3 * mem[192] / 10 * 10^18)
        require mem[160] / 10 * 10^18
        if 2 * mem[160] / 10 * 10^18 / mem[160] / 10 * 10^18 != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require 2 < mem[96]
        if 2 * mem[160] / 10 * 10^18 > 50:
            if mem[192] < 10 * 10^18:
                return 50
            if not mem[192] / 10 * 10^18:
                return 50
            require mem[192] / 10 * 10^18
            if 3 * mem[192] / 10 * 10^18 / mem[192] / 10 * 10^18 != 3:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if 3 * mem[192] / 10 * 10^18 > 100:
                return 150
            if (3 * mem[192] / 10 * 10^18) + 50 < 50:
                revert with 0, 'SafeMath: addition overflow'
            return ((3 * mem[192] / 10 * 10^18) + 50)
        if mem[192] < 10 * 10^18:
            if 2 * mem[160] / 10 * 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 2 * mem[160] / 10 * 10^18 < 2 * mem[160] / 10 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * mem[160] / 10 * 10^18)
        if not mem[192] / 10 * 10^18:
            if 2 * mem[160] / 10 * 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 2 * mem[160] / 10 * 10^18 < 2 * mem[160] / 10 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * mem[160] / 10 * 10^18)
        require mem[192] / 10 * 10^18
        if 3 * mem[192] / 10 * 10^18 / mem[192] / 10 * 10^18 != 3:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if 2 * mem[160] / 10 * 10^18 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 3 * mem[192] / 10 * 10^18 <= 100:
            if (2 * mem[160] / 10 * 10^18) + (3 * mem[192] / 10 * 10^18) < 2 * mem[160] / 10 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((2 * mem[160] / 10 * 10^18) + (3 * mem[192] / 10 * 10^18))
        if (2 * mem[160] / 10 * 10^18) + 100 < 2 * mem[160] / 10 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((2 * mem[160] / 10 * 10^18) + 100)
    if mem[128] / 10 * 10^18 <= 10:
        if mem[160] < 10 * 10^18:
            require 2 < mem[96]
            if mem[192] < 10 * 10^18:
                if mem[128] / 10 * 10^18 < mem[128] / 10 * 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (mem[128] / 10 * 10^18)
            if not mem[192] / 10 * 10^18:
                if mem[128] / 10 * 10^18 < mem[128] / 10 * 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (mem[128] / 10 * 10^18)
            require mem[192] / 10 * 10^18
            if 3 * mem[192] / 10 * 10^18 / mem[192] / 10 * 10^18 != 3:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if mem[128] / 10 * 10^18 < mem[128] / 10 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 3 * mem[192] / 10 * 10^18 <= 100:
                if (mem[128] / 10 * 10^18) + (3 * mem[192] / 10 * 10^18) < mem[128] / 10 * 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((mem[128] / 10 * 10^18) + (3 * mem[192] / 10 * 10^18))
            if (mem[128] / 10 * 10^18) + 100 < mem[128] / 10 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((mem[128] / 10 * 10^18) + 100)
        if not mem[160] / 10 * 10^18:
            require 2 < mem[96]
            if mem[192] < 10 * 10^18:
                if mem[128] / 10 * 10^18 < mem[128] / 10 * 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (mem[128] / 10 * 10^18)
            if not mem[192] / 10 * 10^18:
                if mem[128] / 10 * 10^18 < mem[128] / 10 * 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (mem[128] / 10 * 10^18)
            require mem[192] / 10 * 10^18
            if 3 * mem[192] / 10 * 10^18 / mem[192] / 10 * 10^18 != 3:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if mem[128] / 10 * 10^18 < mem[128] / 10 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 3 * mem[192] / 10 * 10^18 <= 100:
                if (mem[128] / 10 * 10^18) + (3 * mem[192] / 10 * 10^18) < mem[128] / 10 * 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((mem[128] / 10 * 10^18) + (3 * mem[192] / 10 * 10^18))
            if (mem[128] / 10 * 10^18) + 100 < mem[128] / 10 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((mem[128] / 10 * 10^18) + 100)
        require mem[160] / 10 * 10^18
        if 2 * mem[160] / 10 * 10^18 / mem[160] / 10 * 10^18 != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require 2 < mem[96]
        if 2 * mem[160] / 10 * 10^18 <= 50:
            if mem[192] < 10 * 10^18:
                if (mem[128] / 10 * 10^18) + (2 * mem[160] / 10 * 10^18) < mem[128] / 10 * 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((mem[128] / 10 * 10^18) + (2 * mem[160] / 10 * 10^18))
            if not mem[192] / 10 * 10^18:
                if (mem[128] / 10 * 10^18) + (2 * mem[160] / 10 * 10^18) < mem[128] / 10 * 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return ((mem[128] / 10 * 10^18) + (2 * mem[160] / 10 * 10^18))
            require mem[192] / 10 * 10^18
            if 3 * mem[192] / 10 * 10^18 / mem[192] / 10 * 10^18 != 3:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if (mem[128] / 10 * 10^18) + (2 * mem[160] / 10 * 10^18) < mem[128] / 10 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 3 * mem[192] / 10 * 10^18 > 100:
                return ((mem[128] / 10 * 10^18) + (2 * mem[160] / 10 * 10^18) + 100)
            if 3 * mem[192] / 10 * 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((mem[128] / 10 * 10^18) + (2 * mem[160] / 10 * 10^18) + (3 * mem[192] / 10 * 10^18))
        if mem[192] < 10 * 10^18:
            if (mem[128] / 10 * 10^18) + 50 < mem[128] / 10 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((mem[128] / 10 * 10^18) + 50)
        if not mem[192] / 10 * 10^18:
            if (mem[128] / 10 * 10^18) + 50 < mem[128] / 10 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return ((mem[128] / 10 * 10^18) + 50)
        require mem[192] / 10 * 10^18
        if 3 * mem[192] / 10 * 10^18 / mem[192] / 10 * 10^18 != 3:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if (mem[128] / 10 * 10^18) + 50 < mem[128] / 10 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if 3 * mem[192] / 10 * 10^18 > 100:
            return ((mem[128] / 10 * 10^18) + 150)
        if 3 * mem[192] / 10 * 10^18 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((mem[128] / 10 * 10^18) + (3 * mem[192] / 10 * 10^18) + 50)
    if mem[160] < 10 * 10^18:
        require 2 < mem[96]
        if mem[192] < 10 * 10^18:
            return 10
        if not mem[192] / 10 * 10^18:
            return 10
        require mem[192] / 10 * 10^18
        if 3 * mem[192] / 10 * 10^18 / mem[192] / 10 * 10^18 != 3:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if 3 * mem[192] / 10 * 10^18 > 100:
            return 110
        if (3 * mem[192] / 10 * 10^18) + 10 < 10:
            revert with 0, 'SafeMath: addition overflow'
        return ((3 * mem[192] / 10 * 10^18) + 10)
    if not mem[160] / 10 * 10^18:
        require 2 < mem[96]
        if mem[192] < 10 * 10^18:
            return 10
        if not mem[192] / 10 * 10^18:
            return 10
        require mem[192] / 10 * 10^18
        if 3 * mem[192] / 10 * 10^18 / mem[192] / 10 * 10^18 != 3:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if 3 * mem[192] / 10 * 10^18 > 100:
            return 110
        if (3 * mem[192] / 10 * 10^18) + 10 < 10:
            revert with 0, 'SafeMath: addition overflow'
        return ((3 * mem[192] / 10 * 10^18) + 10)
    require mem[160] / 10 * 10^18
    if 2 * mem[160] / 10 * 10^18 / mem[160] / 10 * 10^18 != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    require 2 < mem[96]
    if 2 * mem[160] / 10 * 10^18 > 50:
        if mem[192] < 10 * 10^18:
            return 60
        if not mem[192] / 10 * 10^18:
            return 60
        require mem[192] / 10 * 10^18
        if 3 * mem[192] / 10 * 10^18 / mem[192] / 10 * 10^18 != 3:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if 3 * mem[192] / 10 * 10^18 > 100:
            return 160
        if (3 * mem[192] / 10 * 10^18) + 60 < 60:
            revert with 0, 'SafeMath: addition overflow'
        return ((3 * mem[192] / 10 * 10^18) + 60)
    if mem[192] < 10 * 10^18:
        if (2 * mem[160] / 10 * 10^18) + 10 < 10:
            revert with 0, 'SafeMath: addition overflow'
        return ((2 * mem[160] / 10 * 10^18) + 10)
    if not mem[192] / 10 * 10^18:
        if (2 * mem[160] / 10 * 10^18) + 10 < 10:
            revert with 0, 'SafeMath: addition overflow'
        return ((2 * mem[160] / 10 * 10^18) + 10)
    require mem[192] / 10 * 10^18
    if 3 * mem[192] / 10 * 10^18 / mem[192] / 10 * 10^18 != 3:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if (2 * mem[160] / 10 * 10^18) + 10 < 10:
        revert with 0, 'SafeMath: addition overflow'
    if 3 * mem[192] / 10 * 10^18 > 100:
        return ((2 * mem[160] / 10 * 10^18) + 110)
    if 3 * mem[192] / 10 * 10^18 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((2 * mem[160] / 10 * 10^18) + (3 * mem[192] / 10 * 10^18) + 10)
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    if userDownlineCount[address(arg1)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 <= 15:
        idx = 0
        while idx < userDownlineCount[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 5)
            if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                require idx < userDownlineCount[address(arg1)].field_0
                require idx < userDownlineCount[address(arg1)].field_0
                if userDownlineCount[address(arg1)][idx].field_0 >= 3:
                    mem[0] = sha3(address(arg1), 5)
                    if block.timestamp > userDownlineCount[address(arg1)][idx].field_1280:
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDownlineCount[address(arg1)][idx].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDownlineCount[address(arg1)][idx].field_256 + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600) < userDownlineCount[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(arg1)].field_0
                    if not userDownlineCount[address(arg1)][idx].field_512:
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 5)
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
                                mem[0] = sha3(address(arg1), 5)
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
                        mem[0] = sha3(address(arg1), 5)
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
                                mem[0] = sha3(address(arg1), 5)
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
                                mem[0] = sha3(address(arg1), 5)
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
            mem[0] = sha3(address(arg1), 5)
            if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                require idx < userDownlineCount[address(arg1)].field_0
                require idx < userDownlineCount[address(arg1)].field_0
                if userDownlineCount[address(arg1)][idx].field_0 >= 3:
                    mem[0] = sha3(address(arg1), 5)
                    if block.timestamp > userDownlineCount[address(arg1)][idx].field_1280:
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDownlineCount[address(arg1)][idx].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDownlineCount[address(arg1)][idx].field_256 + 15 < userDownlineCount[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(arg1)].field_0
                    if not userDownlineCount[address(arg1)][idx].field_512:
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 5)
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
                                mem[0] = sha3(address(arg1), 5)
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
                        mem[0] = sha3(address(arg1), 5)
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
                                mem[0] = sha3(address(arg1), 5)
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
                                mem[0] = sha3(address(arg1), 5)
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
    if userDownlineCount[address(arg1)].field_1792 <= 0:
        return 0
    if userDownlineCount[address(arg1)].field_1792 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return userDownlineCount[address(arg1)].field_1792
}

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    if userDownlineCount[address(arg1)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600 <= 15:
        idx = 0
        while idx < userDownlineCount[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 5)
            if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                require idx < userDownlineCount[address(arg1)].field_0
                require idx < userDownlineCount[address(arg1)].field_0
                if userDownlineCount[address(arg1)][idx].field_0 >= 3:
                    mem[0] = sha3(address(arg1), 5)
                    if block.timestamp > userDownlineCount[address(arg1)][idx].field_1280:
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDownlineCount[address(arg1)][idx].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDownlineCount[address(arg1)][idx].field_256 + (block.timestamp - userDownlineCount[address(arg1)].field_512 / 24 * 3600) < userDownlineCount[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(arg1)].field_0
                    if not userDownlineCount[address(arg1)][idx].field_512:
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 5)
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
                                mem[0] = sha3(address(arg1), 5)
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
                        mem[0] = sha3(address(arg1), 5)
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
                                mem[0] = sha3(address(arg1), 5)
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
                                mem[0] = sha3(address(arg1), 5)
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
            mem[0] = sha3(address(arg1), 5)
            if userDownlineCount[address(arg1)].field_256 < userDownlineCount[address(arg1)][idx].field_1280:
                require idx < userDownlineCount[address(arg1)].field_0
                require idx < userDownlineCount[address(arg1)].field_0
                if userDownlineCount[address(arg1)][idx].field_0 >= 3:
                    mem[0] = sha3(address(arg1), 5)
                    if block.timestamp > userDownlineCount[address(arg1)][idx].field_1280:
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDownlineCount[address(arg1)][idx].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDownlineCount[address(arg1)][idx].field_256 + 15 < userDownlineCount[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(arg1)].field_0
                    if not userDownlineCount[address(arg1)][idx].field_512:
                        require idx < userDownlineCount[address(arg1)].field_0
                        require idx < userDownlineCount[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userDownlineCount[address(arg1)][idx].field_1024 > userDownlineCount[address(arg1)].field_256:
                            if userDownlineCount[address(arg1)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(arg1)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(arg1)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 5)
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
                                mem[0] = sha3(address(arg1), 5)
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
                        mem[0] = sha3(address(arg1), 5)
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
                                mem[0] = sha3(address(arg1), 5)
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
                                mem[0] = sha3(address(arg1), 5)
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
    if userDownlineCount[address(arg1)].field_1792 <= 0:
        return 0
    if userDownlineCount[address(arg1)].field_1792 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return userDownlineCount[address(arg1)].field_1792
}

function withdraw() {
    if userDownlineCount[address(msg.sender)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 <= 15:
        idx = 0
        while idx < userDownlineCount[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 5)
            if userDownlineCount[address(msg.sender)].field_256 < userDownlineCount[address(msg.sender)][idx].field_1280:
                require idx < userDownlineCount[address(msg.sender)].field_0
                require idx < userDownlineCount[address(msg.sender)].field_0
                if userDownlineCount[address(msg.sender)][idx].field_0 >= 3:
                    mem[0] = sha3(address(msg.sender), 5)
                    if block.timestamp > userDownlineCount[address(msg.sender)][idx].field_1280:
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 5)
                        if userDownlineCount[address(msg.sender)][idx].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDownlineCount[address(msg.sender)][idx].field_256 + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600) < userDownlineCount[address(msg.sender)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(msg.sender)].field_0
                    if not userDownlineCount[address(msg.sender)][idx].field_512:
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 5)
                        if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)].field_256:
                            if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(msg.sender)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(msg.sender)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 5)
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
                                mem[0] = sha3(address(msg.sender), 5)
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
                        mem[0] = sha3(address(msg.sender), 5)
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
                                        if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 5)
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
                                        if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
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
                                        if (block.timestamp * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 5)
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
                                        if (userDownlineCount[address(msg.sender)][idx].field_1280 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) + (block.timestamp - userDownlineCount[address(msg.sender)].field_512 / 24 * 3600 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < userDownlineCount[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 5)
            if userDownlineCount[address(msg.sender)].field_256 < userDownlineCount[address(msg.sender)][idx].field_1280:
                require idx < userDownlineCount[address(msg.sender)].field_0
                require idx < userDownlineCount[address(msg.sender)].field_0
                if userDownlineCount[address(msg.sender)][idx].field_0 >= 3:
                    mem[0] = sha3(address(msg.sender), 5)
                    if block.timestamp > userDownlineCount[address(msg.sender)][idx].field_1280:
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 5)
                        if userDownlineCount[address(msg.sender)][idx].field_768 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    if userDownlineCount[address(msg.sender)][idx].field_256 + 15 < userDownlineCount[address(msg.sender)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < userDownlineCount[address(msg.sender)].field_0
                    if not userDownlineCount[address(msg.sender)][idx].field_512:
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        require idx < userDownlineCount[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 5)
                        if userDownlineCount[address(msg.sender)][idx].field_1024 > userDownlineCount[address(msg.sender)].field_256:
                            if userDownlineCount[address(msg.sender)][idx].field_1280 >= block.timestamp:
                                if userDownlineCount[address(msg.sender)][idx].field_1024 < block.timestamp:
                                    if userDownlineCount[address(msg.sender)][idx].field_1024 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 5)
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
                                mem[0] = sha3(address(msg.sender), 5)
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
                        mem[0] = sha3(address(msg.sender), 5)
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
                                        if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 5)
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
                                        if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)][idx].field_1024 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
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
                                        if (block.timestamp * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                            else:
                                require idx < userDownlineCount[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 5)
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
                                        if (userDownlineCount[address(msg.sender)][idx].field_1280 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) - (userDownlineCount[address(msg.sender)].field_256 * (15 * userDownlineCount[address(msg.sender)][idx].field_512) + (userDownlineCount[address(msg.sender)][idx].field_256 * userDownlineCount[address(msg.sender)][idx].field_512) / 1000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            continue 
    if userDownlineCount[address(msg.sender)].field_1792 <= 0:
        revert with 0, 'User has no dividends'
    if userDownlineCount[address(msg.sender)].field_1792 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if userDownlineCount[address(msg.sender)].field_1792 <= 0:
        revert with 0, 'User has no dividends'
    userDownlineCount[address(msg.sender)].field_256 = block.timestamp
    userDownlineCount[address(msg.sender)].field_512 = block.timestamp
    userDownlineCount[address(msg.sender)].field_1792 = 0
    if eth.balance(this.address) >= userDownlineCount[address(msg.sender)].field_1792:
        if userDownlineCount[address(msg.sender)].field_1536 + userDownlineCount[address(msg.sender)].field_1792 < userDownlineCount[address(msg.sender)].field_1536:
            revert with 0, 'SafeMath: addition overflow'
        userDownlineCount[address(msg.sender)].field_1536 += userDownlineCount[address(msg.sender)].field_1792
        call msg.sender with:
           value userDownlineCount[address(msg.sender)].field_1792 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(userDownlineCount[address(msg.sender)].field_1792, msg.sender);
    else:
        if userDownlineCount[address(msg.sender)].field_1536 + eth.balance(this.address) < userDownlineCount[address(msg.sender)].field_1536:
            revert with 0, 'SafeMath: addition overflow'
        userDownlineCount[address(msg.sender)].field_1536 += eth.balance(this.address)
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(eth.balance(this.address), msg.sender);
}



}
