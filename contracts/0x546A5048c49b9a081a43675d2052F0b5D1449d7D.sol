contract main {




// =====================  Runtime code  =====================


#
#  - invest(address arg1, uint8 arg2)
#
const sub_388655fb(?) = eth.balance(this.address)

const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const PROJECT_FEE = 100

const PERCENT_STEP = 5

const INVEST_MAX_AMOUNT = 1000 * 10^18

const WITHDRAW_FEE = 1500

const INVEST_MIN_AMOUNT = 5 * 10^16


array of uint256 rEFERRAL_PERCENTS;
uint256 totalStaked;
uint256 totalRefBonus;
array of struct planInfo;
mapping of struct userDepositInfo;
uint256 startUNIX;
address commissionWalletAddress;

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
    return userDepositInfo[address(arg1)].field_1792
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < rEFERRAL_PERCENTS.length
    return rEFERRAL_PERCENTS[arg1]
}

function getUserInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if s > -userDepositInfo[address(arg1)][idx].field_512 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_512
        continue 
    if userDepositInfo[address(arg1)].field_1792 < userDepositInfo[address(arg1)].field_1536:
        revert with 'NH{q', 17
    if userDepositInfo[address(arg1)].field_768 > -userDepositInfo[address(arg1)].field_1024 - 1:
        revert with 'NH{q', 17
    if userDepositInfo[address(arg1)].field_768 + userDepositInfo[address(arg1)].field_1024 > -userDepositInfo[address(arg1)].field_1280 - 1:
        revert with 'NH{q', 17
    idx = 0
    t = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if userDepositInfo[address(arg1)].field_256 >= userDepositInfo[address(arg1)][idx].field_1280:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t
            continue 
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if userDepositInfo[address(arg1)][idx].field_0 >= 3:
            mem[0] = sha3(address(arg1), 4)
            if block.timestamp <= userDepositInfo[address(arg1)][idx].field_1280:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t
                continue 
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 4)
            if t > -userDepositInfo[address(arg1)][idx].field_768 - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + userDepositInfo[address(arg1)][idx].field_768
            continue 
        if userDepositInfo[address(arg1)][idx].field_512 and userDepositInfo[address(arg1)][idx].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512:
            revert with 'NH{q', 17
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 4)
        if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
            if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                if userDepositInfo[address(arg1)][idx].field_1024 >= block.timestamp:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    t = t
                    continue 
                if block.timestamp < userDepositInfo[address(arg1)][idx].field_1024:
                    revert with 'NH{q', 17
                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)][idx].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                    revert with 'NH{q', 17
                if t > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t + ((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600)
                continue 
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 4)
            if userDepositInfo[address(arg1)][idx].field_1024 >= userDepositInfo[address(arg1)][idx].field_1280:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t
                continue 
            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)][idx].field_1024:
                revert with 'NH{q', 17
            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)][idx].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                revert with 'NH{q', 17
            if t > -((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + ((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600)
            continue 
        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
            if userDepositInfo[address(arg1)].field_256 >= block.timestamp:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t
                continue 
            if block.timestamp < userDepositInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                revert with 'NH{q', 17
            if t > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + ((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600)
            continue 
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 4)
        if userDepositInfo[address(arg1)].field_256 >= userDepositInfo[address(arg1)][idx].field_1280:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t
            continue 
        if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
            revert with 'NH{q', 17
        if t > -((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        t = t + ((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600)
        continue 
    if userDepositInfo[address(arg1)].field_1536 > -t - 1:
        revert with 'NH{q', 17
    return s * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0, 
           userDepositInfo[address(arg1)].field_1536,
           userDepositInfo[address(arg1)].field_1792 - userDepositInfo[address(arg1)].field_1536,
           userDepositInfo[address(arg1)].field_768 + userDepositInfo[address(arg1)].field_1024 + userDepositInfo[address(arg1)].field_1280,
           userDepositInfo[address(arg1)].field_1536 + t
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

function getProjectInfo() {
    return totalStaked, totalRefBonus, eth.balance(this.address)
}

function sub_1a6a2148(?) {
    if commissionWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userDepositInfo[address(arg1)].field_1792 < userDepositInfo[address(arg1)].field_1536:
        revert with 'NH{q', 17
    return (userDepositInfo[address(arg1)].field_1792 - userDepositInfo[address(arg1)].field_1536)
}

function sub_105ff198(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if commissionWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ccd620c7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if commissionWalletAddress != msg.sender:
        revert with 0, 'only owner'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenDecimals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_4fe2ed27(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userDepositInfo[address(arg1)].field_768 > -userDepositInfo[address(arg1)].field_1024 - 1:
        revert with 'NH{q', 17
    if userDepositInfo[address(arg1)].field_768 + userDepositInfo[address(arg1)].field_1024 > -userDepositInfo[address(arg1)].field_1280 - 1:
        revert with 'NH{q', 17
    return (userDepositInfo[address(arg1)].field_768 + userDepositInfo[address(arg1)].field_1024 + userDepositInfo[address(arg1)].field_1280)
}

function sub_28749814(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if commissionWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getPercent(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp <= startUNIX:
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        return planInfo[2 * uint8(arg1)].field_256
    if block.timestamp < startUNIX:
        revert with 'NH{q', 17
    if block.timestamp - startUNIX > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 'NH{q', 17
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    if planInfo[2 * uint8(arg1)].field_256 > -((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) - 1:
        revert with 'NH{q', 17
    return (planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600))
}

function withdrawTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if commissionWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_90bf53da(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if commissionWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if arg3 and 1 > -1 / arg3:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
    else:
        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
            if 10^ext_call.return_data[0] > -1:
                revert with 'NH{q', 17
            if arg3 and 10^ext_call.return_data[0] > -1 / arg3:
                revert with 'NH{q', 17
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg3 * 10^ext_call.return_data[0]
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[0]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg3 and t * s > -1 / arg3:
                revert with 'NH{q', 17
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg3 * t * s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_512
        continue 
    return (s * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0)
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if userDepositInfo[address(arg1)].field_256 >= userDepositInfo[address(arg1)][idx].field_1280:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if userDepositInfo[address(arg1)][idx].field_0 >= 3:
            mem[0] = sha3(address(arg1), 4)
            if block.timestamp <= userDepositInfo[address(arg1)][idx].field_1280:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 4)
            if s > -userDepositInfo[address(arg1)][idx].field_768 - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + userDepositInfo[address(arg1)][idx].field_768
            continue 
        if userDepositInfo[address(arg1)][idx].field_512 and userDepositInfo[address(arg1)][idx].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512:
            revert with 'NH{q', 17
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 4)
        if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
            if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                if userDepositInfo[address(arg1)][idx].field_1024 >= block.timestamp:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if block.timestamp < userDepositInfo[address(arg1)][idx].field_1024:
                    revert with 'NH{q', 17
                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)][idx].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                    revert with 'NH{q', 17
                if s > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + ((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600)
                continue 
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 4)
            if userDepositInfo[address(arg1)][idx].field_1024 >= userDepositInfo[address(arg1)][idx].field_1280:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)][idx].field_1024:
                revert with 'NH{q', 17
            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)][idx].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                revert with 'NH{q', 17
            if s > -((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600)
            continue 
        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
            if userDepositInfo[address(arg1)].field_256 >= block.timestamp:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if block.timestamp < userDepositInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                revert with 'NH{q', 17
            if s > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600)
            continue 
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 4)
        if userDepositInfo[address(arg1)].field_256 >= userDepositInfo[address(arg1)][idx].field_1280:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
            revert with 'NH{q', 17
        if s > -((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + ((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600)
        continue 
    return s
}

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        if userDepositInfo[address(arg1)].field_256 >= userDepositInfo[address(arg1)][idx].field_1280:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if userDepositInfo[address(arg1)][idx].field_0 >= 3:
            mem[0] = sha3(address(arg1), 4)
            if block.timestamp <= userDepositInfo[address(arg1)][idx].field_1280:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 4)
            if s > -userDepositInfo[address(arg1)][idx].field_768 - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + userDepositInfo[address(arg1)][idx].field_768
            continue 
        if userDepositInfo[address(arg1)][idx].field_512 and userDepositInfo[address(arg1)][idx].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512:
            revert with 'NH{q', 17
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 4)
        if userDepositInfo[address(arg1)][idx].field_1024 > userDepositInfo[address(arg1)].field_256:
            if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
                if userDepositInfo[address(arg1)][idx].field_1024 >= block.timestamp:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if block.timestamp < userDepositInfo[address(arg1)][idx].field_1024:
                    revert with 'NH{q', 17
                if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)][idx].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                    revert with 'NH{q', 17
                if s > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + ((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600)
                continue 
            if idx >= userDepositInfo[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 4)
            if userDepositInfo[address(arg1)][idx].field_1024 >= userDepositInfo[address(arg1)][idx].field_1280:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)][idx].field_1024:
                revert with 'NH{q', 17
            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)][idx].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                revert with 'NH{q', 17
            if s > -((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_1024 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600)
            continue 
        if userDepositInfo[address(arg1)][idx].field_1280 >= block.timestamp:
            if userDepositInfo[address(arg1)].field_256 >= block.timestamp:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if block.timestamp < userDepositInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
                revert with 'NH{q', 17
            if s > -((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ((block.timestamp * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600)
            continue 
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 4)
        if userDepositInfo[address(arg1)].field_256 >= userDepositInfo[address(arg1)][idx].field_1280:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if userDepositInfo[address(arg1)][idx].field_1280 < userDepositInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        if userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_1280 - userDepositInfo[address(arg1)].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000:
            revert with 'NH{q', 17
        if s > -((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + ((userDepositInfo[address(arg1)][idx].field_1280 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) - (userDepositInfo[address(arg1)].field_256 * userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 / 1000) / 24 * 3600)
        continue 
    if userDepositInfo[address(arg1)].field_1536 > -s - 1:
        revert with 'NH{q', 17
    return (userDepositInfo[address(arg1)].field_1536 + s)
}

function getResult(uint8 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp <= startUNIX:
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if arg1 >= 3:
            if arg1 >= 6:
                if planInfo[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / planInfo[2 * uint8(arg1)].field_0:
                    revert with 'NH{q', 17
                if block.timestamp > (-86400 * planInfo[2 * uint8(arg1)].field_0) - 1:
                    revert with 'NH{q', 17
                return planInfo[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
            if var74003 < planInfo[2 * uint8(arg1)].field_0:
                if arg2 <= -var88001 - 1:
                    s = var92001
                    t = var92011
                    u = var92013
                    while not s or planInfo[2 * uint8(arg1)].field_256 <= -1 / s:
                        if u > -(s * planInfo[2 * uint8(arg1)].field_256 / 1000) - 1:
                            revert with 'NH{q', 17
                        if t == -1:
                            revert with 'NH{q', 17
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        if t + 1 < planInfo[2 * uint8(arg1)].field_0:
                            if arg2 > -u + -(s * planInfo[2 * uint8(arg1)].field_256 / 1000) - 1:
                                revert with 'NH{q', 17
                            s = arg2 + u + (s * planInfo[2 * uint8(arg1)].field_256 / 1000)
                            t = t + 1
                            u = u + (s * planInfo[2 * uint8(arg1)].field_256 / 1000)
                            continue 
                        if arg1 >= planInfo.length:
                            revert with 'NH{q', 50
                        if planInfo[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / planInfo[2 * uint8(arg1)].field_0:
                            revert with 'NH{q', 17
                        if block.timestamp > (-86400 * planInfo[2 * uint8(arg1)].field_0) - 1:
                            revert with 'NH{q', 17
                        return planInfo[2 * uint8(arg1)].field_256, 
                               u + (s * planInfo[2 * uint8(arg1)].field_256 / 1000),
                               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
                revert with 'NH{q', 17
            if arg1 >= planInfo.length:
                revert with 'NH{q', 50
            if planInfo[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if block.timestamp > (-86400 * planInfo[2 * uint8(arg1)].field_0) - 1:
                revert with 'NH{q', 17
            return planInfo[2 * uint8(arg1)].field_256, var74005, block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
        if arg2 and planInfo[2 * uint8(arg1)].field_256 > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000 and planInfo[2 * uint8(arg1)].field_0 > -1 / arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000:
            revert with 'NH{q', 17
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if planInfo[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if block.timestamp > (-86400 * planInfo[2 * uint8(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        return planInfo[2 * uint8(arg1)].field_256, 
               arg2 * planInfo[2 * uint8(arg1)].field_256 / 1000 * planInfo[2 * uint8(arg1)].field_0,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    if block.timestamp < startUNIX:
        revert with 'NH{q', 17
    if block.timestamp - startUNIX > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 'NH{q', 17
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    if planInfo[2 * uint8(arg1)].field_256 > -((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) - 1:
        revert with 'NH{q', 17
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    if arg1 >= 3:
        if arg1 >= 6:
            if planInfo[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / planInfo[2 * uint8(arg1)].field_0:
                revert with 'NH{q', 17
            if block.timestamp > (-86400 * planInfo[2 * uint8(arg1)].field_0) - 1:
                revert with 'NH{q', 17
            return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
                   0,
                   block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
        if var110003 < planInfo[2 * uint8(arg1)].field_0:
            if arg2 <= -var124001 - 1:
                s = var128001
                t = var128011
                u = var128013
                while not s or planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) <= -1 / s:
                    if u > -((planInfo[2 * uint8(arg1)].field_256 * s) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * s) / 1000) - 1:
                        revert with 'NH{q', 17
                    if t == -1:
                        revert with 'NH{q', 17
                    if arg1 >= planInfo.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    if t + 1 < planInfo[2 * uint8(arg1)].field_0:
                        if arg2 > -u + -((planInfo[2 * uint8(arg1)].field_256 * s) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * s) / 1000) - 1:
                            revert with 'NH{q', 17
                        s = arg2 + u + ((planInfo[2 * uint8(arg1)].field_256 * s) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * s) / 1000)
                        t = t + 1
                        u = u + ((planInfo[2 * uint8(arg1)].field_256 * s) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * s) / 1000)
                        continue 
                    if arg1 >= planInfo.length:
                        revert with 'NH{q', 50
                    if planInfo[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / planInfo[2 * uint8(arg1)].field_0:
                        revert with 'NH{q', 17
                    if block.timestamp > (-86400 * planInfo[2 * uint8(arg1)].field_0) - 1:
                        revert with 'NH{q', 17
                    return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
                           u + ((planInfo[2 * uint8(arg1)].field_256 * s) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * s) / 1000),
                           block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
            revert with 'NH{q', 17
        if arg1 >= planInfo.length:
            revert with 'NH{q', 50
        if planInfo[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / planInfo[2 * uint8(arg1)].field_0:
            revert with 'NH{q', 17
        if block.timestamp > (-86400 * planInfo[2 * uint8(arg1)].field_0) - 1:
            revert with 'NH{q', 17
        return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
               var110005,
               block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
    if arg2 and planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600) > -1 / arg2:
        revert with 'NH{q', 17
    if (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000 and planInfo[2 * uint8(arg1)].field_0 > -1 / (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000:
        revert with 'NH{q', 17
    if arg1 >= planInfo.length:
        revert with 'NH{q', 50
    if planInfo[2 * uint8(arg1)].field_0 and 24 * 3600 > -1 / planInfo[2 * uint8(arg1)].field_0:
        revert with 'NH{q', 17
    if block.timestamp > (-86400 * planInfo[2 * uint8(arg1)].field_0) - 1:
        revert with 'NH{q', 17
    return planInfo[2 * uint8(arg1)].field_256 + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600), 
           (planInfo[2 * uint8(arg1)].field_256 * arg2) + ((5 * block.timestamp) - (5 * startUNIX) / 24 * 3600 * arg2) / 1000 * planInfo[2 * uint8(arg1)].field_0,
           block.timestamp + (24 * 3600 * planInfo[2 * uint8(arg1)].field_0)
}

function withdraw() payable {
    idx = 0
    s = 0
    while idx < userDepositInfo[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 4)
        if userDepositInfo[address(msg.sender)].field_256 >= userDepositInfo[address(msg.sender)][idx].field_1280:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if userDepositInfo[address(msg.sender)][idx].field_0 >= 3:
            mem[0] = sha3(address(msg.sender), 4)
            if block.timestamp <= userDepositInfo[address(msg.sender)][idx].field_1280:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= userDepositInfo[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 4)
            if s > -userDepositInfo[address(msg.sender)][idx].field_768 - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + userDepositInfo[address(msg.sender)][idx].field_768
            continue 
        if userDepositInfo[address(msg.sender)][idx].field_512 and userDepositInfo[address(msg.sender)][idx].field_256 > -1 / userDepositInfo[address(msg.sender)][idx].field_512:
            revert with 'NH{q', 17
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(msg.sender), 4)
        if userDepositInfo[address(msg.sender)][idx].field_1024 > userDepositInfo[address(msg.sender)].field_256:
            if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
                if userDepositInfo[address(msg.sender)][idx].field_1024 >= block.timestamp:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if block.timestamp < userDepositInfo[address(msg.sender)][idx].field_1024:
                    revert with 'NH{q', 17
                if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(msg.sender)][idx].field_1024 > -1 / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                    revert with 'NH{q', 17
                if s > -((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + ((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600)
                continue 
            if idx >= userDepositInfo[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 4)
            if userDepositInfo[address(msg.sender)][idx].field_1024 >= userDepositInfo[address(msg.sender)][idx].field_1280:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if userDepositInfo[address(msg.sender)][idx].field_1280 < userDepositInfo[address(msg.sender)][idx].field_1024:
                revert with 'NH{q', 17
            if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 and userDepositInfo[address(msg.sender)][idx].field_1280 - userDepositInfo[address(msg.sender)][idx].field_1024 > -1 / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                revert with 'NH{q', 17
            if s > -((userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ((userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_1024 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600)
            continue 
        if userDepositInfo[address(msg.sender)][idx].field_1280 >= block.timestamp:
            if userDepositInfo[address(msg.sender)].field_256 >= block.timestamp:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if block.timestamp < userDepositInfo[address(msg.sender)].field_256:
                revert with 'NH{q', 17
            if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 and block.timestamp - userDepositInfo[address(msg.sender)].field_256 > -1 / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
                revert with 'NH{q', 17
            if s > -((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600)
            continue 
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(msg.sender), 4)
        if userDepositInfo[address(msg.sender)].field_256 >= userDepositInfo[address(msg.sender)][idx].field_1280:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if userDepositInfo[address(msg.sender)][idx].field_1280 < userDepositInfo[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000 and userDepositInfo[address(msg.sender)][idx].field_1280 - userDepositInfo[address(msg.sender)].field_256 > -1 / userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000:
            revert with 'NH{q', 17
        if s > -((userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + ((userDepositInfo[address(msg.sender)][idx].field_1280 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_256 * userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600)
        continue 
    if s and 1500 > -1 / s:
        revert with 'NH{q', 17
    if s < 1500 * s / 10000:
        revert with 'NH{q', 17
    if userDepositInfo[address(msg.sender)].field_1536 <= 0:
        if s - (1500 * s / 10000) <= 0:
            revert with 0, 'User has no dividends'
        userDepositInfo[address(msg.sender)].field_256 = block.timestamp
        if eth.balance(this.address) >= s - (1500 * s / 10000):
            call msg.sender with:
               value s - (1500 * s / 10000) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn((s - (1500 * s / 10000)), msg.sender);
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn(eth.balance(this.address), msg.sender);
    else:
        userDepositInfo[address(msg.sender)].field_1536 = 0
        if s - (1500 * s / 10000) > -userDepositInfo[address(msg.sender)].field_1536 - 1:
            revert with 'NH{q', 17
        if s - (1500 * s / 10000) + userDepositInfo[address(msg.sender)].field_1536 <= 0:
            revert with 0, 'User has no dividends'
        userDepositInfo[address(msg.sender)].field_256 = block.timestamp
        if eth.balance(this.address) >= s - (1500 * s / 10000) + userDepositInfo[address(msg.sender)].field_1536:
            call msg.sender with:
               value s - (1500 * s / 10000) + userDepositInfo[address(msg.sender)].field_1536 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn((s - (1500 * s / 10000) + userDepositInfo[address(msg.sender)].field_1536), msg.sender);
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn(eth.balance(this.address), msg.sender);
}



}
