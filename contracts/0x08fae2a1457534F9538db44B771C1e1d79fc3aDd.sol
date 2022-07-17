contract main {




// =====================  Runtime code  =====================


const sub_19a4a3f3(?) = (48 * 24 * 3600)

const sub_276fa9b2(?) = 15 * 10^15

const sub_4758890c(?) = 25 * 10^18

const sub_4a842cd3(?) = 250

const sub_5b866e5f(?) = 10^16

const getContractBalance = eth.balance(this.address)

const sub_78fe7a93(?) = 100

const sub_d238fe3a(?) = 100

const sub_e9b2a820(?) = 25 * 10^18

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const REFERRAL_PERCENTS = 25

const PROJECT_FEE = 100

const CONTRACT_FEE = 30


address owner;
uint8 stor1; offset 160
uint8 stor1; offset 168
address devAddress;
uint256 totalInvested;
uint256 totalFunded;
uint256 sub_9e540a3c;
uint256 totalUsers;
uint256 sub_8a321b41;
array of struct userDepositInfo;
array of struct planInfo;
address commissionWalletAddress;

function sub_07141d91(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(userDepositInfo[address(arg1)].field_2568), 
           userDepositInfo[address(arg1)].field_2560,
           userDepositInfo[address(arg1)].field_2816,
           userDepositInfo[address(arg1)].field_2304
}

function sub_12ec21dd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return userDepositInfo[address(arg1)].field_256
}

function started() {
    return bool(uint8(stor1.field_168))
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_776
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_1536
}

function totalInvested() {
    return totalInvested
}

function getUserInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 0, 50
        if s > !userDepositInfo[address(arg1)][idx].field_256:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_256
        continue 
    idx = 0
    t = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        if userDepositInfo[address(arg1)][idx].field_0 >= planInfo.length:
            revert with 0, 50
        if planInfo[stor7[address(arg1)][idx].field_0].field_0 and 24 * 3600 > -1 / planInfo[stor7[address(arg1)][idx].field_0].field_0:
            revert with 0, 17
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 7)
        if userDepositInfo[address(arg1)][idx].field_512 > !(24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
            revert with 0, 17
        if userDepositInfo[address(arg1)].field_1024 >= userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 0, 50
        if userDepositInfo[address(arg1)][idx].field_0 >= planInfo.length:
            revert with 0, 50
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 0, 50
        if userDepositInfo[address(arg1)][idx].field_256 and planInfo[stor7[address(arg1)][idx].field_0].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_256:
            revert with 0, 17
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 7)
        if userDepositInfo[address(arg1)][idx].field_512 <= userDepositInfo[address(arg1)].field_1024:
            if userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < block.timestamp:
                if userDepositInfo[address(arg1)].field_1024 >= userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < userDepositInfo[address(arg1)].field_1024:
                    revert with 0, 17
                if userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) - userDepositInfo[address(arg1)].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                    revert with 0, 17
                if t > !((userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + ((userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600)
                continue 
            if userDepositInfo[address(arg1)].field_1024 >= block.timestamp:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t
                continue 
            if block.timestamp < userDepositInfo[address(arg1)].field_1024:
                revert with 0, 17
            if userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                revert with 0, 17
            if t > !((block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t + ((block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600)
            continue 
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 7)
        if userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < block.timestamp:
            if userDepositInfo[address(arg1)][idx].field_512 >= userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t
                continue 
            if userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < userDepositInfo[address(arg1)][idx].field_512:
                revert with 0, 17
            if userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 and 24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 > -1 / userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                revert with 0, 17
            if t > !((userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t + ((userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600)
            continue 
        if userDepositInfo[address(arg1)][idx].field_512 >= block.timestamp:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if block.timestamp < userDepositInfo[address(arg1)][idx].field_512:
            revert with 0, 17
        if userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)][idx].field_512 > -1 / userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
            revert with 0, 17
        if t > !((block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + ((block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600)
        continue 
    if t > !userDepositInfo[address(arg1)].field_1280:
        revert with 0, 17
    return userDepositInfo[address(arg1)].field_1024, 
           bool(userDepositInfo[address(arg1)].field_2568),
           userDepositInfo[address(arg1)].field_256,
           userDepositInfo[address(arg1)].field_1536,
           s * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0,
           userDepositInfo[address(arg1)].field_2048,
           userDepositInfo[address(arg1)].field_1792,
           t + userDepositInfo[address(arg1)].field_1280
}

function sub_8a321b41(?) {
    return sub_8a321b41
}

function owner() {
    return owner
}

function dev() {
    return devAddress
}

function commissionWallet() {
    return commissionWalletAddress
}

function sub_9e540a3c(?) {
    return sub_9e540a3c
}

function totalFunded() {
    return totalFunded
}

function getPlanInfo(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= planInfo.length:
        revert with 0, 50
    return planInfo[2 * uint8(arg1)].field_0, planInfo[2 * uint8(arg1)].field_256
}

function sub_b0a4fe7a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return userDepositInfo[address(arg1)][2][address(arg2)].field_0
}

function totalUsers() {
    return totalUsers
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= userDepositInfo[address(arg1)].field_0:
        revert with 0, 50
    if userDepositInfo[address(arg1)][arg2].field_0 >= planInfo.length:
        revert with 0, 50
    if arg2 >= userDepositInfo[address(arg1)].field_0:
        revert with 0, 50
    if userDepositInfo[address(arg1)][arg2].field_0 >= planInfo.length:
        revert with 0, 50
    if planInfo[stor7[address(arg1)][arg2].field_0].field_0 and 24 * 3600 > -1 / planInfo[stor7[address(arg1)][arg2].field_0].field_0:
        revert with 0, 17
    if arg2 >= userDepositInfo[address(arg1)].field_0:
        revert with 0, 50
    if userDepositInfo[address(arg1)][arg2].field_512 > !(24 * 3600 * planInfo[stor7[address(arg1)][arg2].field_0].field_0):
        revert with 0, 17
    return userDepositInfo[address(arg1)][arg2].field_0, 
           planInfo[stor7[address(arg1)][arg2].field_0].field_256,
           userDepositInfo[address(arg1)][arg2].field_256,
           userDepositInfo[address(arg1)][arg2].field_512,
           userDepositInfo[address(arg1)][arg2].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][arg2].field_0].field_0)
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_1024
}

function sub_d8301bba(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return userDepositInfo[address(arg1)].field_1792
}

function sub_dc625a19(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return userDepositInfo[address(arg1)].field_768
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_1280
}

function getUserTotalWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDepositInfo[address(arg1)].field_2048
}

function _fallback() payable {
    revert
}

function sub_076b44d3(?) {
    if devAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dev function: caller is not the dev'
    emit 0x814169d4: devAddress, 0
    devAddress = 0
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userDepositInfo[address(arg1)].field_1536 < userDepositInfo[address(arg1)].field_1280:
        revert with 0, 17
    return (userDepositInfo[address(arg1)].field_1536 - userDepositInfo[address(arg1)].field_1280)
}

function transferDev(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dev function: new dev is the zero address'
    emit 0x814169d4: devAddress, arg1
    devAddress = arg1
}

function fundContract() payable {
    if 2 == uint8(stor1.field_160):
        revert with 0, 'ReentrancyGuard: reentrant call'
    uint8(stor1.field_160) = 2
    if True and not uint8(stor1.field_168) and True:
        if commissionWalletAddress != msg.sender:
            revert with 0, 'Not started yet'
        uint8(stor1.field_168) = 1
    if totalFunded > !msg.value:
        revert with 0, 17
    totalFunded += msg.value
    emit Funded(msg.value, msg.sender);
    uint8(stor1.field_160) = 1
}

function sub_3bfff2e8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if devAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dev function: caller is not the dev'
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner: caller is not the owner'
    require address(arg1)
    if uint8(arg2) < 25:
        revert with 0, 'Percent not allowed'
    if uint8(arg2) > 100:
        revert with 0, 'Percent not allowed'
    userDepositInfo[address(arg1)].field_768 = uint8(arg2)
}

function invest(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 2 == uint8(stor1.field_160):
        revert with 0, 'ReentrancyGuard: reentrant call'
    uint8(stor1.field_160) = 2
    if True and not uint8(stor1.field_168) and True:
        if commissionWalletAddress != msg.sender:
            revert with 0, 'Not started yet'
        uint8(stor1.field_168) = 1
    if arg2 >= 1:
        revert with 0, 'Invalid plan'
    if msg.value < 10^16:
        revert with 0, 'Amount less than authorized'
    if msg.value > 25 * 10^18:
        revert with 0, 'Amount greater than authorized'
    if msg.value and 100 > -1 / msg.value:
        revert with 0, 17
    call commissionWalletAddress with:
       value 100 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_9e540a3c > !(100 * msg.value / 1000):
        revert with 0, 17
    sub_9e540a3c += 100 * msg.value / 1000
    if not userDepositInfo[msg.sender].field_0:
        if userDepositInfo[address(arg1)].field_0:
            userDepositInfo[msg.sender].field_776 = arg1
            userDepositInfo[address(arg1)][2][msg.sender].field_0 = 0
            if userDepositInfo[address(arg1)].field_256 > -2:
                revert with 0, 17
            userDepositInfo[address(arg1)].field_256++
        userDepositInfo[msg.sender].field_1024 = block.timestamp
        userDepositInfo[address(msg.sender)].field_768 = 25
        if totalUsers == -1:
            revert with 0, 17
        totalUsers++
    if msg.value <= userDepositInfo[msg.sender].field_2816:
        if userDepositInfo[msg.sender].field_2816 < msg.value:
            revert with 0, 17
        userDepositInfo[msg.sender].field_2816 -= msg.value
    else:
        userDepositInfo[msg.sender].field_2816 = 0
        userDepositInfo[msg.sender].field_2304 = 0
        userDepositInfo[msg.sender].field_2560 = 0
    if userDepositInfo[msg.sender].field_776:
        if msg.value and userDepositInfo[userDepositInfo[msg.sender].field_768].field_768 > -1 / msg.value:
            revert with 0, 17
        if userDepositInfo[userDepositInfo[msg.sender].field_768].field_1280 > !(msg.value * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768 / 1000):
            revert with 0, 17
        userDepositInfo[userDepositInfo[msg.sender].field_768].field_1280 += msg.value * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768 / 1000
        if userDepositInfo[userDepositInfo[msg.sender].field_768].field_1536 > !(msg.value * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768 / 1000):
            revert with 0, 17
        userDepositInfo[userDepositInfo[msg.sender].field_768].field_1536 += msg.value * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768 / 1000
        if userDepositInfo[userDepositInfo[msg.sender].field_768][2][msg.sender].field_0 > !(msg.value * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768 / 1000):
            revert with 0, 17
        userDepositInfo[userDepositInfo[msg.sender].field_768][2][msg.sender].field_0 += msg.value * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768 / 1000
    userDepositInfo[msg.sender].field_0++
    userDepositInfo[msg.sender][userDepositInfo[msg.sender].field_0].field_0 = arg2
    userDepositInfo[msg.sender][userDepositInfo[msg.sender].field_0].field_256 = msg.value
    userDepositInfo[msg.sender][userDepositInfo[msg.sender].field_0].field_512 = block.timestamp
    if totalInvested > !msg.value:
        revert with 0, 17
    totalInvested += msg.value
    emit 0xee99455e: arg2 << 248, msg.value, msg.sender
    uint8(stor1.field_160) = 1
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 0, 50
        if s > !userDepositInfo[address(arg1)][idx].field_256:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        s = s + userDepositInfo[address(arg1)][idx].field_256
        continue 
    return (s * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0 * userDepositInfo[address(arg1)].field_0)
}

function sub_8a6484f4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < userDepositInfo[address(arg1)].field_0:
        if userDepositInfo[address(arg1)][idx].field_0 >= planInfo.length:
            revert with 0, 50
        if planInfo[stor7[address(arg1)][idx].field_0].field_0 and 24 * 3600 > -1 / planInfo[stor7[address(arg1)][idx].field_0].field_0:
            revert with 0, 17
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 7)
        if userDepositInfo[address(arg1)][idx].field_512 > !(24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
            revert with 0, 17
        if userDepositInfo[address(arg1)].field_1024 >= userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 0, 50
        if userDepositInfo[address(arg1)][idx].field_0 >= planInfo.length:
            revert with 0, 50
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 0, 50
        if userDepositInfo[address(arg1)][idx].field_256 and planInfo[stor7[address(arg1)][idx].field_0].field_256 > -1 / userDepositInfo[address(arg1)][idx].field_256:
            revert with 0, 17
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 7)
        if userDepositInfo[address(arg1)][idx].field_512 <= userDepositInfo[address(arg1)].field_1024:
            if userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < block.timestamp:
                if userDepositInfo[address(arg1)].field_1024 >= userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < userDepositInfo[address(arg1)].field_1024:
                    revert with 0, 17
                if userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 and userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) - userDepositInfo[address(arg1)].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                    revert with 0, 17
                if s > !((userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600)
                continue 
            if userDepositInfo[address(arg1)].field_1024 >= block.timestamp:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if block.timestamp < userDepositInfo[address(arg1)].field_1024:
                revert with 0, 17
            if userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)].field_1024 > -1 / userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                revert with 0, 17
            if s > !((block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)].field_1024 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600)
            continue 
        if idx >= userDepositInfo[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 7)
        if userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < block.timestamp:
            if userDepositInfo[address(arg1)][idx].field_512 >= userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if userDepositInfo[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < userDepositInfo[address(arg1)][idx].field_512:
                revert with 0, 17
            if userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 and 24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 > -1 / userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                revert with 0, 17
            if s > !((userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600)
            continue 
        if userDepositInfo[address(arg1)][idx].field_512 >= block.timestamp:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if block.timestamp < userDepositInfo[address(arg1)][idx].field_512:
            revert with 0, 17
        if userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 and block.timestamp - userDepositInfo[address(arg1)][idx].field_512 > -1 / userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
            revert with 0, 17
        if s > !((block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((block.timestamp * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(arg1)][idx].field_512 * userDepositInfo[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600)
        continue 
    if s > !userDepositInfo[address(arg1)].field_1280:
        revert with 0, 17
    return (s + userDepositInfo[address(arg1)].field_1280)
}

function reInvest() {
    if 2 == uint8(stor1.field_160):
        revert with 0, 'ReentrancyGuard: reentrant call'
    uint8(stor1.field_160) = 2
    idx = 0
    s = 0
    while idx < userDepositInfo[address(msg.sender)].field_0:
        if userDepositInfo[address(msg.sender)][idx].field_0 >= planInfo.length:
            revert with 0, 50
        if planInfo[stor7[address(msg.sender)][idx].field_0].field_0 and 24 * 3600 > -1 / planInfo[stor7[address(msg.sender)][idx].field_0].field_0:
            revert with 0, 17
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(msg.sender), 7)
        if userDepositInfo[address(msg.sender)][idx].field_512 > !(24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
            revert with 0, 17
        if userDepositInfo[address(msg.sender)].field_1024 >= userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 0, 50
        if userDepositInfo[address(msg.sender)][idx].field_0 >= planInfo.length:
            revert with 0, 50
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 0, 50
        if userDepositInfo[address(msg.sender)][idx].field_256 and planInfo[stor7[address(msg.sender)][idx].field_0].field_256 > -1 / userDepositInfo[address(msg.sender)][idx].field_256:
            revert with 0, 17
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(msg.sender), 7)
        if userDepositInfo[address(msg.sender)][idx].field_512 <= userDepositInfo[address(msg.sender)].field_1024:
            if userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                if userDepositInfo[address(msg.sender)].field_1024 >= userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) < userDepositInfo[address(msg.sender)].field_1024:
                    revert with 0, 17
                if userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 and userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) - userDepositInfo[address(msg.sender)].field_1024 > -1 / userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                    revert with 0, 17
                if s > !((userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_1024 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_1024 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600)
                continue 
            if userDepositInfo[address(msg.sender)].field_1024 >= block.timestamp:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if block.timestamp < userDepositInfo[address(msg.sender)].field_1024:
                revert with 0, 17
            if userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 and block.timestamp - userDepositInfo[address(msg.sender)].field_1024 > -1 / userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                revert with 0, 17
            if s > !((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_1024 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_1024 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600)
            continue 
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(msg.sender), 7)
        if userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
            if userDepositInfo[address(msg.sender)][idx].field_512 >= userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) < userDepositInfo[address(msg.sender)][idx].field_512:
                revert with 0, 17
            if userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 and 24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 > -1 / userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                revert with 0, 17
            if s > !((userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600)
            continue 
        if userDepositInfo[address(msg.sender)][idx].field_512 >= block.timestamp:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if block.timestamp < userDepositInfo[address(msg.sender)][idx].field_512:
            revert with 0, 17
        if userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 and block.timestamp - userDepositInfo[address(msg.sender)][idx].field_512 > -1 / userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
            revert with 0, 17
        if s > !((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600)
        continue 
    if s > !userDepositInfo[address(msg.sender)].field_1280:
        revert with 0, 17
    if s + userDepositInfo[address(msg.sender)].field_1280 <= userDepositInfo[msg.sender].field_2816:
        if userDepositInfo[msg.sender].field_2816 < s + userDepositInfo[address(msg.sender)].field_1280:
            revert with 0, 17
        userDepositInfo[msg.sender].field_2816 = userDepositInfo[msg.sender].field_2816 - s - userDepositInfo[address(msg.sender)].field_1280
    else:
        userDepositInfo[msg.sender].field_2816 = 0
        userDepositInfo[msg.sender].field_2304 = 0
        userDepositInfo[msg.sender].field_2560 = 0
    if userDepositInfo[msg.sender].field_776:
        if s + userDepositInfo[address(msg.sender)].field_1280 and userDepositInfo[userDepositInfo[msg.sender].field_768].field_768 > -1 / s + userDepositInfo[address(msg.sender)].field_1280:
            revert with 0, 17
        if userDepositInfo[userDepositInfo[msg.sender].field_768].field_1280 > !((s * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768) + (userDepositInfo[address(msg.sender)].field_1280 * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768) / 1000):
            revert with 0, 17
        userDepositInfo[userDepositInfo[msg.sender].field_768].field_1280 += (s * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768) + (userDepositInfo[address(msg.sender)].field_1280 * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768) / 1000
        if userDepositInfo[userDepositInfo[msg.sender].field_768].field_1536 > !((s * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768) + (userDepositInfo[address(msg.sender)].field_1280 * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768) / 1000):
            revert with 0, 17
        userDepositInfo[userDepositInfo[msg.sender].field_768].field_1536 += (s * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768) + (userDepositInfo[address(msg.sender)].field_1280 * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768) / 1000
        if userDepositInfo[userDepositInfo[msg.sender].field_768][2][msg.sender].field_0 > !((s * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768) + (userDepositInfo[address(msg.sender)].field_1280 * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768) / 1000):
            revert with 0, 17
        userDepositInfo[userDepositInfo[msg.sender].field_768][2][msg.sender].field_0 += (s * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768) + (userDepositInfo[address(msg.sender)].field_1280 * userDepositInfo[userDepositInfo[msg.sender].field_768].field_768) / 1000
    userDepositInfo[msg.sender].field_0++
    userDepositInfo[msg.sender][userDepositInfo[msg.sender].field_0].field_0 = 0
    userDepositInfo[msg.sender][userDepositInfo[msg.sender].field_0].field_256 = 0
    userDepositInfo[msg.sender][userDepositInfo[msg.sender].field_0].field_256 = s + userDepositInfo[address(msg.sender)].field_1280
    userDepositInfo[msg.sender][userDepositInfo[msg.sender].field_0].field_512 = block.timestamp
    userDepositInfo[msg.sender].field_1024 = block.timestamp
    if userDepositInfo[msg.sender].field_1792 > !(s + userDepositInfo[address(msg.sender)].field_1280):
        revert with 0, 17
    userDepositInfo[msg.sender].field_1792 = userDepositInfo[msg.sender].field_1792 + s + userDepositInfo[address(msg.sender)].field_1280
    userDepositInfo[msg.sender].field_1280 = 0
    emit ReInvest(0, s + userDepositInfo[address(msg.sender)].field_1280, msg.sender);
    uint8(stor1.field_160) = 1
}

function withdraw() {
    if 2 == uint8(stor1.field_160):
        revert with 0, 'ReentrancyGuard: reentrant call'
    uint8(stor1.field_160) = 2
    if userDepositInfo[msg.sender].field_1024 > -86401:
        revert with 0, 17
    if userDepositInfo[msg.sender].field_1024 + (24 * 3600) > block.timestamp:
        revert with 0, 'Can only withdraw every 24 hours'
    idx = 0
    s = 0
    while idx < userDepositInfo[address(msg.sender)].field_0:
        if userDepositInfo[address(msg.sender)][idx].field_0 >= planInfo.length:
            revert with 0, 50
        if planInfo[stor7[address(msg.sender)][idx].field_0].field_0 and 24 * 3600 > -1 / planInfo[stor7[address(msg.sender)][idx].field_0].field_0:
            revert with 0, 17
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(msg.sender), 7)
        if userDepositInfo[address(msg.sender)][idx].field_512 > !(24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
            revert with 0, 17
        if userDepositInfo[address(msg.sender)].field_1024 >= userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 0, 50
        if userDepositInfo[address(msg.sender)][idx].field_0 >= planInfo.length:
            revert with 0, 50
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 0, 50
        if userDepositInfo[address(msg.sender)][idx].field_256 and planInfo[stor7[address(msg.sender)][idx].field_0].field_256 > -1 / userDepositInfo[address(msg.sender)][idx].field_256:
            revert with 0, 17
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(msg.sender), 7)
        if userDepositInfo[address(msg.sender)][idx].field_512 <= userDepositInfo[address(msg.sender)].field_1024:
            if userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                if userDepositInfo[address(msg.sender)].field_1024 >= userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) < userDepositInfo[address(msg.sender)].field_1024:
                    revert with 0, 17
                if userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 and userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) - userDepositInfo[address(msg.sender)].field_1024 > -1 / userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                    revert with 0, 17
                if s > !((userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_1024 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_1024 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600)
                continue 
            if userDepositInfo[address(msg.sender)].field_1024 >= block.timestamp:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if block.timestamp < userDepositInfo[address(msg.sender)].field_1024:
                revert with 0, 17
            if userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 and block.timestamp - userDepositInfo[address(msg.sender)].field_1024 > -1 / userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                revert with 0, 17
            if s > !((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_1024 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)].field_1024 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600)
            continue 
        if idx >= userDepositInfo[address(msg.sender)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(msg.sender), 7)
        if userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
            if userDepositInfo[address(msg.sender)][idx].field_512 >= userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if userDepositInfo[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) < userDepositInfo[address(msg.sender)][idx].field_512:
                revert with 0, 17
            if userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 and 24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 > -1 / userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                revert with 0, 17
            if s > !((userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600)
            continue 
        if userDepositInfo[address(msg.sender)][idx].field_512 >= block.timestamp:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if block.timestamp < userDepositInfo[address(msg.sender)][idx].field_512:
            revert with 0, 17
        if userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 and block.timestamp - userDepositInfo[address(msg.sender)][idx].field_512 > -1 / userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
            revert with 0, 17
        if s > !((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((block.timestamp * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userDepositInfo[address(msg.sender)][idx].field_512 * userDepositInfo[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600)
        continue 
    if s > !userDepositInfo[address(msg.sender)].field_1280:
        revert with 0, 17
    if eth.balance(this.address) and 250 > -1 / eth.balance(this.address):
        revert with 0, 17
    if s + userDepositInfo[address(msg.sender)].field_1280 and 30 > -1 / s + userDepositInfo[address(msg.sender)].field_1280:
        revert with 0, 17
    if s + userDepositInfo[address(msg.sender)].field_1280 < (30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000:
        revert with 0, 17
    if userDepositInfo[msg.sender].field_2560 > 1:
        userDepositInfo[msg.sender].field_2568 = 1
        if s + userDepositInfo[address(msg.sender)].field_1280 - ((30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000) and 100 > -1 / s + userDepositInfo[address(msg.sender)].field_1280 - ((30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000):
            revert with 0, 17
        userDepositInfo[msg.sender].field_2816 = (100 * s) + (100 * userDepositInfo[address(msg.sender)].field_1280) - (100 * (30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000) / 1000
        if userDepositInfo[msg.sender].field_2304:
            if block.timestamp >= userDepositInfo[msg.sender].field_2304:
                userDepositInfo[msg.sender].field_2568 = 0
                if not sub_8a321b41:
                    revert with 0, 17
                sub_8a321b41--
        else:
            if block.timestamp > -172801:
                revert with 0, 17
            userDepositInfo[msg.sender].field_2304 = block.timestamp + (48 * 24 * 3600)
            if sub_8a321b41 == -1:
                revert with 0, 17
            sub_8a321b41++
    if userDepositInfo[msg.sender].field_2568:
        revert with 0, 'Address is blocked'
    if s + userDepositInfo[address(msg.sender)].field_1280 - ((30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000) <= 0:
        revert with 0, 'User has no dividends'
    if s + userDepositInfo[address(msg.sender)].field_1280 - ((30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000) <= 15 * 10^15:
        revert with 0, 'Amount less than authorized'
    if 250 * eth.balance(this.address) / 1000 <= s + userDepositInfo[address(msg.sender)].field_1280 - ((30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000):
        revert with 0, 'Dividends amount not allowed'
    if s + userDepositInfo[address(msg.sender)].field_1280 - ((30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000) <= 25 * 10^18:
        userDepositInfo[msg.sender].field_1280 = 0
        userDepositInfo[msg.sender].field_1024 = block.timestamp
        if userDepositInfo[msg.sender].field_2048 > !(s + userDepositInfo[address(msg.sender)].field_1280 - ((30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000)):
            revert with 0, 17
        userDepositInfo[msg.sender].field_2048 = userDepositInfo[msg.sender].field_2048 + s + userDepositInfo[address(msg.sender)].field_1280 - ((30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000)
        call msg.sender with:
           value s + userDepositInfo[address(msg.sender)].field_1280 - ((30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn((s + userDepositInfo[address(msg.sender)].field_1280 - ((30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000)), msg.sender);
    else:
        if s + userDepositInfo[address(msg.sender)].field_1280 - ((30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000) < 25 * 10^18:
            revert with 0, 17
        userDepositInfo[msg.sender].field_1280 = s + userDepositInfo[address(msg.sender)].field_1280 + -((30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000) - 25 * 10^18
        userDepositInfo[msg.sender].field_1536 = s + userDepositInfo[address(msg.sender)].field_1280 + -((30 * s) + (30 * userDepositInfo[address(msg.sender)].field_1280) / 1000) - 25 * 10^18
        userDepositInfo[msg.sender].field_1024 = block.timestamp
        if userDepositInfo[msg.sender].field_2048 > -25000000000000000001:
            revert with 0, 17
        userDepositInfo[msg.sender].field_2048 += 25 * 10^18
        call msg.sender with:
           value 25 * 10^18 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(25 * 10^18, msg.sender);
    uint8(stor1.field_160) = 1
}



}
