contract main {




// =====================  Runtime code  =====================


#
#  - invest(address arg1, uint8 arg2)
#
const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const PROJECT_FEE = 100

const PERCENT_STEP = 5

const WITHDRAW_FEE = 1000

const INVEST_MIN_AMOUNT = 10^17


address stor0;
array of uint256 rEFERRAL_PERCENTS;
uint256 totalStaked;
uint256 totalRefBonus;
array of struct planInfo;
mapping of struct userDepositInfo;
uint256 startUNIX;
address commissionWalletAddress;
address insuranceWalletAddress;

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_768, 
           userDepositInfo[address(arg1)].field_1024,
           userDepositInfo[address(arg1)].field_1280
}

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            if userDepositInfo[address(arg1)][idx].field_0 >= 3:
                mem[0] = sha3(address(arg1), 5)
                if block.timestamp > userDepositInfo[address(arg1)][idx].field_1280:
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 5)
                    if 0 > -userDepositInfo[address(arg1)][idx].field_768 - 1:
                        revert with 'NH{q', 17
                    if userDepositInfo[address(arg1)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(arg1)][idx].field_512:
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 5)
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
                            mem[0] = sha3(address(arg1), 5)
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
                            mem[0] = sha3(address(arg1), 5)
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
                    mem[0] = sha3(address(arg1), 5)
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
                            mem[0] = sha3(address(arg1), 5)
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
                            mem[0] = sha3(address(arg1), 5)
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
    if userDepositInfo[address(arg1)].field_1536 > -1:
        revert with 'NH{q', 17
    if userDepositInfo[address(arg1)].field_1536 < userDepositInfo[address(arg1)].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    return userDepositInfo[address(arg1)].field_1536
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_512
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_1792
}

function insuranceWallet() {
    return insuranceWalletAddress
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function startUNIX() {
    return startUNIX
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_256
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_1536
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == stor0)
}

function setInsuranceWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function accessible only by the owner !!'
    if not arg1:
        revert with 0, 'invalid address'
    insuranceWalletAddress = arg1
}

function setCommissionWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function accessible only by the owner !!'
    if not arg1:
        revert with 0, 'invalid address'
    commissionWalletAddress = arg1
}

function sub_1f764f46(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function accessible only by the owner !!'
    if block.timestamp >= startUNIX:
        revert with 0, 'contract has started'
    if arg1 <= block.timestamp:
        revert with 0, 'Invalid startDate'
    startUNIX = arg1
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

function getPercent(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp <= startUNIX:
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        return planInfo[2 * uint8(arg1)].field_256
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < startUNIX:
        revert with 'NH{q', 17
    if block.timestamp - startUNIX > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 'NH{q', 17
    if (5 * block.timestamp) - (5 * startUNIX) / 5 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    if planInfo[2 * uint8(arg1)].field_256 > -((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) - 1:
        revert with 'NH{q', 17
    if planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) < planInfo[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600))
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
        mem[32] = 5
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_512
        continue 
    return (s * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0)
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        if userDepositInfo[address(arg1)].field_256 < userDepositInfo[address(arg1)][idx].field_1280:
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            if userDepositInfo[address(arg1)][idx].field_0 >= 3:
                mem[0] = sha3(address(arg1), 5)
                if block.timestamp > userDepositInfo[address(arg1)][idx].field_1280:
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 5)
                    if 0 > -userDepositInfo[address(arg1)][idx].field_768 - 1:
                        revert with 'NH{q', 17
                    if userDepositInfo[address(arg1)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(arg1)][idx].field_512:
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    if idx >= userDepositInfo[address(arg1)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(arg1), 5)
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
                            mem[0] = sha3(address(arg1), 5)
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
                            mem[0] = sha3(address(arg1), 5)
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
                    mem[0] = sha3(address(arg1), 5)
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
                            mem[0] = sha3(address(arg1), 5)
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
                            mem[0] = sha3(address(arg1), 5)
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

function withdraw() {
    idx = 0
    while idx < userDepositInfo[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 5)
        if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1280:
            if idx >= userDepositInfo[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if idx >= userDepositInfo[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if userDepositInfo[address(msg.sender)][idx].field_0 >= 3:
                mem[0] = sha3(address(msg.sender), 5)
                if block.timestamp > userDepositInfo[address(msg.sender)][idx].field_1280:
                    if idx >= userDepositInfo[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 5)
                    if 0 > -userDepositInfo[address(msg.sender)][idx].field_768 - 1:
                        revert with 'NH{q', 17
                    if userDepositInfo[address(msg.sender)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(msg.sender)][idx].field_512:
                    if idx >= userDepositInfo[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    if idx >= userDepositInfo[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 5)
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
                            mem[0] = sha3(address(msg.sender), 5)
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
                            mem[0] = sha3(address(msg.sender), 5)
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
                    mem[0] = sha3(address(msg.sender), 5)
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
                            mem[0] = sha3(address(msg.sender), 5)
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
                            mem[0] = sha3(address(msg.sender), 5)
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
    if userDepositInfo[address(msg.sender)].field_1536 <= 0:
        if eth.balance(this.address) >= 0:
            revert with 0, 'User has no dividends'
        if not eth.balance(this.address):
            if 0 > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 'NH{q', 17
            if eth.balance(this.address) <= 0:
                revert with 0, 'User has no dividends'
            userDepositInfo[address(msg.sender)].field_256 = block.timestamp
            call insuranceWalletAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            emit Withdrawn(eth.balance(this.address), msg.sender);
        else:
            if eth.balance(this.address) and 1000 > -1 / eth.balance(this.address):
                revert with 'NH{q', 17
            if not eth.balance(this.address):
                revert with 'NH{q', 18
            if 1000 * eth.balance(this.address) / eth.balance(this.address) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if 1000 * eth.balance(this.address) / 10000 > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 1000 * eth.balance(this.address) / 10000:
                revert with 'NH{q', 17
            if eth.balance(this.address) - (1000 * eth.balance(this.address) / 10000) <= 0:
                revert with 0, 'User has no dividends'
            userDepositInfo[address(msg.sender)].field_256 = block.timestamp
            call insuranceWalletAddress with:
               value 1000 * eth.balance(this.address) / 10000 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value eth.balance(this.address) - (1000 * eth.balance(this.address) / 10000) wei
                 gas 2300 * is_zero(value) wei
            emit Withdrawn((eth.balance(this.address) - (1000 * eth.balance(this.address) / 10000)), msg.sender);
    else:
        userDepositInfo[address(msg.sender)].field_1536 = 0
        if 0 > -userDepositInfo[address(msg.sender)].field_1536 - 1:
            revert with 'NH{q', 17
        if userDepositInfo[address(msg.sender)].field_1536 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) >= userDepositInfo[address(msg.sender)].field_1536:
            if not userDepositInfo[address(msg.sender)].field_1536:
                if 0 > userDepositInfo[address(msg.sender)].field_1536:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userDepositInfo[address(msg.sender)].field_1536 < 0:
                    revert with 'NH{q', 17
                if userDepositInfo[address(msg.sender)].field_1536 <= 0:
                    revert with 0, 'User has no dividends'
                userDepositInfo[address(msg.sender)].field_256 = block.timestamp
                call insuranceWalletAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value userDepositInfo[address(msg.sender)].field_1536 wei
                     gas 2300 * is_zero(value) wei
                emit Withdrawn(userDepositInfo[address(msg.sender)].field_1536, msg.sender);
            else:
                if userDepositInfo[address(msg.sender)].field_1536 and 1000 > -1 / userDepositInfo[address(msg.sender)].field_1536:
                    revert with 'NH{q', 17
                if not userDepositInfo[address(msg.sender)].field_1536:
                    revert with 'NH{q', 18
                if 1000 * userDepositInfo[address(msg.sender)].field_1536 / userDepositInfo[address(msg.sender)].field_1536 != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if 1000 * userDepositInfo[address(msg.sender)].field_1536 / 10000 > userDepositInfo[address(msg.sender)].field_1536:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userDepositInfo[address(msg.sender)].field_1536 < 1000 * userDepositInfo[address(msg.sender)].field_1536 / 10000:
                    revert with 'NH{q', 17
                if userDepositInfo[address(msg.sender)].field_1536 - (1000 * userDepositInfo[address(msg.sender)].field_1536 / 10000) <= 0:
                    revert with 0, 'User has no dividends'
                userDepositInfo[address(msg.sender)].field_256 = block.timestamp
                call insuranceWalletAddress with:
                   value 1000 * userDepositInfo[address(msg.sender)].field_1536 / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value userDepositInfo[address(msg.sender)].field_1536 - (1000 * userDepositInfo[address(msg.sender)].field_1536 / 10000) wei
                     gas 2300 * is_zero(value) wei
                emit Withdrawn((userDepositInfo[address(msg.sender)].field_1536 - (1000 * userDepositInfo[address(msg.sender)].field_1536 / 10000)), msg.sender);
        else:
            if not eth.balance(this.address):
                if 0 > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 'NH{q', 17
                if eth.balance(this.address) <= 0:
                    revert with 0, 'User has no dividends'
                userDepositInfo[address(msg.sender)].field_256 = block.timestamp
                call insuranceWalletAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                emit Withdrawn(eth.balance(this.address), msg.sender);
            else:
                if eth.balance(this.address) and 1000 > -1 / eth.balance(this.address):
                    revert with 'NH{q', 17
                if not eth.balance(this.address):
                    revert with 'NH{q', 18
                if 1000 * eth.balance(this.address) / eth.balance(this.address) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if 1000 * eth.balance(this.address) / 10000 > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 1000 * eth.balance(this.address) / 10000:
                    revert with 'NH{q', 17
                if eth.balance(this.address) - (1000 * eth.balance(this.address) / 10000) <= 0:
                    revert with 0, 'User has no dividends'
                userDepositInfo[address(msg.sender)].field_256 = block.timestamp
                call insuranceWalletAddress with:
                   value 1000 * eth.balance(this.address) / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value eth.balance(this.address) - (1000 * eth.balance(this.address) / 10000) wei
                     gas 2300 * is_zero(value) wei
                emit Withdrawn((eth.balance(this.address) - (1000 * eth.balance(this.address) / 10000)), msg.sender);
}

function getResult(uint8 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp <= startUNIX:
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
        if arg1 >= 6:
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
        if var72003 >= planInfo[2 * uint8(arg1)].field_0:
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
        if arg2 > -1:
            revert with 'NH{q', 17
        if arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not arg2:
            if var94007 == -1:
                revert with 'NH{q', 17
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            mem[0] = 4
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
        if 0 > -(arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000) - 1:
            revert with 'NH{q', 17
        if arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if var94007 == -1:
            revert with 'NH{q', 17
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        mem[0] = 4
        if var94007 + 1 < planInfo[2 * uint8(arg1)].field_0:
            if arg2 > -(arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000) - 1:
                revert with 'NH{q', 17
            if arg2 + (arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000) < arg2:
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
            return planInfo[2 * uint8(arg1)].field_256, arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000, block.timestamp
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
               arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < startUNIX:
        revert with 'NH{q', 17
    if block.timestamp - startUNIX > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 'NH{q', 17
    if (5 * block.timestamp) - (5 * startUNIX) / 5 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    if planInfo[2 * uint8(arg1)].field_256 > -((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) - 1:
        revert with 'NH{q', 17
    if planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) < planInfo[2 * uint8(arg1)].field_256:
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
                return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 0, block.timestamp
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
            return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
                   0,
                   block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
        if arg2 and planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / arg2 != planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000:
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if not planInfo[2 * uint8(arg1)].field_0:
                if block.timestamp > -1:
                    revert with 'NH{q', 17
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 0, block.timestamp
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
            return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
                   0,
                   block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
        if (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000 and planInfo[2 * uint8(arg1)].field_0 > -1 / (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000:
            revert with 'NH{q', 17
        if not (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000:
            revert with 'NH{q', 18
        if (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000 * planInfo[2 * uint8(arg1)].field_0 / (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000 != planInfo[2 * uint8(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
                   (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000 * planInfo[2 * uint8(arg1)].field_0,
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
        return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
               (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000 * planInfo[2 * uint8(arg1)].field_0,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    if arg1 >= 6:
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 0, block.timestamp
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
        return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    if var121003 >= planInfo[2 * uint8(arg1)].field_0:
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if not planInfo[2 * uint8(arg1)].field_0:
            if block.timestamp > -1:
                revert with 'NH{q', 17
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 0, block.timestamp
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
        return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    if arg2 > -1:
        revert with 'NH{q', 17
    if arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if not arg2:
        if var143007 == -1:
            revert with 'NH{q', 17
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        mem[0] = 4
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
            return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 0, block.timestamp
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
        return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    if arg2 and planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / arg2 != planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if 0 > -((planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000) - 1:
        revert with 'NH{q', 17
    if (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if var143007 == -1:
        revert with 'NH{q', 17
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    mem[0] = 4
    if var143007 + 1 < planInfo[2 * uint8(arg1)].field_0:
        if arg2 > -((planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000) - 1:
            revert with 'NH{q', 17
        if arg2 + ((planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000) < arg2:
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
        return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
               (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000,
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
    return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
           (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000,
           block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
}

function reinvest(uint8 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= 6:
        revert with 0, 'Invalid plan'
    if block.timestamp < startUNIX:
        revert with 0, 'contract hasn't started yet'
    idx = 0
    while idx < userDepositInfo[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 5)
        if userDepositInfo[address(msg.sender)].field_256 < userDepositInfo[address(msg.sender)][idx].field_1280:
            if idx >= userDepositInfo[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if idx >= userDepositInfo[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if userDepositInfo[address(msg.sender)][idx].field_0 >= 3:
                mem[0] = sha3(address(msg.sender), 5)
                if block.timestamp > userDepositInfo[address(msg.sender)][idx].field_1280:
                    if idx >= userDepositInfo[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 5)
                    if 0 > -userDepositInfo[address(msg.sender)][idx].field_768 - 1:
                        revert with 'NH{q', 17
                    if userDepositInfo[address(msg.sender)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userDepositInfo[address(msg.sender)][idx].field_512:
                    if idx >= userDepositInfo[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    if idx >= userDepositInfo[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 5)
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
                            mem[0] = sha3(address(msg.sender), 5)
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
                            mem[0] = sha3(address(msg.sender), 5)
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
                    mem[0] = sha3(address(msg.sender), 5)
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
                            mem[0] = sha3(address(msg.sender), 5)
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
                            mem[0] = sha3(address(msg.sender), 5)
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
    mem[32] = 5
    if userDepositInfo[address(msg.sender)].field_1536 <= 0:
        revert with 0, 'Invalid invest amount'
    if 0 > -userDepositInfo[address(msg.sender)].field_1536 - 1:
        revert with 'NH{q', 17
    if userDepositInfo[address(msg.sender)].field_1536 < 0:
        revert with 0, 'SafeMath: addition overflow'
    userDepositInfo[address(msg.sender)].field_1536 = 0
    if userDepositInfo[address(msg.sender)].field_1536 < 10^17:
        revert with 0, 'Invalid invest amount'
    userDepositInfo[address(msg.sender)].field_256 = block.timestamp
    if eth.balance(this.address) >= userDepositInfo[address(msg.sender)].field_1536:
        if block.timestamp <= startUNIX:
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if arg1 < 3:
                if not userDepositInfo[address(msg.sender)].field_1536:
                    if arg1 >= planInfo.length:
                        revert with 'NH{q', 50
                    if not planInfo[2 * uint8(arg1)].field_0:
                        if block.timestamp > -1:
                            revert with 'NH{q', 17
                        if block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                        if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                            revert with 'NH{q', 17
                        if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += userDepositInfo[address(msg.sender)].field_1536
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp, msg.sender);
                    else:
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
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                        if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                            revert with 'NH{q', 17
                        if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += userDepositInfo[address(msg.sender)].field_1536
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                else:
                    if userDepositInfo[address(msg.sender)].field_1536 and planInfo[2 * uint8(arg1)].field_256 > -1 / userDepositInfo[address(msg.sender)].field_1536:
                        revert with 'NH{q', 17
                    if not userDepositInfo[address(msg.sender)].field_1536:
                        revert with 'NH{q', 18
                    if userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / userDepositInfo[address(msg.sender)].field_1536 != planInfo[2 * uint8(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000:
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        if not planInfo[2 * uint8(arg1)].field_0:
                            if block.timestamp > -1:
                                revert with 'NH{q', 17
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                revert with 'NH{q', 17
                            if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += userDepositInfo[address(msg.sender)].field_1536
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp, msg.sender);
                        else:
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
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                            if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                revert with 'NH{q', 17
                            if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += userDepositInfo[address(msg.sender)].field_1536
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                    else:
                        if userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000 and planInfo[2 * uint8(arg1)].field_0 > -1 / userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000:
                            revert with 'NH{q', 17
                        if not userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000:
                            revert with 'NH{q', 18
                        if userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0 / userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000 != planInfo[2 * uint8(arg1)].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        if not planInfo[2 * uint8(arg1)].field_0:
                            if block.timestamp > -1:
                                revert with 'NH{q', 17
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                revert with 'NH{q', 17
                            if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += userDepositInfo[address(msg.sender)].field_1536
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0, block.timestamp, block.timestamp, msg.sender);
                        else:
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
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                            if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                revert with 'NH{q', 17
                            if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += userDepositInfo[address(msg.sender)].field_1536
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
            else:
                if arg1 >= 6:
                    if not planInfo[2 * uint8(arg1)].field_0:
                        if block.timestamp > -1:
                            revert with 'NH{q', 17
                        if block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                        if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                            revert with 'NH{q', 17
                        if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += userDepositInfo[address(msg.sender)].field_1536
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp, msg.sender);
                    else:
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
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                        if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                            revert with 'NH{q', 17
                        if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += userDepositInfo[address(msg.sender)].field_1536
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                else:
                    if var89003 >= planInfo[2 * uint8(arg1)].field_0:
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        if not planInfo[2 * uint8(arg1)].field_0:
                            if block.timestamp > -1:
                                revert with 'NH{q', 17
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                revert with 'NH{q', 17
                            if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += userDepositInfo[address(msg.sender)].field_1536
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp, msg.sender);
                        else:
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
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                            if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                revert with 'NH{q', 17
                            if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += userDepositInfo[address(msg.sender)].field_1536
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                    else:
                        if userDepositInfo[address(msg.sender)].field_1536 > -1:
                            revert with 'NH{q', 17
                        if userDepositInfo[address(msg.sender)].field_1536 < userDepositInfo[address(msg.sender)].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userDepositInfo[address(msg.sender)].field_1536:
                            if var111007 == -1:
                                revert with 'NH{q', 17
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            mem[0] = 4
                            if var111007 + 1 < planInfo[2 * uint8(arg1)].field_0:
                                if userDepositInfo[address(msg.sender)].field_1536 > -1:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(msg.sender)].field_1536 < userDepositInfo[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                var111007 = var111007 + 1
                                continue 
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            if not planInfo[2 * uint8(arg1)].field_0:
                                if block.timestamp > -1:
                                    revert with 'NH{q', 17
                                if block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                                if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += userDepositInfo[address(msg.sender)].field_1536
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp, msg.sender);
                            else:
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
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                                if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += userDepositInfo[address(msg.sender)].field_1536
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                        else:
                            if userDepositInfo[address(msg.sender)].field_1536 and planInfo[2 * uint8(arg1)].field_256 > -1 / userDepositInfo[address(msg.sender)].field_1536:
                                revert with 'NH{q', 17
                            if not userDepositInfo[address(msg.sender)].field_1536:
                                revert with 'NH{q', 18
                            if userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / userDepositInfo[address(msg.sender)].field_1536 != planInfo[2 * uint8(arg1)].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if 0 > -(userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000) - 1:
                                revert with 'NH{q', 17
                            if userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if var111007 == -1:
                                revert with 'NH{q', 17
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            mem[0] = 4
                            if var111007 + 1 < planInfo[2 * uint8(arg1)].field_0:
                                if userDepositInfo[address(msg.sender)].field_1536 > -(userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000) - 1:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(msg.sender)].field_1536 + (userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000) < userDepositInfo[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                var111007 = var111007 + 1
                                continue 
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            if not planInfo[2 * uint8(arg1)].field_0:
                                if block.timestamp > -1:
                                    revert with 'NH{q', 17
                                if block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                                if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += userDepositInfo[address(msg.sender)].field_1536
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000, block.timestamp, block.timestamp, msg.sender);
                            else:
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
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                                if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += userDepositInfo[address(msg.sender)].field_1536
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, userDepositInfo[address(msg.sender)].field_1536, userDepositInfo[address(msg.sender)].field_1536 * planInfo[2 * uint8(arg1)].field_256 / 1000, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
        else:
            if startUNIX > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp < startUNIX:
                revert with 'NH{q', 17
            if block.timestamp - startUNIX > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 'NH{q', 17
            if (5 * block.timestamp) - (5 * startUNIX) / 5 != block.timestamp - startUNIX:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if planInfo[2 * uint8(arg1)].field_256 > -((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) - 1:
                revert with 'NH{q', 17
            if planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) < planInfo[2 * uint8(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if arg1 < 3:
                if not userDepositInfo[address(msg.sender)].field_1536:
                    if arg1 >= planInfo.length:
                        revert with 'NH{q', 50
                    if not planInfo[2 * uint8(arg1)].field_0:
                        if block.timestamp > -1:
                            revert with 'NH{q', 17
                        if block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                        if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                            revert with 'NH{q', 17
                        if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += userDepositInfo[address(msg.sender)].field_1536
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp, msg.sender);
                    else:
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
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                        if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                            revert with 'NH{q', 17
                        if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += userDepositInfo[address(msg.sender)].field_1536
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                else:
                    if userDepositInfo[address(msg.sender)].field_1536 and planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) > -1 / userDepositInfo[address(msg.sender)].field_1536:
                        revert with 'NH{q', 17
                    if not userDepositInfo[address(msg.sender)].field_1536:
                        revert with 'NH{q', 18
                    if (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / userDepositInfo[address(msg.sender)].field_1536 != planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000:
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        if not planInfo[2 * uint8(arg1)].field_0:
                            if block.timestamp > -1:
                                revert with 'NH{q', 17
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                revert with 'NH{q', 17
                            if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += userDepositInfo[address(msg.sender)].field_1536
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp, msg.sender);
                        else:
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
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                            if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                revert with 'NH{q', 17
                            if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += userDepositInfo[address(msg.sender)].field_1536
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                    else:
                        if (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000 and planInfo[2 * uint8(arg1)].field_0 > -1 / (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000:
                            revert with 'NH{q', 17
                        if not (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000:
                            revert with 'NH{q', 18
                        if (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000 * planInfo[2 * uint8(arg1)].field_0 / (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000 != planInfo[2 * uint8(arg1)].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        if not planInfo[2 * uint8(arg1)].field_0:
                            if block.timestamp > -1:
                                revert with 'NH{q', 17
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000 * planInfo[2 * uint8(arg1)].field_0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                revert with 'NH{q', 17
                            if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += userDepositInfo[address(msg.sender)].field_1536
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000 * planInfo[2 * uint8(arg1)].field_0, block.timestamp, block.timestamp, msg.sender);
                        else:
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
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000 * planInfo[2 * uint8(arg1)].field_0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                            if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                revert with 'NH{q', 17
                            if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += userDepositInfo[address(msg.sender)].field_1536
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000 * planInfo[2 * uint8(arg1)].field_0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
            else:
                if arg1 >= 6:
                    if not planInfo[2 * uint8(arg1)].field_0:
                        if block.timestamp > -1:
                            revert with 'NH{q', 17
                        if block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                        if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                            revert with 'NH{q', 17
                        if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += userDepositInfo[address(msg.sender)].field_1536
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp, msg.sender);
                    else:
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
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                        if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                            revert with 'NH{q', 17
                        if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += userDepositInfo[address(msg.sender)].field_1536
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                else:
                    if var138003 >= planInfo[2 * uint8(arg1)].field_0:
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        if not planInfo[2 * uint8(arg1)].field_0:
                            if block.timestamp > -1:
                                revert with 'NH{q', 17
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                revert with 'NH{q', 17
                            if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += userDepositInfo[address(msg.sender)].field_1536
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp, msg.sender);
                        else:
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
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                            if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                revert with 'NH{q', 17
                            if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += userDepositInfo[address(msg.sender)].field_1536
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                    else:
                        if userDepositInfo[address(msg.sender)].field_1536 > -1:
                            revert with 'NH{q', 17
                        if userDepositInfo[address(msg.sender)].field_1536 < userDepositInfo[address(msg.sender)].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userDepositInfo[address(msg.sender)].field_1536:
                            if var160007 == -1:
                                revert with 'NH{q', 17
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            mem[0] = 4
                            if var160007 + 1 < planInfo[2 * uint8(arg1)].field_0:
                                if userDepositInfo[address(msg.sender)].field_1536 > -1:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(msg.sender)].field_1536 < userDepositInfo[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                var160007 = var160007 + 1
                                continue 
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            if not planInfo[2 * uint8(arg1)].field_0:
                                if block.timestamp > -1:
                                    revert with 'NH{q', 17
                                if block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                                if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += userDepositInfo[address(msg.sender)].field_1536
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp, msg.sender);
                            else:
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
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                                if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += userDepositInfo[address(msg.sender)].field_1536
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                        else:
                            if userDepositInfo[address(msg.sender)].field_1536 and planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) > -1 / userDepositInfo[address(msg.sender)].field_1536:
                                revert with 'NH{q', 17
                            if not userDepositInfo[address(msg.sender)].field_1536:
                                revert with 'NH{q', 18
                            if (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / userDepositInfo[address(msg.sender)].field_1536 != planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if 0 > -((planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000) - 1:
                                revert with 'NH{q', 17
                            if (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if var160007 == -1:
                                revert with 'NH{q', 17
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            mem[0] = 4
                            if var160007 + 1 < planInfo[2 * uint8(arg1)].field_0:
                                if userDepositInfo[address(msg.sender)].field_1536 > -((planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000) - 1:
                                    revert with 'NH{q', 17
                                if userDepositInfo[address(msg.sender)].field_1536 + ((planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000) < userDepositInfo[address(msg.sender)].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                var160007 = var160007 + 1
                                continue 
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            if not planInfo[2 * uint8(arg1)].field_0:
                                if block.timestamp > -1:
                                    revert with 'NH{q', 17
                                if block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                                if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += userDepositInfo[address(msg.sender)].field_1536
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000, block.timestamp, block.timestamp, msg.sender);
                            else:
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
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = userDepositInfo[address(msg.sender)].field_1536
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                                if totalStaked > -userDepositInfo[address(msg.sender)].field_1536 - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + userDepositInfo[address(msg.sender)].field_1536 < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += userDepositInfo[address(msg.sender)].field_1536
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), userDepositInfo[address(msg.sender)].field_1536, (planInfo[2 * uint8(arg1)].field_256 * userDepositInfo[address(msg.sender)].field_1536) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * userDepositInfo[address(msg.sender)].field_1536) / 1000, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
    else:
        if block.timestamp <= startUNIX:
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if arg1 < 3:
                if not eth.balance(this.address):
                    if arg1 >= planInfo.length:
                        revert with 'NH{q', 50
                    if not planInfo[2 * uint8(arg1)].field_0:
                        if block.timestamp > -1:
                            revert with 'NH{q', 17
                        if block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                        if totalStaked > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        if totalStaked + eth.balance(this.address) < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += eth.balance(this.address)
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), 0, block.timestamp, block.timestamp, msg.sender);
                    else:
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
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                        if totalStaked > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        if totalStaked + eth.balance(this.address) < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += eth.balance(this.address)
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                else:
                    if eth.balance(this.address) and planInfo[2 * uint8(arg1)].field_256 > -1 / eth.balance(this.address):
                        revert with 'NH{q', 17
                    if not eth.balance(this.address):
                        revert with 'NH{q', 18
                    if eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / eth.balance(this.address) != planInfo[2 * uint8(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000:
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        if not planInfo[2 * uint8(arg1)].field_0:
                            if block.timestamp > -1:
                                revert with 'NH{q', 17
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked > -eth.balance(this.address) - 1:
                                revert with 'NH{q', 17
                            if totalStaked + eth.balance(this.address) < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += eth.balance(this.address)
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), 0, block.timestamp, block.timestamp, msg.sender);
                        else:
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
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                            if totalStaked > -eth.balance(this.address) - 1:
                                revert with 'NH{q', 17
                            if totalStaked + eth.balance(this.address) < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += eth.balance(this.address)
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                    else:
                        if eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000 and planInfo[2 * uint8(arg1)].field_0 > -1 / eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000:
                            revert with 'NH{q', 17
                        if not eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000:
                            revert with 'NH{q', 18
                        if eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0 / eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000 != planInfo[2 * uint8(arg1)].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        if not planInfo[2 * uint8(arg1)].field_0:
                            if block.timestamp > -1:
                                revert with 'NH{q', 17
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked > -eth.balance(this.address) - 1:
                                revert with 'NH{q', 17
                            if totalStaked + eth.balance(this.address) < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += eth.balance(this.address)
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0, block.timestamp, block.timestamp, msg.sender);
                        else:
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
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                            if totalStaked > -eth.balance(this.address) - 1:
                                revert with 'NH{q', 17
                            if totalStaked + eth.balance(this.address) < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += eth.balance(this.address)
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
            else:
                if arg1 >= 6:
                    if not planInfo[2 * uint8(arg1)].field_0:
                        if block.timestamp > -1:
                            revert with 'NH{q', 17
                        if block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                        if totalStaked > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        if totalStaked + eth.balance(this.address) < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += eth.balance(this.address)
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), 0, block.timestamp, block.timestamp, msg.sender);
                    else:
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
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                        if totalStaked > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        if totalStaked + eth.balance(this.address) < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += eth.balance(this.address)
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                else:
                    if var90003 >= planInfo[2 * uint8(arg1)].field_0:
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        if not planInfo[2 * uint8(arg1)].field_0:
                            if block.timestamp > -1:
                                revert with 'NH{q', 17
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked > -eth.balance(this.address) - 1:
                                revert with 'NH{q', 17
                            if totalStaked + eth.balance(this.address) < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += eth.balance(this.address)
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), 0, block.timestamp, block.timestamp, msg.sender);
                        else:
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
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                            if totalStaked > -eth.balance(this.address) - 1:
                                revert with 'NH{q', 17
                            if totalStaked + eth.balance(this.address) < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += eth.balance(this.address)
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                    else:
                        if eth.balance(this.address) > -1:
                            revert with 'NH{q', 17
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if var112007 == -1:
                                revert with 'NH{q', 17
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            mem[0] = 4
                            if var112007 + 1 < planInfo[2 * uint8(arg1)].field_0:
                                if eth.balance(this.address) > -1:
                                    revert with 'NH{q', 17
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 'SafeMath: addition overflow'
                                var112007 = var112007 + 1
                                continue 
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            if not planInfo[2 * uint8(arg1)].field_0:
                                if block.timestamp > -1:
                                    revert with 'NH{q', 17
                                if block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                                if totalStaked > -eth.balance(this.address) - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + eth.balance(this.address) < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += eth.balance(this.address)
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), 0, block.timestamp, block.timestamp, msg.sender);
                            else:
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
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                                if totalStaked > -eth.balance(this.address) - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + eth.balance(this.address) < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += eth.balance(this.address)
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                        else:
                            if eth.balance(this.address) and planInfo[2 * uint8(arg1)].field_256 > -1 / eth.balance(this.address):
                                revert with 'NH{q', 17
                            if not eth.balance(this.address):
                                revert with 'NH{q', 18
                            if eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / eth.balance(this.address) != planInfo[2 * uint8(arg1)].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if 0 > -(eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000) - 1:
                                revert with 'NH{q', 17
                            if eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if var112007 == -1:
                                revert with 'NH{q', 17
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            mem[0] = 4
                            if var112007 + 1 < planInfo[2 * uint8(arg1)].field_0:
                                if eth.balance(this.address) > -(eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000) - 1:
                                    revert with 'NH{q', 17
                                if eth.balance(this.address) + (eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000) < eth.balance(this.address):
                                    revert with 0, 'SafeMath: addition overflow'
                                var112007 = var112007 + 1
                                continue 
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            if not planInfo[2 * uint8(arg1)].field_0:
                                if block.timestamp > -1:
                                    revert with 'NH{q', 17
                                if block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                                if totalStaked > -eth.balance(this.address) - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + eth.balance(this.address) < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += eth.balance(this.address)
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000, block.timestamp, block.timestamp, msg.sender);
                            else:
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
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                                if totalStaked > -eth.balance(this.address) - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + eth.balance(this.address) < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += eth.balance(this.address)
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256, eth.balance(this.address), eth.balance(this.address) * planInfo[2 * uint8(arg1)].field_256 / 1000, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
        else:
            if startUNIX > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp < startUNIX:
                revert with 'NH{q', 17
            if block.timestamp - startUNIX > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 'NH{q', 17
            if (5 * block.timestamp) - (5 * startUNIX) / 5 != block.timestamp - startUNIX:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if planInfo[2 * uint8(arg1)].field_256 > -((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) - 1:
                revert with 'NH{q', 17
            if planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) < planInfo[2 * uint8(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if arg1 < 3:
                if not eth.balance(this.address):
                    if arg1 >= planInfo.length:
                        revert with 'NH{q', 50
                    if not planInfo[2 * uint8(arg1)].field_0:
                        if block.timestamp > -1:
                            revert with 'NH{q', 17
                        if block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                        if totalStaked > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        if totalStaked + eth.balance(this.address) < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += eth.balance(this.address)
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), 0, block.timestamp, block.timestamp, msg.sender);
                    else:
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
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                        if totalStaked > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        if totalStaked + eth.balance(this.address) < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += eth.balance(this.address)
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                else:
                    if eth.balance(this.address) and planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) > -1 / eth.balance(this.address):
                        revert with 'NH{q', 17
                    if not eth.balance(this.address):
                        revert with 'NH{q', 18
                    if (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / eth.balance(this.address) != planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000:
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        if not planInfo[2 * uint8(arg1)].field_0:
                            if block.timestamp > -1:
                                revert with 'NH{q', 17
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked > -eth.balance(this.address) - 1:
                                revert with 'NH{q', 17
                            if totalStaked + eth.balance(this.address) < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += eth.balance(this.address)
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), 0, block.timestamp, block.timestamp, msg.sender);
                        else:
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
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                            if totalStaked > -eth.balance(this.address) - 1:
                                revert with 'NH{q', 17
                            if totalStaked + eth.balance(this.address) < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += eth.balance(this.address)
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                    else:
                        if (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000 and planInfo[2 * uint8(arg1)].field_0 > -1 / (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000:
                            revert with 'NH{q', 17
                        if not (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000:
                            revert with 'NH{q', 18
                        if (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000 * planInfo[2 * uint8(arg1)].field_0 / (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000 != planInfo[2 * uint8(arg1)].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        if not planInfo[2 * uint8(arg1)].field_0:
                            if block.timestamp > -1:
                                revert with 'NH{q', 17
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000 * planInfo[2 * uint8(arg1)].field_0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked > -eth.balance(this.address) - 1:
                                revert with 'NH{q', 17
                            if totalStaked + eth.balance(this.address) < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += eth.balance(this.address)
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000 * planInfo[2 * uint8(arg1)].field_0, block.timestamp, block.timestamp, msg.sender);
                        else:
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
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000 * planInfo[2 * uint8(arg1)].field_0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                            if totalStaked > -eth.balance(this.address) - 1:
                                revert with 'NH{q', 17
                            if totalStaked + eth.balance(this.address) < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += eth.balance(this.address)
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000 * planInfo[2 * uint8(arg1)].field_0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
            else:
                if arg1 >= 6:
                    if not planInfo[2 * uint8(arg1)].field_0:
                        if block.timestamp > -1:
                            revert with 'NH{q', 17
                        if block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                        if totalStaked > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        if totalStaked + eth.balance(this.address) < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += eth.balance(this.address)
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), 0, block.timestamp, block.timestamp, msg.sender);
                    else:
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
                        userDepositInfo[address(msg.sender)].field_0++
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                        userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                        if totalStaked > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        if totalStaked + eth.balance(this.address) < totalStaked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalStaked += eth.balance(this.address)
                        emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                else:
                    if var139003 >= planInfo[2 * uint8(arg1)].field_0:
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        if not planInfo[2 * uint8(arg1)].field_0:
                            if block.timestamp > -1:
                                revert with 'NH{q', 17
                            if block.timestamp < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                            if totalStaked > -eth.balance(this.address) - 1:
                                revert with 'NH{q', 17
                            if totalStaked + eth.balance(this.address) < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += eth.balance(this.address)
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), 0, block.timestamp, block.timestamp, msg.sender);
                        else:
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
                            userDepositInfo[address(msg.sender)].field_0++
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                            userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                            if totalStaked > -eth.balance(this.address) - 1:
                                revert with 'NH{q', 17
                            if totalStaked + eth.balance(this.address) < totalStaked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalStaked += eth.balance(this.address)
                            emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                    else:
                        if eth.balance(this.address) > -1:
                            revert with 'NH{q', 17
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if var161007 == -1:
                                revert with 'NH{q', 17
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            mem[0] = 4
                            if var161007 + 1 < planInfo[2 * uint8(arg1)].field_0:
                                if eth.balance(this.address) > -1:
                                    revert with 'NH{q', 17
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 'SafeMath: addition overflow'
                                var161007 = var161007 + 1
                                continue 
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            if not planInfo[2 * uint8(arg1)].field_0:
                                if block.timestamp > -1:
                                    revert with 'NH{q', 17
                                if block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                                if totalStaked > -eth.balance(this.address) - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + eth.balance(this.address) < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += eth.balance(this.address)
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), 0, block.timestamp, block.timestamp, msg.sender);
                            else:
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
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = 0
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                                if totalStaked > -eth.balance(this.address) - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + eth.balance(this.address) < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += eth.balance(this.address)
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), 0, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
                        else:
                            if eth.balance(this.address) and planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) > -1 / eth.balance(this.address):
                                revert with 'NH{q', 17
                            if not eth.balance(this.address):
                                revert with 'NH{q', 18
                            if (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / eth.balance(this.address) != planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if 0 > -((planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000) - 1:
                                revert with 'NH{q', 17
                            if (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if var161007 == -1:
                                revert with 'NH{q', 17
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            mem[0] = 4
                            if var161007 + 1 < planInfo[2 * uint8(arg1)].field_0:
                                if eth.balance(this.address) > -((planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000) - 1:
                                    revert with 'NH{q', 17
                                if eth.balance(this.address) + ((planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000) < eth.balance(this.address):
                                    revert with 0, 'SafeMath: addition overflow'
                                var161007 = var161007 + 1
                                continue 
                            if arg1 >= planInfo.length:
                                revert with 'NH{q', 50
                            if not planInfo[2 * uint8(arg1)].field_0:
                                if block.timestamp > -1:
                                    revert with 'NH{q', 17
                                if block.timestamp < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp
                                if totalStaked > -eth.balance(this.address) - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + eth.balance(this.address) < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += eth.balance(this.address)
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000, block.timestamp, block.timestamp, msg.sender);
                            else:
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
                                userDepositInfo[address(msg.sender)].field_0++
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_0 = arg1
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_256 = planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_512 = eth.balance(this.address)
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_768 = (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1024 = block.timestamp
                                userDepositInfo[address(msg.sender)][userDepositInfo[address(msg.sender)].field_0].field_1280 = block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                                if totalStaked > -eth.balance(this.address) - 1:
                                    revert with 'NH{q', 17
                                if totalStaked + eth.balance(this.address) < totalStaked:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalStaked += eth.balance(this.address)
                                emit NewDeposit(arg1 << 248, planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), eth.balance(this.address), (planInfo[2 * uint8(arg1)].field_256 * eth.balance(this.address)) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * eth.balance(this.address)) / 1000, block.timestamp, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0), msg.sender);
}



}
