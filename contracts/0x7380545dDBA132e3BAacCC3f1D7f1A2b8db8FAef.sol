contract main {




// =====================  Runtime code  =====================


#
#  - getUserDividends(address arg1)
#  - getUserAvailable(address arg1)
#  - reinvest(uint8 arg1)
#  - invest(address arg1, uint8 arg2)
#  - withdraw(uint8 arg1)
#  - sub_d179744f(?)
#
const sub_1573b577(?) = 200

const sub_36796b5c(?) = 500

const sub_44767308(?) = 200

const getContractBalance = eth.balance(this.address)

const sub_92b45ae3(?) = 100

const sub_9af88c2e(?) = 33 * 10^18

const sub_a09e079d(?) = 3500

const sub_b294dd5e(?) = 3000

const sub_bd2cc636(?) = 200

const PERCENTS_DIVIDER = 10000

const REINVEST_PERCENT = 1000

const DEV_FEE = 500

const PERCENT_STEP = 2

const MAX_AMOUNT = 100 * 10^18

const MIN_AMOUNT = 10^17


address sub_e9719dd7Address;
address sub_dc1bebefAddress;
address MARKETING_WALLETAddress;
address sub_538c6a75Address;
address DEV_WALLETAddress;
address DEPLOYERAddress;
array of uint256 rEFERRAL_PERCENTS;
uint256 TIME_STEP;
uint256 startTime;
uint256 totalStaked;
uint256 totalWithdrawn;
uint256 totalRefBonus;
uint256 sub_61503777;
uint256 totalUsers;
uint8 launched;
array of struct planInfo;
mapping of struct userDepositInfo;
mapping of uint256 sub_77478514;

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_1024, 
           userDepositInfo[address(arg1)].field_1280,
           userDepositInfo[address(arg1)].field_1536
}

function DEV_WALLET() {
    return DEV_WALLETAddress
}

function TIME_STEP() {
    return TIME_STEP
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_768
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_2304
}

function totalWithdrawn() {
    return totalWithdrawn
}

function sub_538c6a75(?) {
    return sub_538c6a75Address
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 3
    return rEFERRAL_PERCENTS[arg1]
}

function sub_61503777(?) {
    return sub_61503777
}

function totalRefBonus() {
    return totalRefBonus
}

function sub_77478514(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_77478514[arg1]
}

function startTime() {
    return startTime
}

function launched() {
    return bool(launched)
}

function totalStaked() {
    return totalStaked
}

function getUserAmountOfDeposits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_0
}

function getPlanInfo(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    return planInfo[2 * uint8(arg1)].field_0, planInfo[2 * uint8(arg1)].field_256
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
    return userDepositInfo[address(arg1)][arg2].field_0, 
           userDepositInfo[address(arg1)][arg2].field_256,
           userDepositInfo[address(arg1)][arg2].field_512,
           userDepositInfo[address(arg1)][arg2].field_768,
           userDepositInfo[address(arg1)][arg2].field_1024,
           userDepositInfo[address(arg1)][arg2].field_1280
}

function DEPLOYER() {
    return DEPLOYERAddress
}

function MARKETING_WALLET() {
    return MARKETING_WALLETAddress
}

function sub_d5b2425a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return userDepositInfo[address(arg1)].field_256
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_512
}

function sub_dc1bebef(?) {
    return sub_dc1bebefAddress
}

function getUserDebt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_2048
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_1792
}

function sub_e9719dd7(?) {
    return sub_e9719dd7Address
}

function getUserTotalWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_2560
}

function _fallback() payable {
    revert
}

function sub_39ce57d1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= 100:
        return 100
    return arg1
}

function launch() {
    if DEPLOYERAddress != msg.sender:
        revert with 0, 'NOT AN OWNER'
    launched = 1
    startTime = block.timestamp
}

function changeDev(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if DEPLOYERAddress != msg.sender:
        revert with 0, 'NOT AN OWNER'
    DEV_WALLETAddress = arg1
}

function changeDeployer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if DEPLOYERAddress != msg.sender:
        revert with 0, 'NOT AN OWNER'
    DEPLOYERAddress = arg1
}

function sub_08dae1e9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if DEPLOYERAddress != msg.sender:
        revert with 0, 'NOT AN OWNER'
    sub_538c6a75Address = address(arg1)
}

function changeMarketing(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if DEPLOYERAddress != msg.sender:
        revert with 0, 'NOT AN OWNER'
    MARKETING_WALLETAddress = arg1
}

function sub_7fac9e46(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if arg2 >= userDepositInfo[address(arg1)].field_0:
        revert with 'NH{q', 50
    return (userDepositInfo[address(arg1)][arg2].field_1280 > userDepositInfo[address(arg1)].field_256)
}

function sub_ccdafb2e(?) {
    staticcall sub_dc1bebefAddress.0x12065fe0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userDepositInfo[address(arg1)].field_1792 > userDepositInfo[address(arg1)].field_2304:
        revert with 0, 'SafeMath: subtraction overflow'
    if userDepositInfo[address(arg1)].field_2304 < userDepositInfo[address(arg1)].field_1792:
        revert with 'NH{q', 17
    return (userDepositInfo[address(arg1)].field_2304 - userDepositInfo[address(arg1)].field_1792)
}

function sub_cc35aca3(?) {
    staticcall sub_e9719dd7Address.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function sub_b8f54a1d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userDepositInfo[address(arg1)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < userDepositInfo[address(arg1)].field_512:
        revert with 'NH{q', 17
    if TIME_STEP <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not TIME_STEP:
        revert with 'NH{q', 18
    if block.timestamp - userDepositInfo[address(arg1)].field_512 / TIME_STEP > 200:
        return 4000
    if not block.timestamp - userDepositInfo[address(arg1)].field_512 / TIME_STEP:
        return 0
    if block.timestamp - userDepositInfo[address(arg1)].field_512 / TIME_STEP and 20 > -1 / block.timestamp - userDepositInfo[address(arg1)].field_512 / TIME_STEP:
        revert with 'NH{q', 17
    if not block.timestamp - userDepositInfo[address(arg1)].field_512 / TIME_STEP:
        revert with 'NH{q', 18
    if 20 * block.timestamp - userDepositInfo[address(arg1)].field_512 / TIME_STEP / block.timestamp - userDepositInfo[address(arg1)].field_512 / TIME_STEP != 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (20 * block.timestamp - userDepositInfo[address(arg1)].field_512 / TIME_STEP)
}

function getPercent(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp <= startTime:
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        return planInfo[2 * uint8(arg1)].field_256
    if startTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if block.timestamp - startTime > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if uint255(block.timestamp - startTime) != block.timestamp - startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if TIME_STEP <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not TIME_STEP:
        revert with 'NH{q', 18
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    if planInfo[2 * uint8(arg1)].field_256 > -(2 * block.timestamp - startTime / TIME_STEP) - 1:
        revert with 'NH{q', 17
    if planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP) < planInfo[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP))
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
        mem[32] = 18
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_512
        continue 
    return (s * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0)
}

function sub_5c4f76fa(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only can snooze between 1 to 7 days'
    if arg2 >= 8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only can snooze between 1 to 7 days'
    if arg1 >= userDepositInfo[address(msg.sender)].field_0:
        revert with 0, 'Deposit at index does not exist'
    if userDepositInfo[address(msg.sender)].field_256 >= userDepositInfo[address(msg.sender)][arg1].field_1280:
        revert with 0, 'Deposit term already paid out.'
    if arg1 >= userDepositInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if block.timestamp <= userDepositInfo[address(msg.sender)][arg1].field_1280:
        revert with 0, 'Deposit term is not completed.'
    if arg1 >= userDepositInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if block.timestamp <= startTime:
        if userDepositInfo[address(msg.sender)][arg1].field_0 >= planInfo.length:
            revert with 'NH{q', 50
        if arg1 >= userDepositInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        idx = 0
        while idx < arg2:
            if userDepositInfo[address(msg.sender)][arg1].field_768 > -1:
                revert with 'NH{q', 17
            if userDepositInfo[address(msg.sender)][arg1].field_768 < userDepositInfo[address(msg.sender)][arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if userDepositInfo[address(msg.sender)][arg1].field_768:
                if userDepositInfo[address(msg.sender)][arg1].field_768 and planInfo[stor18[address(msg.sender)][arg1].field_0].field_256 > -1 / userDepositInfo[address(msg.sender)][arg1].field_768:
                    revert with 'NH{q', 17
                if not userDepositInfo[address(msg.sender)][arg1].field_768:
                    revert with 'NH{q', 18
                if userDepositInfo[address(msg.sender)][arg1].field_768 * planInfo[stor18[address(msg.sender)][arg1].field_0].field_256 / userDepositInfo[address(msg.sender)][arg1].field_768 != planInfo[stor18[address(msg.sender)][arg1].field_0].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if 0 > -(userDepositInfo[address(msg.sender)][arg1].field_768 * planInfo[stor18[address(msg.sender)][arg1].field_0].field_256 / 10000) - 1:
                    revert with 'NH{q', 17
                if userDepositInfo[address(msg.sender)][arg1].field_768 * planInfo[stor18[address(msg.sender)][arg1].field_0].field_256 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if startTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp < startTime:
            revert with 'NH{q', 17
        if block.timestamp - startTime > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if uint255(block.timestamp - startTime) != block.timestamp - startTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if TIME_STEP <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not TIME_STEP:
            revert with 'NH{q', 18
        if userDepositInfo[address(msg.sender)][arg1].field_0 >= planInfo.length:
            revert with 'NH{q', 50
        if planInfo[stor18[address(msg.sender)][arg1].field_0].field_256 > -(2 * block.timestamp - startTime / TIME_STEP) - 1:
            revert with 'NH{q', 17
        if planInfo[stor18[address(msg.sender)][arg1].field_0].field_256 + (2 * block.timestamp - startTime / TIME_STEP) < planInfo[stor18[address(msg.sender)][arg1].field_0].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 >= userDepositInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        idx = 0
        while idx < arg2:
            if userDepositInfo[address(msg.sender)][arg1].field_768 > -1:
                revert with 'NH{q', 17
            if userDepositInfo[address(msg.sender)][arg1].field_768 < userDepositInfo[address(msg.sender)][arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if userDepositInfo[address(msg.sender)][arg1].field_768:
                if userDepositInfo[address(msg.sender)][arg1].field_768 and planInfo[stor18[address(msg.sender)][arg1].field_0].field_256 + (2 * block.timestamp - startTime / TIME_STEP) > -1 / userDepositInfo[address(msg.sender)][arg1].field_768:
                    revert with 'NH{q', 17
                if not userDepositInfo[address(msg.sender)][arg1].field_768:
                    revert with 'NH{q', 18
                if (planInfo[stor18[address(msg.sender)][arg1].field_0].field_256 * userDepositInfo[address(msg.sender)][arg1].field_768) + (2 * block.timestamp - startTime / TIME_STEP * userDepositInfo[address(msg.sender)][arg1].field_768) / userDepositInfo[address(msg.sender)][arg1].field_768 != planInfo[stor18[address(msg.sender)][arg1].field_0].field_256 + (2 * block.timestamp - startTime / TIME_STEP):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if 0 > -((planInfo[stor18[address(msg.sender)][arg1].field_0].field_256 * userDepositInfo[address(msg.sender)][arg1].field_768) + (2 * block.timestamp - startTime / TIME_STEP * userDepositInfo[address(msg.sender)][arg1].field_768) / 10000) - 1:
                    revert with 'NH{q', 17
                if (planInfo[stor18[address(msg.sender)][arg1].field_0].field_256 * userDepositInfo[address(msg.sender)][arg1].field_768) + (2 * block.timestamp - startTime / TIME_STEP * userDepositInfo[address(msg.sender)][arg1].field_768) / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if arg1 >= userDepositInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if userDepositInfo[address(msg.sender)][arg1].field_768 > -1:
        revert with 'NH{q', 17
    if userDepositInfo[address(msg.sender)][arg1].field_768 < userDepositInfo[address(msg.sender)][arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 >= userDepositInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if not arg2:
        if block.timestamp > -1:
            revert with 'NH{q', 17
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 >= userDepositInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        userDepositInfo[address(msg.sender)][arg1].field_1280 = block.timestamp
    else:
        if arg2 and TIME_STEP > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if arg2 * TIME_STEP / arg2 != TIME_STEP:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp > (-1 * arg2 * TIME_STEP) - 1:
            revert with 'NH{q', 17
        if block.timestamp + (arg2 * TIME_STEP) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 >= userDepositInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        userDepositInfo[address(msg.sender)][arg1].field_1280 = block.timestamp + (arg2 * TIME_STEP)
}

function emergencyWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= userDepositInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if userDepositInfo[address(msg.sender)][arg1].field_0 <= 2:
        revert with 0, 'only for locked packages'
    if userDepositInfo[address(msg.sender)][arg1].field_0 >= 6:
        revert with 0, 'only for locked packages'
    if arg1 >= userDepositInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if userDepositInfo[address(msg.sender)][arg1].field_1280 <= userDepositInfo[address(msg.sender)].field_256:
        revert with 0, 'deposit not active'
    if arg1 >= userDepositInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if userDepositInfo[address(msg.sender)][arg1].field_512 and 3500 > -1 / userDepositInfo[address(msg.sender)][arg1].field_512:
        revert with 'NH{q', 17
    if not Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000):
        if not Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000):
            if not Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000):
                call MARKETING_WALLETAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call sub_538c6a75Address with:
                     gas 2300 wei
                call DEV_WALLETAddress with:
                     gas 2300 wei
            else:
                if Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) and 2857 > -1 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
                    revert with 'NH{q', 17
                if not 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
                    revert with 'NH{q', 18
                if 2857 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 != 2857:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                call MARKETING_WALLETAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call sub_538c6a75Address with:
                     gas 2300 wei
                call DEV_WALLETAddress with:
                   value 2857 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 10000 wei
                     gas 2300 * is_zero(value) wei
        else:
            if Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) and 1142 > -1 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
                revert with 'NH{q', 17
            if not 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
                revert with 'NH{q', 18
            if 1142 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 != 1142:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000):
                call MARKETING_WALLETAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call sub_538c6a75Address with:
                   value 1142 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 10000 wei
                     gas 2300 * is_zero(value) wei
                call DEV_WALLETAddress with:
                     gas 2300 wei
            else:
                if Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) and 2857 > -1 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
                    revert with 'NH{q', 17
                if not 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
                    revert with 'NH{q', 18
                if 2857 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 != 2857:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                call MARKETING_WALLETAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call sub_538c6a75Address with:
                   value 1142 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 10000 wei
                     gas 2300 * is_zero(value) wei
                call DEV_WALLETAddress with:
                   value 2857 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 10000 wei
                     gas 2300 * is_zero(value) wei
    else:
        if Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) and 2857 > -1 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
            revert with 'NH{q', 17
        if not 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
            revert with 'NH{q', 18
        if 2857 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 != 2857:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000):
            if not Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000):
                call MARKETING_WALLETAddress with:
                   value 2857 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call sub_538c6a75Address with:
                     gas 2300 wei
                call DEV_WALLETAddress with:
                     gas 2300 wei
            else:
                if Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) and 2857 > -1 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
                    revert with 'NH{q', 17
                if not 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
                    revert with 'NH{q', 18
                if 2857 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 != 2857:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                call MARKETING_WALLETAddress with:
                   value 2857 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call sub_538c6a75Address with:
                     gas 2300 wei
                call DEV_WALLETAddress with:
                   value 2857 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 10000 wei
                     gas 2300 * is_zero(value) wei
        else:
            if Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) and 1142 > -1 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
                revert with 'NH{q', 17
            if not 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
                revert with 'NH{q', 18
            if 1142 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 != 1142:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000):
                call MARKETING_WALLETAddress with:
                   value 2857 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call sub_538c6a75Address with:
                   value 1142 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 10000 wei
                     gas 2300 * is_zero(value) wei
                call DEV_WALLETAddress with:
                     gas 2300 wei
            else:
                if Mask(255, 1, 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) and 2857 > -1 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
                    revert with 'NH{q', 17
                if not 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2:
                    revert with 'NH{q', 18
                if 2857 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 != 2857:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                call MARKETING_WALLETAddress with:
                   value 2857 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call sub_538c6a75Address with:
                   value 1142 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 10000 wei
                     gas 2300 * is_zero(value) wei
                call DEV_WALLETAddress with:
                   value 2857 * 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 / 10000 wei
                     gas 2300 * is_zero(value) wei
    call sub_dc1bebefAddress with:
       value 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000 / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    userDepositInfo[address(msg.sender)].field_256 = block.timestamp
    if userDepositInfo[address(msg.sender)][arg1].field_512 < 3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000:
        revert with 'NH{q', 17
    if userDepositInfo[address(msg.sender)][arg1].field_512 - (3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) <= eth.balance(this.address):
        if userDepositInfo[address(msg.sender)].field_2560 > -userDepositInfo[address(msg.sender)][arg1].field_512 + (3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) - 1:
            revert with 'NH{q', 17
        userDepositInfo[address(msg.sender)].field_2560 = userDepositInfo[address(msg.sender)].field_2560 + userDepositInfo[address(msg.sender)][arg1].field_512 - (3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000)
        if arg1 >= userDepositInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        userDepositInfo[address(msg.sender)][arg1].field_1280 = block.timestamp
        if totalWithdrawn > -userDepositInfo[address(msg.sender)][arg1].field_512 + (3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) - 1:
            revert with 'NH{q', 17
        totalWithdrawn = totalWithdrawn + userDepositInfo[address(msg.sender)][arg1].field_512 - (3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000)
        call msg.sender with:
           value userDepositInfo[address(msg.sender)][arg1].field_512 - (3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn((userDepositInfo[address(msg.sender)][arg1].field_512 - (3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000)), msg.sender);
    else:
        if eth.balance(this.address) > userDepositInfo[address(msg.sender)][arg1].field_512 - (3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000):
            revert with 0, 'SafeMath: subtraction overflow'
        if userDepositInfo[address(msg.sender)][arg1].field_512 - (3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) < eth.balance(this.address):
            revert with 'NH{q', 17
        if userDepositInfo[address(msg.sender)].field_2048 > -userDepositInfo[address(msg.sender)][arg1].field_512 + (3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) + eth.balance(this.address) - 1:
            revert with 'NH{q', 17
        if userDepositInfo[address(msg.sender)].field_2048 + userDepositInfo[address(msg.sender)][arg1].field_512 - (3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) - eth.balance(this.address) < userDepositInfo[address(msg.sender)].field_2048:
            revert with 0, 'SafeMath: addition overflow'
        userDepositInfo[address(msg.sender)].field_2048 = userDepositInfo[address(msg.sender)].field_2048 + userDepositInfo[address(msg.sender)][arg1].field_512 - (3500 * userDepositInfo[address(msg.sender)][arg1].field_512 / 10000) - eth.balance(this.address)
        if userDepositInfo[address(msg.sender)].field_2560 > -eth.balance(this.address) - 1:
            revert with 'NH{q', 17
        userDepositInfo[address(msg.sender)].field_2560 += eth.balance(this.address)
        if arg1 >= userDepositInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        userDepositInfo[address(msg.sender)][arg1].field_1280 = block.timestamp
        if totalWithdrawn > -eth.balance(this.address) - 1:
            revert with 'NH{q', 17
        totalWithdrawn += eth.balance(this.address)
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
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp <= startTime:
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if arg1 < 3:
            if not arg2:
                if arg1 >= planInfo.length:
                    revert with 'NH{q', 50
                if not planInfo[2 * uint8(arg1)].field_0:
                    if block.timestamp > -1:
                        revert with 'NH{q', 17
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp
                if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
                    revert with 'NH{q', 17
                if not planInfo[2 * uint8(arg1)].field_0:
                    revert with 'NH{q', 18
                if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
            if arg2 and planInfo[2 * uint8(arg1)].field_256 > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if arg2 * planInfo[2 * uint8(arg1)].field_256 / arg2 != planInfo[2 * uint8(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not arg2 * planInfo[2 * uint8(arg1)].field_256:
                if arg1 >= planInfo.length:
                    revert with 'NH{q', 50
                if not planInfo[2 * uint8(arg1)].field_0:
                    if block.timestamp > -1:
                        revert with 'NH{q', 17
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp
                if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
                    revert with 'NH{q', 17
                if not planInfo[2 * uint8(arg1)].field_0:
                    revert with 'NH{q', 18
                if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
                    revert with 'NH{q', 17
                if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
            if arg2 * planInfo[2 * uint8(arg1)].field_256 and planInfo[2 * uint8(arg1)].field_0 > -1 / arg2 * planInfo[2 * uint8(arg1)].field_256:
                revert with 'NH{q', 17
            if not arg2 * planInfo[2 * uint8(arg1)].field_256:
                revert with 'NH{q', 18
            if arg2 * planInfo[2 * uint8(arg1)].field_256 * planInfo[2 * uint8(arg1)].field_0 / arg2 * planInfo[2 * uint8(arg1)].field_256 != planInfo[2 * uint8(arg1)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if not planInfo[2 * uint8(arg1)].field_0:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256, 
                       arg2 * planInfo[2 * uint8(arg1)].field_256 * planInfo[2 * uint8(arg1)].field_0 / 10000,
                       block.timestamp
            if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if not planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 18
            if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
                revert with 'NH{q', 17
            if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256, 
                   arg2 * planInfo[2 * uint8(arg1)].field_256 * planInfo[2 * uint8(arg1)].field_0 / 10000,
                   block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
        if arg1 >= 6:
            if not planInfo[2 * uint8(arg1)].field_0:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp
            if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if not planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 18
            if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
                revert with 'NH{q', 17
            if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
        if var72003 >= planInfo[2 * uint8(arg1)].field_0:
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if not planInfo[2 * uint8(arg1)].field_0:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp
            if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if not planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 18
            if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
                revert with 'NH{q', 17
            if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
        if arg2 > -1:
            revert with 'NH{q', 17
        if arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not arg2:
            if var94007 == -1:
                revert with 'NH{q', 17
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            mem[0] = 17
            if var94007 + 1 < planInfo[2 * uint8(arg1)].field_0:
                if arg2 > -1:
                    revert with 'NH{q', 17
                if arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                var94007 = var94007 + 1
                continue 
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if not planInfo[2 * uint8(arg1)].field_0:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp
            if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if not planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 18
            if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
                revert with 'NH{q', 17
            if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
        if arg2 and planInfo[2 * uint8(arg1)].field_256 > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if arg2 * planInfo[2 * uint8(arg1)].field_256 / arg2 != planInfo[2 * uint8(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 0 > -(arg2 * planInfo[2 * uint8(arg1)].field_256 / 10000) - 1:
            revert with 'NH{q', 17
        if arg2 * planInfo[2 * uint8(arg1)].field_256 / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if var94007 == -1:
            revert with 'NH{q', 17
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        mem[0] = 17
        if var94007 + 1 < planInfo[2 * uint8(arg1)].field_0:
            if arg2 > -(arg2 * planInfo[2 * uint8(arg1)].field_256 / 10000) - 1:
                revert with 'NH{q', 17
            if arg2 + (arg2 * planInfo[2 * uint8(arg1)].field_256 / 10000) < arg2:
                revert with 0, 'SafeMath: addition overflow'
            var94007 = var94007 + 1
            continue 
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256, arg2 * planInfo[2 * uint8(arg1)].field_256 / 10000, block.timestamp
        if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if not planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 18
        if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
            revert with 'NH{q', 17
        if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256, 
               arg2 * planInfo[2 * uint8(arg1)].field_256 / 10000,
               block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
    if startTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if block.timestamp - startTime > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if uint255(block.timestamp - startTime) != block.timestamp - startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if TIME_STEP <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not TIME_STEP:
        revert with 'NH{q', 18
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    if planInfo[2 * uint8(arg1)].field_256 > -(2 * block.timestamp - startTime / TIME_STEP) - 1:
        revert with 'NH{q', 17
    if planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP) < planInfo[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    if arg1 < 3:
        if not arg2:
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if not planInfo[2 * uint8(arg1)].field_0:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 0, block.timestamp
            if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if not planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 18
            if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
                revert with 'NH{q', 17
            if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 
                   0,
                   block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
        if arg2 and planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP) > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if (planInfo[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - startTime / TIME_STEP * arg2) / arg2 != planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (planInfo[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - startTime / TIME_STEP * arg2):
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if not planInfo[2 * uint8(arg1)].field_0:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 0, block.timestamp
            if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if not planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 18
            if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
                revert with 'NH{q', 17
            if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 
                   0,
                   block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
        if (planInfo[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - startTime / TIME_STEP * arg2) and planInfo[2 * uint8(arg1)].field_0 > -1 / (planInfo[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - startTime / TIME_STEP * arg2):
            revert with 'NH{q', 17
        if not (planInfo[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - startTime / TIME_STEP * arg2):
            revert with 'NH{q', 18
        if (planInfo[2 * uint8(arg1)].field_256 * arg2 * planInfo[2 * uint8(arg1)].field_0) + (2 * block.timestamp - startTime / TIME_STEP * arg2 * planInfo[2 * uint8(arg1)].field_0) / (planInfo[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - startTime / TIME_STEP * arg2) != planInfo[2 * uint8(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 
                   (planInfo[2 * uint8(arg1)].field_256 * arg2 * planInfo[2 * uint8(arg1)].field_0) + (2 * block.timestamp - startTime / TIME_STEP * arg2 * planInfo[2 * uint8(arg1)].field_0) / 10000,
                   block.timestamp
        if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if not planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 18
        if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
            revert with 'NH{q', 17
        if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 
               (planInfo[2 * uint8(arg1)].field_256 * arg2 * planInfo[2 * uint8(arg1)].field_0) + (2 * block.timestamp - startTime / TIME_STEP * arg2 * planInfo[2 * uint8(arg1)].field_0) / 10000,
               block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
    if arg1 >= 6:
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 0, block.timestamp
        if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if not planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 18
        if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
            revert with 'NH{q', 17
        if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 
               0,
               block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
    if var121003 >= planInfo[2 * uint8(arg1)].field_0:
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 0, block.timestamp
        if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if not planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 18
        if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
            revert with 'NH{q', 17
        if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 
               0,
               block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
    if arg2 > -1:
        revert with 'NH{q', 17
    if arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if not arg2:
        if var143007 == -1:
            revert with 'NH{q', 17
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        mem[0] = 17
        if var143007 + 1 < planInfo[2 * uint8(arg1)].field_0:
            if arg2 > -1:
                revert with 'NH{q', 17
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            var143007 = var143007 + 1
            continue 
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 0, block.timestamp
        if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if not planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 18
        if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
            revert with 'NH{q', 17
        if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 
               0,
               block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
    if arg2 and planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP) > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if (planInfo[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - startTime / TIME_STEP * arg2) / arg2 != planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if 0 > -((planInfo[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - startTime / TIME_STEP * arg2) / 10000) - 1:
        revert with 'NH{q', 17
    if (planInfo[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - startTime / TIME_STEP * arg2) / 10000 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if var143007 == -1:
        revert with 'NH{q', 17
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    mem[0] = 17
    if var143007 + 1 < planInfo[2 * uint8(arg1)].field_0:
        if arg2 > -((planInfo[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - startTime / TIME_STEP * arg2) / 10000) - 1:
            revert with 'NH{q', 17
        if arg2 + ((planInfo[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - startTime / TIME_STEP * arg2) / 10000) < arg2:
            revert with 0, 'SafeMath: addition overflow'
        var143007 = var143007 + 1
        continue 
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    if not planInfo[2 * uint8(arg1)].field_0:
        if block.timestamp > -1:
            revert with 'NH{q', 17
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 
               (planInfo[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - startTime / TIME_STEP * arg2) / 10000,
               block.timestamp
    if planInfo[2 * uint8(arg1)].field_0 and TIME_STEP > -1 / planInfo[2 * uint8(arg1)].field_0:
        revert with 'NH{q', 17
    if not planInfo[2 * uint8(arg1)].field_0:
        revert with 'NH{q', 18
    if planInfo[2 * uint8(arg1)].field_0 * TIME_STEP / planInfo[2 * uint8(arg1)].field_0 != TIME_STEP:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if block.timestamp > (-1 * planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) - 1:
        revert with 'NH{q', 17
    if block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    return planInfo[2 * uint8(arg1)].field_256 + (2 * block.timestamp - startTime / TIME_STEP), 
           (planInfo[2 * uint8(arg1)].field_256 * arg2) + (2 * block.timestamp - startTime / TIME_STEP * arg2) / 10000,
           block.timestamp + (planInfo[2 * uint8(arg1)].field_0 * TIME_STEP)
}



}
