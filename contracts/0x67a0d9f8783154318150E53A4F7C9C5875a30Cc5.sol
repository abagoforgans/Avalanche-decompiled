contract main {




// =====================  Runtime code  =====================


#
#  - sub_6d6631d6(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
array of struct stor101;
array of struct stor102;
array of struct stor103;
array of struct stor104;
array of struct stor105;
uint256 startTime;
uint256 tokenRate;
uint256 totalRedeemed;
uint8 isOpened;
uint8 isFinished; offset 8
uint256 stor109; offset 8
uint256 totalParticipants;
address stor111;
address stor112;
uint256 stor113;
uint256 stor114;
uint256 stor115;
uint256 stor116;
uint256 stor117;
uint256 stor118;
uint256 totalSold;
array of address stor120;
array of address stor121;
array of address stor122;
array of address stor123;
array of address stor124;
mapping of struct stor125;
mapping of uint256 allocation;
mapping of uint256 rewardBalance;

function tokenRate() {
    return tokenRate
}

function rewardBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardBalance[arg1]
}

function isOpened() {
    return bool(isOpened)
}

function startTime() {
    return startTime
}

function isFinished() {
    return bool(isFinished)
}

function owner() {
    return owner
}

function totalSold() {
    return totalSold
}

function totalParticipants() {
    return totalParticipants
}

function allocation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return allocation[arg1]
}

function totalRedeemed() {
    return totalRedeemed
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_e5a87e1e(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor109 = 1
    emit 0xb74bce78: bool(isFinished)
    return bool(isFinished)
}

function getWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(arg1), bool(stor125[address(arg1)].field_160), bool(stor125[address(arg1)].field_168)
}

function sub_754efcc9(?) {
    if stor120.length > -stor121.length - 1:
        revert with 'NH{q', 17
    if stor120.length + stor121.length > -stor122.length - 1:
        revert with 'NH{q', 17
    return (stor120.length + stor121.length + stor122.length)
}

function withdrawBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EWithdrawBalance(msg.sender, eth.balance(this.address));
}

function getTotalTokens() {
    require ext_code.size(stor111)
    staticcall stor111.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function redeemTokens() {
    if not stor125[address(msg.sender)].field_160:
        revert with 0, 'NOT_IN_WHITELIST'
    if not isFinished:
        revert with 0, 'SALE_NOT_FINALIZED'
    if stor125[address(msg.sender)].field_168:
        revert with 0, 'ALREADY_REDEEMED'
    if rewardBalance[address(msg.sender)] <= 0:
        revert with 0, 'INSUFFICIENT'
    require ext_code.size(stor111)
    call stor111.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, rewardBalance[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor125[address(msg.sender)].field_168 = 1
    emit 0x50945140: stor125[address(msg.sender)].field_0
}

function buyTokens() payable {
    if startTime < block.timestamp:
        revert with 0, 'Sale has not started'
    if isFinished:
        revert with 0, 'Sale is finished'
    if msg.value <= 0:
        revert with 0, 'You must pay some AVAX to get tokens'
    if not stor125[address(msg.sender)].field_160:
        revert with 0, 'Cannot participate. You did not register.'
    if allocation[address(msg.sender)] < msg.value:
        revert with 0, 'Amount is greater than allocation balance'
    if not tokenRate:
        revert with 'NH{q', 18
    if totalParticipants > -2:
        revert with 'NH{q', 17
    totalParticipants++
    if rewardBalance[address(msg.sender)] > -(msg.value / tokenRate) - 1:
        revert with 'NH{q', 17
    rewardBalance[address(msg.sender)] += msg.value / tokenRate
    if allocation[address(msg.sender)] < msg.value:
        revert with 'NH{q', 17
    allocation[address(msg.sender)] -= msg.value
    if totalSold > -msg.value - 1:
        revert with 'NH{q', 17
    totalSold += msg.value
    emit 0x207d6b9e: msg.sender, msg.value, block.timestamp
}

function getAllocation() {
    if stor122.length and stor118 > -1 / stor122.length:
        revert with 'NH{q', 17
    if stor121.length and stor117 > -1 / stor121.length:
        revert with 'NH{q', 17
    if stor120.length and stor116 > -1 / stor120.length:
        revert with 'NH{q', 17
    if stor120.length * stor116 > (-1 * stor121.length * stor117) - 1:
        revert with 'NH{q', 17
    if (stor120.length * stor116) + (stor121.length * stor117) > (-1 * stor122.length * stor118) - 1:
        revert with 'NH{q', 17
    require ext_code.size(stor111)
    staticcall stor111.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118):
        revert with 'NH{q', 18
    return (ext_call.return_data[0] / (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118))
}

function registerIDO() {
    if isOpened:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale has started. Can't register again.'
    if startTime > block.timestamp:
        revert with 0, 'Sale has started'
    if stor125[address(msg.sender)].field_160:
        revert with 0, 'You are already registered.'
    require ext_code.size(stor112)
    staticcall stor112.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > stor115:
        stor120.length++
        stor120[stor120.length] = msg.sender
    else:
        if ext_call.return_data[0] <= stor114:
            if ext_call.return_data[0] < stor113:
                stor123.length++
                stor123[stor123.length] = msg.sender
            else:
                if ext_call.return_data[0] > stor114:
                    stor123.length++
                    stor123[stor123.length] = msg.sender
                else:
                    stor122.length++
                    stor122[stor122.length] = msg.sender
        else:
            if ext_call.return_data[0] <= stor115:
                stor121.length++
                stor121[stor121.length] = msg.sender
            else:
                if ext_call.return_data[0] < stor113:
                    stor123.length++
                    stor123[stor123.length] = msg.sender
                else:
                    if ext_call.return_data[0] > stor114:
                        stor123.length++
                        stor123[stor123.length] = msg.sender
                    else:
                        stor122.length++
                        stor122[stor122.length] = msg.sender
    stor125[address(msg.sender)].field_0 = msg.sender
    stor125[address(msg.sender)].field_160 = 1
    stor125[address(msg.sender)].field_168 = 0
    stor124.length++
    stor124[stor124.length] = msg.sender
    rewardBalance[address(msg.sender)] = 0
    allocation[address(msg.sender)] = 0
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    if uint8(stor0.field_8):
        stor112 = arg1
        stor111 = arg2
        stor115 = arg3
        stor114 = arg4
        stor113 = arg5
        stor116 = arg6
        stor117 = arg7
        stor118 = arg8
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor112 = arg1
            stor111 = arg2
            stor115 = arg3
            stor114 = arg4
            stor113 = arg5
            stor116 = arg6
            stor117 = arg7
            stor118 = arg8
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            stor112 = arg1
            stor111 = arg2
            stor115 = arg3
            stor114 = arg4
            stor113 = arg5
            stor116 = arg6
            stor117 = arg7
            stor118 = arg8
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
}

function imageURL() {
    if bool(stor105.length):
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor105.length):
            if bool(stor105.length) == stor105.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor105.length.field_1:
                if 31 < stor105.length.field_1:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while stor105.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length.field_1), data=mem[128 len ceil32(stor105.length.field_1)])
                mem[128] = 256 * stor105.length.field_8
        else:
            if bool(stor105.length) == stor105.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor105.length.field_1:
                if 31 < stor105.length.field_1:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while stor105.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length.field_1), data=mem[128 len ceil32(stor105.length.field_1)])
                mem[128] = 256 * stor105.length.field_8
        mem[ceil32(stor105.length.field_1) + 192 len ceil32(stor105.length.field_1)] = mem[128 len ceil32(stor105.length.field_1)]
        if ceil32(stor105.length.field_1) > stor105.length.field_1:
            mem[ceil32(stor105.length.field_1) + stor105.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor105.length.field_1), data=mem[128 len ceil32(stor105.length.field_1)], mem[(2 * ceil32(stor105.length.field_1)) + 192 len 2 * ceil32(stor105.length.field_1)]), 
    if bool(stor105.length) == stor105.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor105.length):
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor105.length.field_1:
            if 31 < stor105.length.field_1:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while stor105.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    else:
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor105.length.field_1:
            if 31 < stor105.length.field_1:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while stor105.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    mem[ceil32(stor105.length.field_1) + 192 len ceil32(stor105.length.field_1)] = mem[128 len ceil32(stor105.length.field_1)]
    if ceil32(stor105.length.field_1) > stor105.length.field_1:
        mem[ceil32(stor105.length.field_1) + stor105.length.field_1 + 192] = 0
    return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)], mem[(2 * ceil32(stor105.length.field_1)) + 192 len 2 * ceil32(stor105.length.field_1)]), 
}

function projectName() {
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor101.length):
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
        if ceil32(stor101.length.field_1) > stor101.length.field_1:
            mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function sub_03e5979d(?) {
    if bool(stor104.length):
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor104.length):
            if bool(stor104.length) == stor104.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor104.length.field_1:
                if 31 < stor104.length.field_1:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while stor104.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length.field_1), data=mem[128 len ceil32(stor104.length.field_1)])
                mem[128] = 256 * stor104.length.field_8
        else:
            if bool(stor104.length) == stor104.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor104.length.field_1:
                if 31 < stor104.length.field_1:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while stor104.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length.field_1), data=mem[128 len ceil32(stor104.length.field_1)])
                mem[128] = 256 * stor104.length.field_8
        mem[ceil32(stor104.length.field_1) + 192 len ceil32(stor104.length.field_1)] = mem[128 len ceil32(stor104.length.field_1)]
        if ceil32(stor104.length.field_1) > stor104.length.field_1:
            mem[ceil32(stor104.length.field_1) + stor104.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor104.length.field_1), data=mem[128 len ceil32(stor104.length.field_1)], mem[(2 * ceil32(stor104.length.field_1)) + 192 len 2 * ceil32(stor104.length.field_1)]), 
    if bool(stor104.length) == stor104.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor104.length):
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor104.length.field_1:
            if 31 < stor104.length.field_1:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while stor104.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    else:
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor104.length.field_1:
            if 31 < stor104.length.field_1:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while stor104.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    mem[ceil32(stor104.length.field_1) + 192 len ceil32(stor104.length.field_1)] = mem[128 len ceil32(stor104.length.field_1)]
    if ceil32(stor104.length.field_1) > stor104.length.field_1:
        mem[ceil32(stor104.length.field_1) + stor104.length.field_1 + 192] = 0
    return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)], mem[(2 * ceil32(stor104.length.field_1)) + 192 len 2 * ceil32(stor104.length.field_1)]), 
}

function sub_bb27fbe3(?) {
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor102.length):
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
        if ceil32(stor102.length.field_1) > stor102.length.field_1:
            mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function projectDescription() {
    if bool(stor103.length):
        if bool(stor103.length) == stor103.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor103.length):
            if bool(stor103.length) == stor103.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor103.length.field_1:
                if 31 < stor103.length.field_1:
                    mem[128] = uint256(stor103.field_0)
                    idx = 128
                    s = 0
                    while stor103.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor103[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor103.length.field_1), data=mem[128 len ceil32(stor103.length.field_1)])
                mem[128] = 256 * stor103.length.field_8
        else:
            if bool(stor103.length) == stor103.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor103.length.field_1:
                if 31 < stor103.length.field_1:
                    mem[128] = uint256(stor103.field_0)
                    idx = 128
                    s = 0
                    while stor103.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor103[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor103.length.field_1), data=mem[128 len ceil32(stor103.length.field_1)])
                mem[128] = 256 * stor103.length.field_8
        mem[ceil32(stor103.length.field_1) + 192 len ceil32(stor103.length.field_1)] = mem[128 len ceil32(stor103.length.field_1)]
        if ceil32(stor103.length.field_1) > stor103.length.field_1:
            mem[ceil32(stor103.length.field_1) + stor103.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor103.length.field_1), data=mem[128 len ceil32(stor103.length.field_1)], mem[(2 * ceil32(stor103.length.field_1)) + 192 len 2 * ceil32(stor103.length.field_1)]), 
    if bool(stor103.length) == stor103.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor103.length):
        if bool(stor103.length) == stor103.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor103.length.field_1:
            if 31 < stor103.length.field_1:
                mem[128] = uint256(stor103.field_0)
                idx = 128
                s = 0
                while stor103.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor103[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)])
            mem[128] = 256 * stor103.length.field_8
    else:
        if bool(stor103.length) == stor103.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor103.length.field_1:
            if 31 < stor103.length.field_1:
                mem[128] = uint256(stor103.field_0)
                idx = 128
                s = 0
                while stor103.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor103[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)])
            mem[128] = 256 * stor103.length.field_8
    mem[ceil32(stor103.length.field_1) + 192 len ceil32(stor103.length.field_1)] = mem[128 len ceil32(stor103.length.field_1)]
    if ceil32(stor103.length.field_1) > stor103.length.field_1:
        mem[ceil32(stor103.length.field_1) + stor103.length.field_1 + 192] = 0
    return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)], mem[(2 * ceil32(stor103.length.field_1)) + 192 len 2 * ceil32(stor103.length.field_1)]), 
}

function openSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'start time should be greater than current time'
    mem[100] = this.address
    require ext_code.size(stor111)
    staticcall stor111.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Total token for sale must greater than zero'
    if stor122.length and stor118 > -1 / stor122.length:
        revert with 'NH{q', 17
    if stor121.length and stor117 > -1 / stor121.length:
        revert with 'NH{q', 17
    if stor120.length and stor116 > -1 / stor120.length:
        revert with 'NH{q', 17
    if stor120.length * stor116 > (-1 * stor121.length * stor117) - 1:
        revert with 'NH{q', 17
    if (stor120.length * stor116) + (stor121.length * stor117) > (-1 * stor122.length * stor118) - 1:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(stor111)
    staticcall stor111.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118):
        revert with 'NH{q', 18
    idx = 0
    while idx < stor124.length:
        mem[0] = 124
        mem[mem[64] + 4] = stor124[idx]
        require ext_code.size(stor112)
        staticcall stor112.0x70a08231 with:
                gas gas_remaining wei
               args stor124[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_35] == mem[_35]
        if mem[_35] > stor115:
            if stor116 and stor120.length > -1 / stor116:
                revert with 'NH{q', 17
            if stor116 * stor120.length and ext_call.return_data[0] / (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118) > -1 / stor116 * stor120.length:
                revert with 'NH{q', 17
            mem[0] = stor124[idx]
            mem[32] = 126
            allocation[stor124[idx]] = stor116 * stor120.length * ext_call.return_data[0] / (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118)
        else:
            if mem[_35] <= stor114:
                if mem[_35] < stor113:
                    mem[0] = stor124[idx]
                    mem[32] = 126
                    allocation[stor124[idx]] = ext_call.return_data[0] / (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118)
                else:
                    if mem[_35] > stor114:
                        mem[0] = stor124[idx]
                        mem[32] = 126
                        allocation[stor124[idx]] = ext_call.return_data[0] / (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118)
                    else:
                        if stor118 and stor122.length > -1 / stor118:
                            revert with 'NH{q', 17
                        if stor118 * stor122.length and ext_call.return_data[0] / (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118) > -1 / stor118 * stor122.length:
                            revert with 'NH{q', 17
                        mem[0] = stor124[idx]
                        mem[32] = 126
                        allocation[stor124[idx]] = stor118 * stor122.length * ext_call.return_data[0] / (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118)
            else:
                if mem[_35] <= stor115:
                    if stor117 and stor121.length > -1 / stor117:
                        revert with 'NH{q', 17
                    if stor117 * stor121.length and ext_call.return_data[0] / (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118) > -1 / stor117 * stor121.length:
                        revert with 'NH{q', 17
                    mem[0] = stor124[idx]
                    mem[32] = 126
                    allocation[stor124[idx]] = stor117 * stor121.length * ext_call.return_data[0] / (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118)
                else:
                    if mem[_35] < stor113:
                        mem[0] = stor124[idx]
                        mem[32] = 126
                        allocation[stor124[idx]] = ext_call.return_data[0] / (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118)
                    else:
                        if mem[_35] > stor114:
                            mem[0] = stor124[idx]
                            mem[32] = 126
                            allocation[stor124[idx]] = ext_call.return_data[0] / (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118)
                        else:
                            if stor118 and stor122.length > -1 / stor118:
                                revert with 'NH{q', 17
                            if stor118 * stor122.length and ext_call.return_data[0] / (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118) > -1 / stor118 * stor122.length:
                                revert with 'NH{q', 17
                            mem[0] = stor124[idx]
                            mem[32] = 126
                            allocation[stor124[idx]] = stor118 * stor122.length * ext_call.return_data[0] / (stor120.length * stor116) + (stor121.length * stor117) + (stor122.length * stor118)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    startTime = arg1
    isOpened = 1
    stor109 = 0
    emit EOpenSale(startTime, bool(isOpened));
}



}
