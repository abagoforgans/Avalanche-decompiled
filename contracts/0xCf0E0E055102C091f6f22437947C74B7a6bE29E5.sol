contract main {




// =====================  Runtime code  =====================


#
#  - register(uint256 arg1, uint256 arg2)
#
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
uint8 stor4; offset 160
uint128 stor4; offset 160
address stor4;
array of struct phaseInfo;
address utilityTokenAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function getUtilityToken() {
    return utilityTokenAddress
}

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getPhaseInfo(uint256 arg1) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    require arg1 < phaseInfo.length
    mem[1088] = phaseInfo[arg1].field_0
    idx = 1088
    s = 0
    while phaseInfo[arg1].length + 1056 > idx:
        mem[idx + 32] = phaseInfo[(14 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=phaseInfo[arg1].length, data=mem[1088 len phaseInfo[arg1].length]), 
           phaseInfo[arg1].field_256,
           phaseInfo[arg1].field_512,
           phaseInfo[arg1].field_768,
           phaseInfo[arg1].field_1024,
           phaseInfo[arg1].field_1280,
           phaseInfo[arg1].field_1536,
           phaseInfo[arg1].field_1792,
           phaseInfo[arg1].field_2048,
           bool(phaseInfo[arg1].field_2304),
           bool(phaseInfo[arg1].field_2312),
           phaseInfo[arg1].field_2560,
           phaseInfo[arg1].field_3328
}

function sub_cfca7a78(?) {
    if arg2 >= phaseInfo.length:
        revert with 0, 'invalid phaseIndex'
    if arg2 >= sub_cfca7a78.length:
        revert with 0, 'invalid phaseIndex'
    return uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(arg1)]), 
           uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]),
           uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 1][address(arg1)]),
           uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)])
}

function getPhaseCount() {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    return phaseInfo.length
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isContractPaused() {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    return bool(uint8(stor4.field_160))
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (_totalSupply - balanceOf[0])
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg1 + arg2 >= arg1
    return (arg1 + arg2)
}

function safeDiv(uint256 arg1, uint256 arg2) {
    require arg2 > 0
    require arg2
    return (arg1 / arg2)
}

function ping() {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    return 'Good Morning Dr. Chandra'
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2)
}

function setUtilityToken(address arg1) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    utilityTokenAddress = arg1
    return 1
}

function setPause(bool arg1) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
    return 1
}

function approve(address arg1, uint256 arg2) {
    if uint8(stor4.field_160):
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_be6a6285(?) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    require _totalSupply + arg1 >= _totalSupply
    _totalSupply += arg1
    require balanceOf[address(stor4.field_0)] + arg1 >= balanceOf[address(stor4.field_0)]
    balanceOf[address(stor4.field_0)] += arg1
    return 0
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor4.field_160):
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setIsActive(uint256 arg1, bool arg2) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    if arg1 >= phaseInfo.length:
        revert with 0, 'phaseIndex out of bounds'
    if arg1 >= sub_cfca7a78.length:
        revert with 0, 'phaseIndex out of bounds'
    require arg1 < phaseInfo.length
    phaseInfo[arg1].field_2312 = Mask(248, 0, arg2)
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor4.field_160):
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if uint8(stor4.field_160):
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_30d5e8bd(?) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    if arg1 >= phaseInfo.length:
        revert with 0, 'invalid phaseIndex'
    if arg1 >= sub_cfca7a78.length:
        revert with 0, 'invalid phaseIndex'
    if uint256(sub_cfca7a78[arg1]):
        mem[128 len 32 * uint256(sub_cfca7a78[arg1])] = code.data[24347 len 32 * uint256(sub_cfca7a78[arg1])]
    idx = 0
    while idx < uint256(sub_cfca7a78[arg1]):
        mem[0] = (5 * arg1) + sha3(6)
        require idx < uint256(sub_cfca7a78[arg1])
        mem[(32 * idx) + 128] = address(sub_cfca7a78[(5 * arg1) + idx])
        idx = idx + 1
        continue 
    mem[(32 * uint256(sub_cfca7a78[arg1])) + 224 len floor32(uint256(sub_cfca7a78[arg1]))] = mem[128 len floor32(uint256(sub_cfca7a78[arg1]))]
    return uint256(sub_cfca7a78[arg1]), 
           Array(len=uint256(sub_cfca7a78[arg1]), data=mem[128 len floor32(uint256(sub_cfca7a78[arg1]))], mem[(32 * uint256(sub_cfca7a78[arg1])) + floor32(uint256(sub_cfca7a78[arg1])) + 224 len (32 * uint256(sub_cfca7a78[arg1])) - floor32(uint256(sub_cfca7a78[arg1]))])
}

function sub_71afbdbc(?) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    phaseInfo.length++
    phaseInfo[phaseInfo.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    phaseInfo[phaseInfo.length].field_256 = arg2
    phaseInfo[phaseInfo.length].field_512 = arg3
    phaseInfo[phaseInfo.length].field_768 = arg4
    phaseInfo[phaseInfo.length].field_1024 = arg5
    phaseInfo[phaseInfo.length].field_1280 = arg6
    phaseInfo[phaseInfo.length].field_1536 = arg7
    phaseInfo[phaseInfo.length].field_1792 = arg8
    phaseInfo[phaseInfo.length].field_2048 = arg9
    phaseInfo[phaseInfo.length].field_2304 = uint8(arg10)
    phaseInfo[phaseInfo.length].field_2312 = 0
    phaseInfo[phaseInfo.length].field_2560 = 0
    phaseInfo[phaseInfo.length].field_2816 = 0
    phaseInfo[phaseInfo.length].field_3072 = 0
    phaseInfo[phaseInfo.length].field_3328 = 0
    sub_cfca7a78.length++
    uint256(sub_cfca7a78[sub_cfca7a78.length]) = 0
    idx = 0
    while uint256(sub_cfca7a78[sub_cfca7a78.length]) > idx:
        address(sub_cfca7a78[(5 * sub_cfca7a78.length) + idx]) = 0
        idx = idx + 1
        continue 
    return 1
}

function sub_2362e6ba(?) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    if arg3 >= phaseInfo.length:
        revert with 0, 'invalid phaseIndex'
    if arg3 >= sub_cfca7a78.length:
        revert with 0, 'invalid phaseIndex'
    require arg3 < phaseInfo.length
    if not phaseInfo[arg3].field_2304:
        revert with 0, 'Phase not whitelisted'
    require arg3 < sub_cfca7a78.length
    if arg3 >= phaseInfo.length:
        revert with 0, 'invalid phaseIndex'
    if arg3 >= sub_cfca7a78.length:
        revert with 0, 'invalid phaseIndex'
    if not uint256(stor[(5 * arg3) + ('name', 'sub_cfca7a78', 6) + 1][address(arg1)]):
        if not uint256(stor[(5 * arg3) + ('name', 'sub_cfca7a78', 6) + 2][address(arg1)]):
            if not uint256(stor[(5 * arg3) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]):
                if not uint256(stor[(5 * arg3) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]):
                    require arg3 < phaseInfo.length
                    uint256(sub_cfca7a78[arg3])++
                    address(stor[('array', ('mul', 5, ('param', 'arg3')), ('name', 'sub_cfca7a78', 6)) + uint256(sub_cfca7a78[arg3])]) = arg1
                    phaseInfo[arg3].field_3328 = uint256(sub_cfca7a78[arg3])
    uint256(stor[(5 * arg3) + ('name', 'sub_cfca7a78', 6) + 1][address(arg1)]) = arg2
    return 1
}

function sub_12d6b40b(?) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    if arg2 >= phaseInfo.length:
        revert with 0, 'invalid phaseIndex'
    if arg2 >= sub_cfca7a78.length:
        revert with 0, 'invalid phaseIndex'
    require arg2 < phaseInfo.length
    if phaseInfo[arg2].field_2312:
        revert with 0, 'Phase is active'
    require arg2 < sub_cfca7a78.length
    if not uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]):
        return 0
    require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)])
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Utility Distribution is already complete'
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]):
        require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)])
        require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) == arg4
    require arg3 > 0
    require arg3
    require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3
    if (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
        revert with 0, 'No limit left in Round Balance'
    require arg3 > 0
    require arg3
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3:
        if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3 <= (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]):
            return (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3 > 0)
    return ((uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) > 0)
}

function sub_54de0656(?) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    if arg2 >= phaseInfo.length:
        revert with 0, 'invalid phaseIndex'
    if arg2 >= sub_cfca7a78.length:
        revert with 0, 'invalid phaseIndex'
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    if arg2 >= phaseInfo.length:
        revert with 0, 'invalid phaseIndex'
    if arg2 >= sub_cfca7a78.length:
        revert with 0, 'invalid phaseIndex'
    require arg2 < phaseInfo.length
    if phaseInfo[arg2].field_2312:
        revert with 0, 'Phase is active'
    require arg2 < sub_cfca7a78.length
    if not uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]):
        revert with 0, 'not distribution eligible'
    require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)])
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Utility Distribution is already complete'
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]):
        require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)])
        require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) == arg4
    require arg3 > 0
    require arg3
    require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3
    if (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
        revert with 0, 'No limit left in Round Balance'
    require arg3 > 0
    require arg3
    if not uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3:
        if (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
            revert with 0, 'not distribution eligible'
    else:
        if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3 <= (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]):
            if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3 <= 0:
                revert with 0, 'not distribution eligible'
        else:
            if (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
                revert with 0, 'not distribution eligible'
    require arg2 < phaseInfo.length
    if phaseInfo[arg2].field_2312:
        revert with 0, 'Phase is active'
    require arg2 < sub_cfca7a78.length
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) <= 0:
        revert with 0, 'No presale positive Balance'
    require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)])
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Utility Distribution is already complete'
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]):
        require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)])
        require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) == arg4
    require arg3 > 0
    require arg3
    require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3
    if (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
        revert with 0, 'No limit left in Round Balance'
    require arg3 > 0
    require arg3
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3:
        if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3 <= (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]):
            return (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3)
    return ((uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]))
}

function sub_c7ddcf95(?) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    if arg1 >= phaseInfo.length:
        revert with 0, 'invalid phaseIndex'
    if arg1 >= sub_cfca7a78.length:
        revert with 0, 'invalid phaseIndex'
    require arg1 < phaseInfo.length
    if phaseInfo[arg1].field_2312:
        revert with 0, 'Phase is active'
    require arg1 < sub_cfca7a78.length
    if uint256(sub_cfca7a78[arg1]):
        mem[128 len 32 * uint256(sub_cfca7a78[arg1])] = code.data[24347 len 32 * uint256(sub_cfca7a78[arg1])]
    s = 0
    idx = 0
    while idx < uint256(sub_cfca7a78[arg1]):
        if address(stor4.field_0) != msg.sender:
            revert with 0, 'Not the owner...'
        if arg1 >= phaseInfo.length:
            revert with 0, 'invalid phaseIndex'
        if arg1 >= sub_cfca7a78.length:
            revert with 0, 'invalid phaseIndex'
        require arg1 < phaseInfo.length
        if phaseInfo[arg1].field_2312:
            revert with 0, 'Phase is active'
        require arg1 < sub_cfca7a78.length
        mem[0] = address(sub_cfca7a78[(5 * arg1) + idx])
        mem[32] = (5 * arg1) + sha3(6) + 3
        if uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])]):
            mem[0] = address(sub_cfca7a78[(5 * arg1) + idx])
            mem[32] = (5 * arg1) + sha3(6) + 4
            require uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 4][address(sub_cfca7a78[(5 * arg1) + idx])]) <= uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])])
            if uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])]) - uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 4][address(sub_cfca7a78[(5 * arg1) + idx])]) <= 0:
                revert with 0, 'Utility Distribution is already complete'
            if uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])]):
                require uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])])
                require uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])]) * arg3 / uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])]) == arg3
            require arg2 > 0
            require arg2
            require uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 4][address(sub_cfca7a78[(5 * arg1) + idx])]) <= uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])]) * arg3 / arg2
            if (uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])]) * arg3 / arg2) - uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 4][address(sub_cfca7a78[(5 * arg1) + idx])]) <= 0:
                revert with 0, 'No limit left in Round Balance'
            require arg2 > 0
            require arg2
            if not uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])]) / arg2:
                if (uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])]) * arg3 / arg2) - uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 4][address(sub_cfca7a78[(5 * arg1) + idx])]) > 0:
                    require idx < uint256(sub_cfca7a78[arg1])
                    mem[0] = (5 * arg1) + sha3(6)
                    require idx < uint256(sub_cfca7a78[arg1])
                    mem[(32 * idx) + 128] = address(sub_cfca7a78[(5 * arg1) + idx])
            else:
                if uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])]) / arg2 <= (uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])]) * arg3 / arg2) - uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 4][address(sub_cfca7a78[(5 * arg1) + idx])]):
                    if uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])]) / arg2 > 0:
                        require idx < uint256(sub_cfca7a78[arg1])
                        mem[0] = (5 * arg1) + sha3(6)
                        require idx < uint256(sub_cfca7a78[arg1])
                        mem[(32 * idx) + 128] = address(sub_cfca7a78[(5 * arg1) + idx])
                else:
                    if (uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 3][address(sub_cfca7a78[(5 * arg1) + idx])]) * arg3 / arg2) - uint256(stor[(5 * arg1) + ('name', 'sub_cfca7a78', 6) + 4][address(sub_cfca7a78[(5 * arg1) + idx])]) > 0:
                        require idx < uint256(sub_cfca7a78[arg1])
                        mem[0] = (5 * arg1) + sha3(6)
                        require idx < uint256(sub_cfca7a78[arg1])
                        mem[(32 * idx) + 128] = address(sub_cfca7a78[(5 * arg1) + idx])
        s = address(sub_cfca7a78[(5 * arg1) + idx])
        idx = idx + 1
        continue 
    mem[(32 * uint256(sub_cfca7a78[arg1])) + 192 len floor32(uint256(sub_cfca7a78[arg1]))] = mem[128 len floor32(uint256(sub_cfca7a78[arg1]))]
    return Array(len=uint256(sub_cfca7a78[arg1]), data=mem[128 len floor32(uint256(sub_cfca7a78[arg1]))], mem[(32 * uint256(sub_cfca7a78[arg1])) + floor32(uint256(sub_cfca7a78[arg1])) + 192 len (32 * uint256(sub_cfca7a78[arg1])) - floor32(uint256(sub_cfca7a78[arg1]))]), 
}

function sub_e7b5e08a(?) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    if arg2 >= phaseInfo.length:
        revert with 0, 'invalid phaseIndex'
    if arg2 >= sub_cfca7a78.length:
        revert with 0, 'invalid phaseIndex'
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    if arg2 >= phaseInfo.length:
        revert with 0, 'invalid phaseIndex'
    if arg2 >= sub_cfca7a78.length:
        revert with 0, 'invalid phaseIndex'
    require arg2 < phaseInfo.length
    if phaseInfo[arg2].field_2312:
        revert with 0, 'Phase is active'
    require arg2 < sub_cfca7a78.length
    if not uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]):
        revert with 0, 'not distribution eligible'
    require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)])
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Utility Distribution is already complete'
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]):
        require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)])
        require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) == arg4
    require arg3 > 0
    require arg3
    require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3
    if (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
        revert with 0, 'No limit left in Round Balance'
    require arg3 > 0
    require arg3
    if not uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3:
        if (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
            revert with 0, 'not distribution eligible'
    else:
        if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3 <= (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]):
            if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3 <= 0:
                revert with 0, 'not distribution eligible'
        else:
            if (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
                revert with 0, 'not distribution eligible'
    require arg2 < phaseInfo.length
    if phaseInfo[arg2].field_2312:
        revert with 0, 'Phase is active'
    require arg2 < sub_cfca7a78.length
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) <= 0:
        revert with 0, 'No presale positive Balance'
    require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)])
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Utility Distribution is already complete'
    if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]):
        require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)])
        require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) == arg4
    require arg3 > 0
    require arg3
    require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3
    if (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
        revert with 0, 'No limit left in Round Balance'
    require arg3 > 0
    require arg3
    if not uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3:
        if (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
            revert with 0, 'Transfer Balance isn't positive'
        if utilityTokenAddress <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'No utility token address defined as a distribution target'
        require ext_code.size(utilityTokenAddress)
        call utilityTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(stor4.field_0), address(this.address), (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'distribution failed utility token in'
        require ext_code.size(utilityTokenAddress)
        call utilityTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'distribution failed utility token out'
        require arg2 < sub_cfca7a78.length
        require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3 >= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)])
        uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) = uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3
    else:
        if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3 <= (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]):
            if uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3 <= 0:
                revert with 0, 'Transfer Balance isn't positive'
            if utilityTokenAddress <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'No utility token address defined as a distribution target'
            require ext_code.size(utilityTokenAddress)
            call utilityTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(stor4.field_0), address(this.address), uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'distribution failed utility token in'
            require ext_code.size(utilityTokenAddress)
            call utilityTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'distribution failed utility token out'
            require arg2 < sub_cfca7a78.length
            require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) + (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3) >= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)])
            uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) += uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) / arg3
        else:
            if (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) <= 0:
                revert with 0, 'Transfer Balance isn't positive'
            if utilityTokenAddress <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'No utility token address defined as a distribution target'
            require ext_code.size(utilityTokenAddress)
            call utilityTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(stor4.field_0), address(this.address), (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'distribution failed utility token in'
            require ext_code.size(utilityTokenAddress)
            call utilityTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3) - uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'distribution failed utility token out'
            require arg2 < sub_cfca7a78.length
            require uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3 >= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)])
            uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 4][address(arg1)]) = uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(arg1)]) * arg4 / arg3
    return 1
}

function sub_cecf61fc(?) {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'Not the owner...'
    if cd[36] >= phaseInfo.length:
        revert with 0, 'invalid phaseIndex'
    if cd[36] >= sub_cfca7a78.length:
        revert with 0, 'invalid phaseIndex'
    require cd[36] < phaseInfo.length
    if phaseInfo[cd[36]].field_2312:
        revert with 0, 'Phase is active'
    s = 0
    idx = 0
    while idx < ('cd', 4).length:
        if address(stor4.field_0) != msg.sender:
            revert with 0, 'Not the owner...'
        if cd[36] >= phaseInfo.length:
            revert with 0, 'invalid phaseIndex'
        if cd[36] >= sub_cfca7a78.length:
            revert with 0, 'invalid phaseIndex'
        require cd[36] < phaseInfo.length
        if phaseInfo[cd[36]].field_2312:
            revert with 0, 'Phase is active'
        require cd[36] < sub_cfca7a78.length
        if not uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not all addresses are eligible for distribution'
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = (5 * cd[36]) + sha3(6) + 4
        require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * idx) + cd[4] + 36)])]) <= uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])])
        if uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * idx) + cd[4] + 36)])]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Utility Distribution is already complete'
        if uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])]):
            require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])])
            require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])]) * cd[100] / uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])]) == cd[100]
        require cd[68] > 0
        require cd[68]
        require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * idx) + cd[4] + 36)])]) <= uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])]) * cd[100] / cd[68]
        if (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * idx) + cd[4] + 36)])]) <= 0:
            revert with 0, 'No limit left in Round Balance'
        require cd[68] > 0
        require cd[68]
        if not uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])]) / cd[68]:
            if (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * idx) + cd[4] + 36)])]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not all addresses are eligible for distribution'
        else:
            if uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])]) / cd[68] <= (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * idx) + cd[4] + 36)])]):
                if uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])]) / cd[68] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not all addresses are eligible for distribution'
            else:
                if (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * idx) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * idx) + cd[4] + 36)])]) <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not all addresses are eligible for distribution'
        s = address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = code.data[24347 len 32 * ('cd', 4).length]
    t = 0
    s = 0
    while s < ('cd', 4).length:
        if address(stor4.field_0) != msg.sender:
            revert with 0, 'Not the owner...'
        if cd[36] >= phaseInfo.length:
            revert with 0, 'invalid phaseIndex'
        if cd[36] >= sub_cfca7a78.length:
            revert with 0, 'invalid phaseIndex'
        if address(stor4.field_0) != msg.sender:
            revert with 0, 'Not the owner...'
        if cd[36] >= phaseInfo.length:
            revert with 0, 'invalid phaseIndex'
        if cd[36] >= sub_cfca7a78.length:
            revert with 0, 'invalid phaseIndex'
        require cd[36] < phaseInfo.length
        if phaseInfo[cd[36]].field_2312:
            revert with 0, 'Phase is active'
        require cd[36] < sub_cfca7a78.length
        if not uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]):
            revert with 0, 'not distribution eligible'
        require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) <= uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])])
        if uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) <= 0:
            revert with 0, 'Utility Distribution is already complete'
        if uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]):
            require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])])
            require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) == cd[100]
        require cd[68] > 0
        require cd[68]
        require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) <= uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]
        if (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) <= 0:
            revert with 0, 'No limit left in Round Balance'
        require cd[68] > 0
        require cd[68]
        if not uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) / cd[68]:
            if (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) <= 0:
                revert with 0, 'not distribution eligible'
        else:
            if uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) / cd[68] <= (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]):
                if uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) / cd[68] <= 0:
                    revert with 0, 'not distribution eligible'
            else:
                if (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) <= 0:
                    revert with 0, 'not distribution eligible'
        require cd[36] < phaseInfo.length
        if phaseInfo[cd[36]].field_2312:
            revert with 0, 'Phase is active'
        require cd[36] < sub_cfca7a78.length
        if uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) <= 0:
            revert with 0, 'No presale positive Balance'
        require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) <= uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])])
        if uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) <= 0:
            revert with 0, 'Utility Distribution is already complete'
        if uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]):
            require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])])
            require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) == cd[100]
        require cd[68] > 0
        require cd[68]
        require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) <= uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]
        if (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) <= 0:
            revert with 0, 'No limit left in Round Balance'
        require cd[68] > 0
        require cd[68]
        if not uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) / cd[68]:
            if (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) <= 0:
                revert with 0, 'Transfer Balance isn't positive'
            if utilityTokenAddress <= 0:
                revert with 0, 'No utility token address defined as a distribution target'
            mem[(32 * ('cd', 4).length) + 196] = (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])])
            require ext_code.size(utilityTokenAddress)
            call utilityTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(stor4.field_0), address(this.address), (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'distribution failed utility token in'
            mem[(32 * ('cd', 4).length) + 132] = address(cd[((32 * s) + cd[4] + 36)])
            mem[(32 * ('cd', 4).length) + 164] = (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])])
            require ext_code.size(utilityTokenAddress)
            call utilityTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * s) + cd[4] + 36)]), (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])])
            mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'distribution failed utility token out'
            require cd[36] < sub_cfca7a78.length
            require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68] >= uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])])
            mem[0] = address(cd[((32 * s) + cd[4] + 36)])
            mem[32] = (5 * cd[36]) + sha3(6) + 4
            uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) = uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]
            require idx < ('cd', 4).length
            mem[(32 * idx) + 128] = (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])])
        else:
            if uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) / cd[68] <= (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]):
                if uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) / cd[68] <= 0:
                    revert with 0, 'Transfer Balance isn't positive'
                if utilityTokenAddress <= 0:
                    revert with 0, 'No utility token address defined as a distribution target'
                mem[(32 * ('cd', 4).length) + 196] = uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) / cd[68]
                require ext_code.size(utilityTokenAddress)
                call utilityTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(stor4.field_0), address(this.address), uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) / cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'distribution failed utility token in'
                mem[(32 * ('cd', 4).length) + 132] = address(cd[((32 * s) + cd[4] + 36)])
                mem[(32 * ('cd', 4).length) + 164] = uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) / cd[68]
                require ext_code.size(utilityTokenAddress)
                call utilityTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * s) + cd[4] + 36)]), uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) / cd[68]
                mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'distribution failed utility token out'
                require cd[36] < sub_cfca7a78.length
                require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) + (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) / cd[68]) >= uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])])
                mem[0] = address(cd[((32 * s) + cd[4] + 36)])
                mem[32] = (5 * cd[36]) + sha3(6) + 4
                uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) += uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) / cd[68]
                require idx < ('cd', 4).length
                mem[(32 * idx) + 128] = uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) / cd[68]
            else:
                if (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) <= 0:
                    revert with 0, 'Transfer Balance isn't positive'
                if utilityTokenAddress <= 0:
                    revert with 0, 'No utility token address defined as a distribution target'
                mem[(32 * ('cd', 4).length) + 196] = (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])])
                require ext_code.size(utilityTokenAddress)
                call utilityTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(stor4.field_0), address(this.address), (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'distribution failed utility token in'
                mem[(32 * ('cd', 4).length) + 132] = address(cd[((32 * s) + cd[4] + 36)])
                mem[(32 * ('cd', 4).length) + 164] = (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])])
                require ext_code.size(utilityTokenAddress)
                call utilityTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * s) + cd[4] + 36)]), (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])])
                mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'distribution failed utility token out'
                require cd[36] < sub_cfca7a78.length
                require uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68] >= uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])])
                mem[0] = address(cd[((32 * s) + cd[4] + 36)])
                mem[32] = (5 * cd[36]) + sha3(6) + 4
                uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])]) = uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]
                require idx < ('cd', 4).length
                mem[(32 * idx) + 128] = (uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 3][address(cd[((32 * s) + cd[4] + 36)])]) * cd[100] / cd[68]) - uint256(stor[(5 * cd[36]) + ('name', 'sub_cfca7a78', 6) + 4][address(cd[((32 * s) + cd[4] + 36)])])
        t = address(cd[((32 * s) + cd[4] + 36)])
        s = s + 1
        continue 
    mem[(32 * ('cd', 4).length) + 192 len floor32(('cd', 4).length)] = mem[128 len floor32(('cd', 4).length)]
    return Array(len=('cd', 4).length, data=mem[128 len floor32(('cd', 4).length)], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + 192 len (32 * ('cd', 4).length) - floor32(('cd', 4).length)]), 
}

function sub_357429f3(?) {
    if arg2 >= phaseInfo.length:
        revert with 0, 'invalid phaseIndex'
    if arg2 >= sub_cfca7a78.length:
        revert with 0, 'invalid phaseIndex'
    require arg2 < phaseInfo.length
    if not phaseInfo[arg2].field_2312:
        revert with 0, 'Phase not active'
    require arg2 < sub_cfca7a78.length
    if arg2 >= phaseInfo.length:
        revert with 0, 'invalid phaseIndex'
    if arg2 >= sub_cfca7a78.length:
        revert with 0, 'invalid phaseIndex'
    require arg2 < phaseInfo.length
    if phaseInfo[arg2].field_1024 - decimals > 0:
        require 10^(phaseInfo[arg2].field_1024 - decimals) > 0
        require 10^(phaseInfo[arg2].field_1024 - decimals)
        if phaseInfo[arg2].field_256 <= 0:
            if phaseInfo[arg2].field_512 <= 0:
                require ext_code.size(phaseInfo[arg2].field_768)
                call phaseInfo[arg2].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args address(stor4.field_0), address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer in'
                require ext_code.size(phaseInfo[arg2].field_768)
                call phaseInfo[arg2].field_768.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer out'
                if uint8(stor4.field_160):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed presale token transfer'
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg1 / 10^(phaseInfo[arg2].field_1024 - decimals)
                require balanceOf[address(stor4.field_0)] + (arg1 / 10^(phaseInfo[arg2].field_1024 - decimals)) >= balanceOf[address(stor4.field_0)]
                balanceOf[address(stor4.field_0)] += arg1 / 10^(phaseInfo[arg2].field_1024 - decimals)
                emit Transfer((arg1 / 10^(phaseInfo[arg2].field_1024 - decimals)), msg.sender, address(stor4.field_0));
                require arg1 <= phaseInfo[arg2].field_2560
                phaseInfo[arg2].field_2560 -= arg1
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) <= phaseInfo[arg2].field_2816
                phaseInfo[arg2].field_2816 -= arg1 / 10^(phaseInfo[arg2].field_1024 - decimals)
                require arg1 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)])
                uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)]) -= arg1
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)])
                uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)]) -= arg1 / 10^(phaseInfo[arg2].field_1024 - decimals)
            else:
                require phaseInfo[arg2].field_512
                require ext_code.size(phaseInfo[arg2].field_768)
                call phaseInfo[arg2].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args address(stor4.field_0), address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer in'
                require ext_code.size(phaseInfo[arg2].field_768)
                call phaseInfo[arg2].field_768.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer out'
                if uint8(stor4.field_160):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed presale token transfer'
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) / phaseInfo[arg2].field_512 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) / phaseInfo[arg2].field_512
                require balanceOf[address(stor4.field_0)] + (arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) / phaseInfo[arg2].field_512) >= balanceOf[address(stor4.field_0)]
                balanceOf[address(stor4.field_0)] += arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) / phaseInfo[arg2].field_512
                emit Transfer((arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) / phaseInfo[arg2].field_512), msg.sender, address(stor4.field_0));
                require arg1 <= phaseInfo[arg2].field_2560
                phaseInfo[arg2].field_2560 -= arg1
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) / phaseInfo[arg2].field_512 <= phaseInfo[arg2].field_2816
                phaseInfo[arg2].field_2816 -= arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) / phaseInfo[arg2].field_512
                require arg1 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)])
                uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)]) -= arg1
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) / phaseInfo[arg2].field_512 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)])
                uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)]) -= arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) / phaseInfo[arg2].field_512
        else:
            if arg1 / 10^(phaseInfo[arg2].field_1024 - decimals):
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals)
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256 / arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) == phaseInfo[arg2].field_256
            if phaseInfo[arg2].field_512 <= 0:
                require ext_code.size(phaseInfo[arg2].field_768)
                call phaseInfo[arg2].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args address(stor4.field_0), address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer in'
                require ext_code.size(phaseInfo[arg2].field_768)
                call phaseInfo[arg2].field_768.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer out'
                if uint8(stor4.field_160):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed presale token transfer'
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += -1 * arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256
                require balanceOf[address(stor4.field_0)] + (arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256) >= balanceOf[address(stor4.field_0)]
                balanceOf[address(stor4.field_0)] += arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256
                emit Transfer((arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256), msg.sender, address(stor4.field_0));
                require arg1 <= phaseInfo[arg2].field_2560
                phaseInfo[arg2].field_2560 -= arg1
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256 <= phaseInfo[arg2].field_2816
                phaseInfo[arg2].field_2816 += -1 * arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256
                require arg1 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)])
                uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)]) -= arg1
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)])
                uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)]) += -1 * arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256
            else:
                require phaseInfo[arg2].field_512
                require ext_code.size(phaseInfo[arg2].field_768)
                call phaseInfo[arg2].field_768.0x23b872dd with:
                     gas gas_remaining wei
                    args address(stor4.field_0), address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer in'
                require ext_code.size(phaseInfo[arg2].field_768)
                call phaseInfo[arg2].field_768.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer out'
                if uint8(stor4.field_160):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed presale token transfer'
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512
                require balanceOf[address(stor4.field_0)] + (arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512) >= balanceOf[address(stor4.field_0)]
                balanceOf[address(stor4.field_0)] += arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512
                emit Transfer((arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512), msg.sender, address(stor4.field_0));
                require arg1 <= phaseInfo[arg2].field_2560
                phaseInfo[arg2].field_2560 -= arg1
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512 <= phaseInfo[arg2].field_2816
                phaseInfo[arg2].field_2816 -= arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512
                require arg1 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)])
                uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)]) -= arg1
                require arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)])
                uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)]) -= arg1 / 10^(phaseInfo[arg2].field_1024 - decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512
    else:
        if phaseInfo[arg2].field_1024 - decimals >= 0:
            if phaseInfo[arg2].field_256 <= 0:
                if phaseInfo[arg2].field_512 <= 0:
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args address(stor4.field_0), address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer in'
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer out'
                    if uint8(stor4.field_160):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed presale token transfer'
                    require arg1 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg1
                    require balanceOf[address(stor4.field_0)] + arg1 >= balanceOf[address(stor4.field_0)]
                    balanceOf[address(stor4.field_0)] += arg1
                    emit Transfer(arg1, msg.sender, address(stor4.field_0));
                    require arg1 <= phaseInfo[arg2].field_2560
                    phaseInfo[arg2].field_2560 -= arg1
                    require arg1 <= phaseInfo[arg2].field_2816
                    phaseInfo[arg2].field_2816 -= arg1
                    require arg1 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)]) -= arg1
                    require arg1 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)]) -= arg1
                else:
                    require phaseInfo[arg2].field_512
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args address(stor4.field_0), address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer in'
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer out'
                    if uint8(stor4.field_160):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed presale token transfer'
                    require arg1 / phaseInfo[arg2].field_512 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg1 / phaseInfo[arg2].field_512
                    require balanceOf[address(stor4.field_0)] + (arg1 / phaseInfo[arg2].field_512) >= balanceOf[address(stor4.field_0)]
                    balanceOf[address(stor4.field_0)] += arg1 / phaseInfo[arg2].field_512
                    emit Transfer((arg1 / phaseInfo[arg2].field_512), msg.sender, address(stor4.field_0));
                    require arg1 <= phaseInfo[arg2].field_2560
                    phaseInfo[arg2].field_2560 -= arg1
                    require arg1 / phaseInfo[arg2].field_512 <= phaseInfo[arg2].field_2816
                    phaseInfo[arg2].field_2816 -= arg1 / phaseInfo[arg2].field_512
                    require arg1 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)]) -= arg1
                    require arg1 / phaseInfo[arg2].field_512 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)]) -= arg1 / phaseInfo[arg2].field_512
            else:
                if arg1:
                    require arg1
                    require arg1 * phaseInfo[arg2].field_256 / arg1 == phaseInfo[arg2].field_256
                if phaseInfo[arg2].field_512 <= 0:
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args address(stor4.field_0), address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer in'
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer out'
                    if uint8(stor4.field_160):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed presale token transfer'
                    require arg1 * phaseInfo[arg2].field_256 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += -1 * arg1 * phaseInfo[arg2].field_256
                    require balanceOf[address(stor4.field_0)] + (arg1 * phaseInfo[arg2].field_256) >= balanceOf[address(stor4.field_0)]
                    balanceOf[address(stor4.field_0)] += arg1 * phaseInfo[arg2].field_256
                    emit Transfer((arg1 * phaseInfo[arg2].field_256), msg.sender, address(stor4.field_0));
                    require arg1 <= phaseInfo[arg2].field_2560
                    phaseInfo[arg2].field_2560 -= arg1
                    require arg1 * phaseInfo[arg2].field_256 <= phaseInfo[arg2].field_2816
                    phaseInfo[arg2].field_2816 += -1 * arg1 * phaseInfo[arg2].field_256
                    require arg1 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)]) -= arg1
                    require arg1 * phaseInfo[arg2].field_256 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)]) += -1 * arg1 * phaseInfo[arg2].field_256
                else:
                    require phaseInfo[arg2].field_512
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args address(stor4.field_0), address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer in'
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer out'
                    if uint8(stor4.field_160):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed presale token transfer'
                    require arg1 * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg1 * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512
                    require balanceOf[address(stor4.field_0)] + (arg1 * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512) >= balanceOf[address(stor4.field_0)]
                    balanceOf[address(stor4.field_0)] += arg1 * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512
                    emit Transfer((arg1 * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512), msg.sender, address(stor4.field_0));
                    require arg1 <= phaseInfo[arg2].field_2560
                    phaseInfo[arg2].field_2560 -= arg1
                    require arg1 * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512 <= phaseInfo[arg2].field_2816
                    phaseInfo[arg2].field_2816 -= arg1 * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512
                    require arg1 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)]) -= arg1
                    require arg1 * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)]) -= arg1 * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512
        else:
            if arg1:
                require arg1
                require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) / arg1 == 10^(-phaseInfo[arg2].field_1024 + decimals)
            if phaseInfo[arg2].field_256 <= 0:
                if phaseInfo[arg2].field_512 <= 0:
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args address(stor4.field_0), address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer in'
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer out'
                    if uint8(stor4.field_160):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed presale token transfer'
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += -1 * arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals)
                    require balanceOf[address(stor4.field_0)] + (arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals)) >= balanceOf[address(stor4.field_0)]
                    balanceOf[address(stor4.field_0)] += arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals)
                    emit Transfer((arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals)), msg.sender, address(stor4.field_0));
                    require arg1 <= phaseInfo[arg2].field_2560
                    phaseInfo[arg2].field_2560 -= arg1
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) <= phaseInfo[arg2].field_2816
                    phaseInfo[arg2].field_2816 += -1 * arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals)
                    require arg1 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)]) -= arg1
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)]) += -1 * arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals)
                else:
                    require phaseInfo[arg2].field_512
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args address(stor4.field_0), address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer in'
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer out'
                    if uint8(stor4.field_160):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed presale token transfer'
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) / phaseInfo[arg2].field_512 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) / phaseInfo[arg2].field_512
                    require balanceOf[address(stor4.field_0)] + (arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) / phaseInfo[arg2].field_512) >= balanceOf[address(stor4.field_0)]
                    balanceOf[address(stor4.field_0)] += arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) / phaseInfo[arg2].field_512
                    emit Transfer((arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) / phaseInfo[arg2].field_512), msg.sender, address(stor4.field_0));
                    require arg1 <= phaseInfo[arg2].field_2560
                    phaseInfo[arg2].field_2560 -= arg1
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) / phaseInfo[arg2].field_512 <= phaseInfo[arg2].field_2816
                    phaseInfo[arg2].field_2816 -= arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) / phaseInfo[arg2].field_512
                    require arg1 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)]) -= arg1
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) / phaseInfo[arg2].field_512 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)]) -= arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) / phaseInfo[arg2].field_512
            else:
                if arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals):
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals)
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256 / arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) == phaseInfo[arg2].field_256
                if phaseInfo[arg2].field_512 <= 0:
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args address(stor4.field_0), address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer in'
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer out'
                    if uint8(stor4.field_160):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed presale token transfer'
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += -1 * arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256
                    require balanceOf[address(stor4.field_0)] + (arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256) >= balanceOf[address(stor4.field_0)]
                    balanceOf[address(stor4.field_0)] += arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256
                    emit Transfer((arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256), msg.sender, address(stor4.field_0));
                    require arg1 <= phaseInfo[arg2].field_2560
                    phaseInfo[arg2].field_2560 -= arg1
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256 <= phaseInfo[arg2].field_2816
                    phaseInfo[arg2].field_2816 += -1 * arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256
                    require arg1 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)]) -= arg1
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)]) += -1 * arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256
                else:
                    require phaseInfo[arg2].field_512
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0x23b872dd with:
                         gas gas_remaining wei
                        args address(stor4.field_0), address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer in'
                    require ext_code.size(phaseInfo[arg2].field_768)
                    call phaseInfo[arg2].field_768.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed stable token transfer out'
                    if uint8(stor4.field_160):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'rescind failed presale token transfer'
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512 <= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] -= arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512
                    require balanceOf[address(stor4.field_0)] + (arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512) >= balanceOf[address(stor4.field_0)]
                    balanceOf[address(stor4.field_0)] += arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512
                    emit Transfer((arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512), msg.sender, address(stor4.field_0));
                    require arg1 <= phaseInfo[arg2].field_2560
                    phaseInfo[arg2].field_2560 -= arg1
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512 <= phaseInfo[arg2].field_2816
                    phaseInfo[arg2].field_2816 -= arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512
                    require arg1 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 2][address(msg.sender)]) -= arg1
                    require arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512 <= uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)])
                    uint256(stor[(5 * arg2) + ('name', 'sub_cfca7a78', 6) + 3][address(msg.sender)]) -= arg1 * 10^(-phaseInfo[arg2].field_1024 + decimals) * phaseInfo[arg2].field_256 / phaseInfo[arg2].field_512
    return 1
}



}
