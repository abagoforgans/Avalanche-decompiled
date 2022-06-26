contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - claimFees(uint256 arg1)
#  - sub_e15b47d1(?)
#  - _fallback()
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
address owner;
address sub_c5d664c6Address;
uint256 sub_0e962f00;
uint8 decimals;
mapping of uint8 stor204;
mapping of uint8 stor205;
uint256 feePercent;
uint64 sub_448f56b9; offset 128
uint64 sub_797ba463; offset 192
uint128 sub_f97d2ed7;
uint256 sub_1c693478;
uint8 sub_f84d73f4;
uint256 sub_ecad9565;
mapping of struct sub_2968676e;
uint64 sub_eed74e67;
uint64 lastHarvest; offset 64
uint128 stor212;
uint128 sub_d00364be; offset 128
uint256 stor212;
array of struct withdrawalQueue;
uint256 stor214;
uint256 stor215;
uint8 isPublic;
array of address stor36873310838834202466021915499700317078779348564631893266789728850949798587862;

function sub_0e962f00(?) {
    return sub_0e962f00
}

function totalSupply() {
    return totalSupply
}

function sub_1c693478(?) {
    return sub_1c693478
}

function sub_2968676e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_2968676e[arg1].field_0), sub_2968676e[arg1].field_8
}

function decimals() {
    return decimals
}

function sub_448f56b9(?) {
    return sub_448f56b9
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_797ba463(?) {
    return sub_797ba463
}

function feePercent() {
    return feePercent
}

function owner() {
    return owner
}

function sub_c5d664c6(?) {
    return sub_c5d664c6Address
}

function withdrawalQueue(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < withdrawalQueue.length
    return withdrawalQueue[arg1].field_0
}

function sub_d00364be(?) {
    return sub_d00364be
}

function isPublic() {
    return bool(isPublic)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ecad9565(?) {
    return sub_ecad9565
}

function sub_eed74e67(?) {
    return sub_eed74e67
}

function lastHarvest() {
    return lastHarvest
}

function isManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor205[address(arg1)])
}

function sub_f84d73f4(?) {
    return bool(sub_f84d73f4)
}

function sub_f97d2ed7(?) {
    return sub_f97d2ed7
}

function sub_358d6a04(?) {
    if stor214 < stor215:
        return stor214
    return stor215
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function isAllowed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == owner:
        return True
    if stor205[address(arg1)]:
        return bool(stor205[address(arg1)])
    return bool(stor204[address(arg1)])
}

function lockedProfit() {
    if block.timestamp >= lastHarvest + sub_448f56b9:
        return 0
    if not sub_448f56b9:
        revert with 0, 18
    return (sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9))
}

function setPublic(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
    isPublic = uint8(arg1)
    emit 0x63411fc6: arg1
}

function sub_c866983b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2968676e[address(arg1)].field_0 = 0
    emit 0xff8fe190: msg.sender, address(arg1)
}

function setFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10^18:
        revert with 0, 'FEE_TOO_HIGH'
    feePercent = arg1
    emit 0xec370615: arg1, msg.sender
}

function setManager(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor205[address(arg1)] = uint8(arg2)
    emit 0x2458f684: arg2, arg1
}

function setTargetFloatPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10^18:
        revert with 0, 'TARGET_TOO_HIGH'
    sub_1c693478 = arg1
    emit 0x95bc4480: arg1, msg.sender
}

function totalFloat() {
    staticcall sub_c5d664c6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setMaxTvl(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
    stor214 = arg1
    if stor214 < stor215:
        emit 0xef7f3922: stor214
    else:
        emit 0xef7f3922: stor215
}

function setAllowed(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
    stor204[address(arg1)] = uint8(arg2)
    emit 0xfe19048f: arg2, arg1
}

function sub_07b35d1d(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint128(arg1) > sub_448f56b9:
        revert with 0, 'WINDOW_TOO_LONG'
    sub_f97d2ed7 = uint128(arg1)
    emit 0xf61ebd3c: uint128(arg1), msg.sender
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

function sub_3fd40925(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
    if 32 <= withdrawalQueue.length:
        revert with 0, 'STACK_FULL'
    withdrawalQueue.length++
    stor5185[stor213.length] = address(arg1)
    emit 0xd3c85e76: msg.sender, address(arg1)
}

function sub_9bb5989d(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
    if arg1 >= withdrawalQueue.length:
        revert with 0, 50
    withdrawalQueue[arg1].field_0 = address(arg2)
    emit 0x4a0a125a: arg1, msg.sender, withdrawalQueue[arg1].field_0, address(arg2)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function popFromWithdrawalQueue() {
    if owner != msg.sender:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
    if withdrawalQueue.length < 1:
        revert with 0, 17
    if withdrawalQueue.length - 1 >= withdrawalQueue.length:
        revert with 0, 50
    if not withdrawalQueue.length:
        revert with 0, 49
    withdrawalQueue[withdrawalQueue.length].field_0 = 0
    withdrawalQueue.length--
    emit 0x6457075a: msg.sender, withdrawalQueue[withdrawalQueue.length].field_0
}

function sub_7b72aeb9(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint64(arg1):
        revert with 0, 'DELAY_CANNOT_BE_ZERO'
    if uint64(arg1) > 8760 * 24 * 3600:
        revert with 0, 'DELAY_TOO_LONG'
    if sub_448f56b9:
        sub_797ba463 = uint64(arg1)
        emit 0x342b344c: uint64(arg1), msg.sender
    else:
        sub_448f56b9 = uint64(arg1)
        emit 0x91e893fa: uint64(arg1), msg.sender
}

function sub_32ff7732(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        staticcall sub_c5d664c6Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] != 18:
            revert with 0, 'WRONG_DECIMALS'
    sub_f84d73f4 = uint8(bool(arg1))
    emit 0x6375b140: bool(arg1), msg.sender
}

function sub_d183ce1e(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
    if arg1 >= withdrawalQueue.length:
        revert with 0, 50
    if arg2 >= withdrawalQueue.length:
        revert with 0, 50
    if arg1 >= withdrawalQueue.length:
        revert with 0, 50
    withdrawalQueue[arg1].field_0 = withdrawalQueue[arg2].field_0
    if arg2 >= withdrawalQueue.length:
        revert with 0, 50
    withdrawalQueue[arg2].field_0 = withdrawalQueue[arg1].field_0
    emit 0x86d0d8eb: arg1, arg2, msg.sender, withdrawalQueue[arg2].field_0, withdrawalQueue[arg1].field_0
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit 0xbeddf252: arg2, msg.sender, arg1
    return 1
}

function replaceWithdrawalQueueIndexWithTip(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
    if withdrawalQueue.length < 1:
        revert with 0, 17
    if withdrawalQueue.length - 1 >= withdrawalQueue.length:
        revert with 0, 50
    if arg1 >= withdrawalQueue.length:
        revert with 0, 50
    withdrawalQueue[arg1].field_0 = withdrawalQueue[withdrawalQueue.length].field_0
    if not withdrawalQueue.length:
        revert with 0, 49
    withdrawalQueue[withdrawalQueue.length].field_0 = 0
    withdrawalQueue.length--
    emit 0x53bddc0e: arg1, msg.sender, withdrawalQueue[arg1].field_0, withdrawalQueue[withdrawalQueue.length].field_0
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_ec523afd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall address(arg1).isCEther() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if not sub_f84d73f4:
            revert with 0, 'WRONG_UNDERLYING'
    else:
        staticcall address(arg1).underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != sub_c5d664c6Address:
            revert with 0, 'WRONG_UNDERLYING'
    sub_2968676e[address(arg1)].field_0 = 1
    emit 0x2fc1f5b5: msg.sender, address(arg1)
}

function totalHoldings() {
    if block.timestamp >= lastHarvest + sub_448f56b9:
        staticcall sub_c5d664c6Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ecad9565 > !ext_call.return_data[0]:
            revert with 0, 17
        return (sub_ecad9565 + ext_call.return_data[0])
    if not sub_448f56b9:
        revert with 0, 18
    staticcall sub_c5d664c6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !ext_call.return_data[0]:
        revert with 0, 17
    return (sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0])
}

function getWithdrawalQueue() {
    mem[64] = (32 * withdrawalQueue.length) + 128
    mem[96] = withdrawalQueue.length
    if not withdrawalQueue.length:
        mem[(32 * withdrawalQueue.length) + 128] = 32
        mem[(32 * withdrawalQueue.length) + 160] = withdrawalQueue.length
        idx = 0
        s = (32 * withdrawalQueue.length) + 192
        t = 128
        while idx < withdrawalQueue.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * withdrawalQueue.length) + 128
           len (96 * withdrawalQueue.length) + 64
    mem[128] = address(withdrawalQueue.field_0)
    idx = 128
    s = 0
    while (32 * withdrawalQueue.length) + 96 > idx:
        mem[idx + 32] = withdrawalQueue[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * withdrawalQueue.length) + 128] = 32
    mem[(32 * withdrawalQueue.length) + 160] = withdrawalQueue.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < withdrawalQueue.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * withdrawalQueue.length) + -mem[64] + 192
}

function sub_ac579b77(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
    if ('cd', 4).length > 32:
        revert with 0, 'STACK_TOO_BIG'
    withdrawalQueue.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while withdrawalQueue.length > idx:
            withdrawalQueue[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            withdrawalQueue[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while withdrawalQueue.length > idx:
            withdrawalQueue[idx].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    s = 160
    t = cd[4] + 36
    while idx < ('cd', 4).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x93fc2f83: Array(len=('cd', 4).length, data=mem[160 len 32 * ('cd', 4).length]), msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit 0xbeddf252: arg3, arg1, arg2
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function withdrawFromStrategy(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
    if not sub_2968676e[address(arg1)].field_0:
        revert with 0, 'UNTRUSTED_STRATEGY'
    if not arg2:
        revert with 0, 'AMOUNT_CANNOT_BE_ZERO'
    require arg2 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if sub_2968676e[address(arg1)].field_8 < Mask(248, 0, arg2):
        revert with 0, 17
    sub_2968676e[address(arg1)].field_8 = Mask(248, 0, sub_2968676e[address(arg1)].field_8 - Mask(248, 0, arg2))
    sub_ecad9565 -= arg2
    emit 0x7e8d851b: arg2, msg.sender, arg1
    call arg1.redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'REDEEM_FAILED'
    staticcall arg1.isCEther() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        require ext_code.size(sub_c5d664c6Address)
        call sub_c5d664c6Address.deposit() with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_17beaccf(?) payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == owner:
        idx = 0
        s = 0
        while idx < withdrawalQueue.length:
            mem[0] = 213
            call withdrawalQueue[idx].field_0.0x358d6a04 with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _44 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx == -1:
                revert with 0, 17
            if s > s + mem[_44]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + mem[_44]
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 205
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
        idx = 0
        s = 0
        while idx < withdrawalQueue.length:
            mem[0] = 213
            call withdrawalQueue[idx].field_0.0x358d6a04 with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx == -1:
                revert with 0, 17
            if s > s + mem[_45]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + mem[_45]
            continue 
    stor215 = s
    if stor214 < s:
        emit 0xef7f3922: stor214
    else:
        emit 0xef7f3922: s
    return s
}

function sub_22e4cbf8(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    t = ('cd', 4).length
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        t = cd[idx]
        idx = idx + 32
        continue 
    if msg.sender == owner:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[32] = 204
            stor204[mem[(32 * idx) + 140 len 20]] = 1
            if idx >= mem[96]:
                revert with 0, 50
            _58 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[ceil32(32 * ('cd', 4).length) + 97] = 1
            emit 0xfe19048f: 1, address(_58)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            mem[32] = 204
            stor204[mem[(32 * idx) + 140 len 20]] = 1
            if idx >= mem[96]:
                revert with 0, 50
            _62 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[ceil32(32 * ('cd', 4).length) + 97] = 1
            emit 0xfe19048f: 1, address(_62)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function exchangeRate() {
    if not totalSupply:
        return sub_0e962f00
    if block.timestamp >= lastHarvest + sub_448f56b9:
        staticcall sub_c5d664c6Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ecad9565 > !ext_call.return_data[0]:
            revert with 0, 17
        require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / sub_ecad9565 + ext_call.return_data[0] or not sub_ecad9565 + ext_call.return_data[0] and totalSupply
        return ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
    if not sub_448f56b9:
        revert with 0, 18
    staticcall sub_c5d664c6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !ext_call.return_data[0]:
        revert with 0, 17
    require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] or not sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] and totalSupply
    return ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
}

function balanceOfUnderlying(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        require sub_0e962f00 == sub_0e962f00 * balanceOf[address(arg1)] / balanceOf[address(arg1)] or not balanceOf[address(arg1)]
        return (sub_0e962f00 * balanceOf[address(arg1)] / sub_0e962f00)
    if block.timestamp >= lastHarvest + sub_448f56b9:
        staticcall sub_c5d664c6Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ecad9565 > !ext_call.return_data[0]:
            revert with 0, 17
        require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / sub_ecad9565 + ext_call.return_data[0] or not sub_ecad9565 + ext_call.return_data[0] and totalSupply
        require (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply == (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] or not balanceOf[address(arg1)]
        return ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * balanceOf[address(arg1)] / sub_0e962f00)
    if not sub_448f56b9:
        revert with 0, 18
    staticcall sub_c5d664c6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !ext_call.return_data[0]:
        revert with 0, 17
    require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] or not sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] and totalSupply
    require (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply == (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * balanceOf[address(arg1)] / balanceOf[address(arg1)] or not balanceOf[address(arg1)]
    return ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * balanceOf[address(arg1)] / sub_0e962f00)
}

function name() {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[(uint255(stor54.length) * 0.5) + ceil32(uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[stor54.length.field_1 + ceil32(stor54.length.field_1) + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[(uint255(stor55.length) * 0.5) + ceil32(uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[stor55.length.field_1 + ceil32(stor55.length.field_1) + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function sub_3fb647be(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
    if not sub_2968676e[address(cd[4])].field_8:
        if block.timestamp >= lastHarvest + sub_448f56b9:
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ecad9565 > !ext_call.return_data[0]:
                revert with 0, 17
            if sub_2968676e[address(cd[4])].field_8 > sub_ecad9565 + ext_call.return_data[0]:
                uint256(stor212.field_0) = uint128(stor212.field_0)
        else:
            if not sub_448f56b9:
                revert with 0, 18
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !ext_call.return_data[0]:
                revert with 0, 17
            if sub_2968676e[address(cd[4])].field_8 > sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0]:
                uint256(stor212.field_0) = uint128(stor212.field_0)
        sub_2968676e[address(cd[4])].field_0 = sub_2968676e[address(cd[4])].field_0
        sub_ecad9565 -= sub_2968676e[address(cd[4])].field_8
        emit 0xe5211b19: msg.sender, address(cd[4])
        idx = 0
        s = ceil32(return_data.size) + 196
        t = cd[36] + 36
        while idx < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x3dcf1342 with:
             gas gas_remaining wei
            args owner, Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 36).length])
    else:
        call address(cd[4]).redeemUnderlying(uint256 arg1) with:
             gas gas_remaining wei
            args -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp >= lastHarvest + sub_448f56b9:
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ecad9565 > !ext_call.return_data[0]:
                revert with 0, 17
            if sub_2968676e[address(cd[4])].field_8 > sub_ecad9565 + ext_call.return_data[0]:
                uint256(stor212.field_0) = uint128(stor212.field_0)
        else:
            if not sub_448f56b9:
                revert with 0, 18
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !ext_call.return_data[0]:
                revert with 0, 17
            if sub_2968676e[address(cd[4])].field_8 > sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0]:
                uint256(stor212.field_0) = uint128(stor212.field_0)
        sub_2968676e[address(cd[4])].field_0 = sub_2968676e[address(cd[4])].field_0
        sub_ecad9565 -= sub_2968676e[address(cd[4])].field_8
        emit 0xe5211b19: msg.sender, address(cd[4])
        idx = 0
        s = (2 * ceil32(return_data.size)) + 196
        t = cd[36] + 36
        while idx < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x3dcf1342 with:
             gas gas_remaining wei
            args owner, Array(len=('cd', 36).length, data=mem[(2 * ceil32(return_data.size)) + 196 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bdf06c8e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
    if not sub_2968676e[address(arg1)].field_0:
        revert with 0, 'UNTRUSTED_STRATEGY'
    if not arg2:
        revert with 0, 'AMOUNT_CANNOT_BE_ZERO'
    if sub_ecad9565 > !arg2:
        revert with 0, 17
    sub_ecad9565 += arg2
    require arg2 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    sub_2968676e[address(arg1)].field_8 = Mask(248, 0, arg2 + sub_2968676e[address(arg1)].field_8)
    emit 0x49e9138f: arg2, msg.sender, address(arg1)
    staticcall address(arg1).isCEther() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        require ext_code.size(sub_c5d664c6Address)
        call sub_c5d664c6Address.0x2e1a7d4d with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg1))
        call address(arg1).mint() with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not arg2:
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = arg2
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_c5d664c6Address):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, arg2, 0
            mem[ceil32(return_data.size) + 328] = 0
            call sub_c5d664c6Address with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = address(arg1)
            staticcall sub_c5d664c6Address.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg1)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 164] = arg2
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_c5d664c6Address):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, arg2, 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call sub_c5d664c6Address with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        call address(arg1).mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'MINT_FAILED'
}

function addStrategy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.isCEther() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if not sub_f84d73f4:
            revert with 0, 'WRONG_UNDERLYING'
        mem[32] = 211
        sub_2968676e[address(arg1)].field_0 = 1
        emit 0x2fc1f5b5: msg.sender, arg1
        if msg.sender == owner:
            if 32 <= withdrawalQueue.length:
                revert with 0, 'STACK_FULL'
            withdrawalQueue.length++
            mem[0] = 213
            stor5185[stor213.length] = arg1
            emit 0xd3c85e76: msg.sender, arg1
            if msg.sender == owner:
                idx = 0
                s = 0
                while idx < withdrawalQueue.length:
                    mem[0] = 213
                    call withdrawalQueue[idx].field_0.0x358d6a04 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _177 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx == -1:
                        revert with 0, 17
                    if s > s + mem[_177]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + mem[_177]
                    continue 
            else:
                mem[0] = msg.sender
                mem[32] = 205
                if not stor205[address(msg.sender)]:
                    revert with 0, 'Vault: NO_AUTH'
                idx = 0
                s = 0
                while idx < withdrawalQueue.length:
                    mem[0] = 213
                    call withdrawalQueue[idx].field_0.0x358d6a04 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _178 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx == -1:
                        revert with 0, 17
                    if s > s + mem[_178]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + mem[_178]
                    continue 
        else:
            mem[32] = 205
            if not stor205[address(msg.sender)]:
                revert with 0, 'Vault: NO_AUTH'
            if 32 <= withdrawalQueue.length:
                revert with 0, 'STACK_FULL'
            withdrawalQueue.length++
            mem[0] = 213
            stor5185[stor213.length] = arg1
            emit 0xd3c85e76: msg.sender, arg1
            if msg.sender == owner:
                idx = 0
                s = 0
                while idx < withdrawalQueue.length:
                    mem[0] = 213
                    call withdrawalQueue[idx].field_0.0x358d6a04 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _179 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx == -1:
                        revert with 0, 17
                    if s > s + mem[_179]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + mem[_179]
                    continue 
            else:
                mem[0] = msg.sender
                mem[32] = 205
                if not stor205[address(msg.sender)]:
                    revert with 0, 'Vault: NO_AUTH'
                idx = 0
                s = 0
                while idx < withdrawalQueue.length:
                    mem[0] = 213
                    call withdrawalQueue[idx].field_0.0x358d6a04 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _180 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx == -1:
                        revert with 0, 17
                    if s > s + mem[_180]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + mem[_180]
                    continue 
    else:
        staticcall arg1.underlying() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != sub_c5d664c6Address:
            revert with 0, 'WRONG_UNDERLYING'
        mem[32] = 211
        sub_2968676e[address(arg1)].field_0 = 1
        emit 0x2fc1f5b5: msg.sender, arg1
        if msg.sender == owner:
            if 32 <= withdrawalQueue.length:
                revert with 0, 'STACK_FULL'
            withdrawalQueue.length++
            mem[0] = 213
            stor5185[stor213.length] = arg1
            emit 0xd3c85e76: msg.sender, arg1
            if msg.sender == owner:
                idx = 0
                s = 0
                while idx < withdrawalQueue.length:
                    mem[0] = 213
                    call withdrawalQueue[idx].field_0.0x358d6a04 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _181 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx == -1:
                        revert with 0, 17
                    if s > s + mem[_181]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + mem[_181]
                    continue 
            else:
                mem[0] = msg.sender
                mem[32] = 205
                if not stor205[address(msg.sender)]:
                    revert with 0, 'Vault: NO_AUTH'
                idx = 0
                s = 0
                while idx < withdrawalQueue.length:
                    mem[0] = 213
                    call withdrawalQueue[idx].field_0.0x358d6a04 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _182 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx == -1:
                        revert with 0, 17
                    if s > s + mem[_182]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + mem[_182]
                    continue 
        else:
            mem[32] = 205
            if not stor205[address(msg.sender)]:
                revert with 0, 'Vault: NO_AUTH'
            if 32 <= withdrawalQueue.length:
                revert with 0, 'STACK_FULL'
            withdrawalQueue.length++
            mem[0] = 213
            stor5185[stor213.length] = arg1
            emit 0xd3c85e76: msg.sender, arg1
            if msg.sender == owner:
                idx = 0
                s = 0
                while idx < withdrawalQueue.length:
                    mem[0] = 213
                    call withdrawalQueue[idx].field_0.0x358d6a04 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _183 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx == -1:
                        revert with 0, 17
                    if s > s + mem[_183]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + mem[_183]
                    continue 
            else:
                mem[0] = msg.sender
                mem[32] = 205
                if not stor205[address(msg.sender)]:
                    revert with 0, 'Vault: NO_AUTH'
                idx = 0
                s = 0
                while idx < withdrawalQueue.length:
                    mem[0] = 213
                    call withdrawalQueue[idx].field_0.0x358d6a04 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _184 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx == -1:
                        revert with 0, 17
                    if s > s + mem[_184]:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = s + mem[_184]
                    continue 
    stor215 = s
    if stor214 < s:
        emit 0xef7f3922: stor214
    else:
        emit 0xef7f3922: s
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not isPublic:
        if owner != msg.sender:
            if not stor205[address(msg.sender)]:
                if not stor204[address(msg.sender)]:
                    revert with 0, 'Vault: NOT_ON_ALLOW_LIST'
    if stor214 < stor215:
        if block.timestamp >= lastHarvest + sub_448f56b9:
            mem[100] = this.address
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ecad9565 > !ext_call.return_data[0]:
                revert with 0, 17
            if arg1 > !(sub_ecad9565 + ext_call.return_data[0]):
                revert with 0, 17
            if arg1 + sub_ecad9565 + ext_call.return_data[0] > stor214:
                revert with 0, 'OVER_MAX_TVL'
        else:
            if not sub_448f56b9:
                revert with 0, 18
            mem[100] = this.address
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !ext_call.return_data[0]:
                revert with 0, 17
            if arg1 > !(sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0]):
                revert with 0, 17
            if arg1 + sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] > stor214:
                revert with 0, 'OVER_MAX_TVL'
    else:
        if block.timestamp >= lastHarvest + sub_448f56b9:
            mem[100] = this.address
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ecad9565 > !ext_call.return_data[0]:
                revert with 0, 17
            if arg1 > !(sub_ecad9565 + ext_call.return_data[0]):
                revert with 0, 17
            if arg1 + sub_ecad9565 + ext_call.return_data[0] > stor215:
                revert with 0, 'OVER_MAX_TVL'
        else:
            if not sub_448f56b9:
                revert with 0, 18
            mem[100] = this.address
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !ext_call.return_data[0]:
                revert with 0, 17
            if arg1 > !(sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0]):
                revert with 0, 17
            if arg1 + sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] > stor215:
                revert with 0, 'OVER_MAX_TVL'
    if not totalSupply:
        require sub_0e962f00 == sub_0e962f00 * arg1 / arg1 or not arg1 and sub_0e962f00
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !(sub_0e962f00 * arg1 / sub_0e962f00):
            revert with 0, 17
        totalSupply += sub_0e962f00 * arg1 / sub_0e962f00
        if balanceOf[address(msg.sender)] > !(sub_0e962f00 * arg1 / sub_0e962f00):
            revert with 0, 17
        balanceOf[address(msg.sender)] += sub_0e962f00 * arg1 / sub_0e962f00
        emit 0xbeddf252: (sub_0e962f00 * arg1 / sub_0e962f00), 0, msg.sender
        emit Deposit(arg1, msg.sender);
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = arg1
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_c5d664c6Address):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
        mem[ceil32(return_data.size) + 392] = 0
        call sub_c5d664c6Address with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if block.timestamp >= lastHarvest + sub_448f56b9:
            mem[ceil32(return_data.size) + 100] = this.address
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ecad9565 > !ext_call.return_data[0]:
                revert with 0, 17
            require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / sub_ecad9565 + ext_call.return_data[0] or not sub_ecad9565 + ext_call.return_data[0] and totalSupply
            require sub_0e962f00 == sub_0e962f00 * arg1 / arg1 or not arg1 and (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !(sub_0e962f00 * arg1 / (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply):
                revert with 0, 17
            totalSupply += sub_0e962f00 * arg1 / (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply
            if balanceOf[address(msg.sender)] > !(sub_0e962f00 * arg1 / (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply):
                revert with 0, 17
            balanceOf[address(msg.sender)] += sub_0e962f00 * arg1 / (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply
            emit 0xbeddf252: (sub_0e962f00 * arg1 / (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply), 0, msg.sender
        else:
            if not sub_448f56b9:
                revert with 0, 18
            mem[ceil32(return_data.size) + 100] = this.address
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !ext_call.return_data[0]:
                revert with 0, 17
            require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] or not sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] and totalSupply
            require sub_0e962f00 == sub_0e962f00 * arg1 / arg1 or not arg1 and (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !(sub_0e962f00 * arg1 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply):
                revert with 0, 17
            totalSupply += sub_0e962f00 * arg1 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply
            if balanceOf[address(msg.sender)] > !(sub_0e962f00 * arg1 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply):
                revert with 0, 17
            balanceOf[address(msg.sender)] += sub_0e962f00 * arg1 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply
            emit 0xbeddf252: (sub_0e962f00 * arg1 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply), 0, msg.sender
        emit Deposit(arg1, msg.sender);
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = this.address
        mem[(2 * ceil32(return_data.size)) + 196] = arg1
        mem[(2 * ceil32(return_data.size)) + 96] = 100
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 228] = 32
        mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_c5d664c6Address):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
        mem[(2 * ceil32(return_data.size)) + 392] = 0
        call sub_c5d664c6Address with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                if not mem[(2 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_ddb56b26(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall address(arg2).isCEther() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if not sub_f84d73f4:
            revert with 0, 'WRONG_UNDERLYING'
        sub_2968676e[address(arg2)].field_0 = 1
        emit 0x2fc1f5b5: msg.sender, address(arg2)
        if sub_2968676e[address(arg1)].field_8:
            if owner != msg.sender:
                if not stor205[address(msg.sender)]:
                    revert with 0, 'Vault: NO_AUTH'
            if not sub_2968676e[address(arg1)].field_0:
                revert with 0, 'UNTRUSTED_STRATEGY'
            if not sub_2968676e[address(arg1)].field_8:
                revert with 0, 'AMOUNT_CANNOT_BE_ZERO'
            require sub_2968676e[address(arg1)].field_8 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            if sub_2968676e[address(arg1)].field_8 < sub_2968676e[address(arg1)].field_8:
                revert with 0, 17
            sub_2968676e[address(arg1)].field_8 = 0
            sub_ecad9565 -= sub_2968676e[address(arg1)].field_8
            emit 0x7e8d851b: sub_2968676e[address(arg1)].field_8, msg.sender, address(arg1)
            mem[ceil32(return_data.size) + 100] = sub_2968676e[address(arg1)].field_8
            call address(arg1).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args sub_2968676e[address(arg1)].field_8
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'REDEEM_FAILED'
            staticcall address(arg1).isCEther() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                staticcall sub_c5d664c6Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(sub_c5d664c6Address)
                call sub_c5d664c6Address.deposit() with:
                   value sub_2968676e[address(arg1)].field_8 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                staticcall sub_c5d664c6Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            require return_data.size >= 32
            if owner != msg.sender:
                if not stor205[address(msg.sender)]:
                    revert with 0, 'Vault: NO_AUTH'
            if not sub_2968676e[address(arg2)].field_0:
                revert with 0, 'UNTRUSTED_STRATEGY'
            if ext_call.return_data[0] < sub_2968676e[address(arg1)].field_8:
                if not ext_call.return_data[0]:
                    revert with 0, 'AMOUNT_CANNOT_BE_ZERO'
                if sub_ecad9565 > !ext_call.return_data[0]:
                    revert with 0, 17
                sub_ecad9565 += ext_call.return_data[0]
                require ext_call.return_data[0] <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                sub_2968676e[address(arg2)].field_8 = Mask(248, 0, ext_call.return_data[0] + sub_2968676e[address(arg2)].field_8)
                emit 0x49e9138f: ext_call.return_data[0], msg.sender, address(arg2)
                staticcall address(arg2).isCEther() with:
                        gas gas_remaining wei
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    require ext_code.size(sub_c5d664c6Address)
                    call sub_c5d664c6Address.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg2))
                    call address(arg2).mint() with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 132] = address(arg2)
                        mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 96] = 68
                        mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
                        mem[(7 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + 196] = 32
                        mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_c5d664c6Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 328] = 0
                        call sub_c5d664c6Address with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                                if not mem[(7 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 100] = this.address
                        mem[(7 * ceil32(return_data.size)) + 132] = address(arg2)
                        staticcall sub_c5d664c6Address.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(8 * ceil32(return_data.size)) + 132] = address(arg2)
                        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 96] = 68
                        mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
                        mem[(8 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(8 * ceil32(return_data.size)) + 196] = 32
                        mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_c5d664c6Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0
                        mem[(8 * ceil32(return_data.size)) + 328] = 0
                        call sub_c5d664c6Address with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                                if not mem[(8 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    call address(arg2).mint(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'MINT_FAILED'
            else:
                if not sub_2968676e[address(arg1)].field_8:
                    revert with 0, 'AMOUNT_CANNOT_BE_ZERO'
                if sub_ecad9565 > !sub_2968676e[address(arg1)].field_8:
                    revert with 0, 17
                sub_ecad9565 += sub_2968676e[address(arg1)].field_8
                require sub_2968676e[address(arg1)].field_8 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                sub_2968676e[address(arg2)].field_8 = Mask(248, 0, sub_2968676e[address(arg1)].field_8 + sub_2968676e[address(arg2)].field_8)
                emit 0x49e9138f: sub_2968676e[address(arg1)].field_8, msg.sender, address(arg2)
                staticcall address(arg2).isCEther() with:
                        gas gas_remaining wei
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    require ext_code.size(sub_c5d664c6Address)
                    call sub_c5d664c6Address.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args sub_2968676e[address(arg1)].field_8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg2))
                    call address(arg2).mint() with:
                       value sub_2968676e[address(arg1)].field_8 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not sub_2968676e[address(arg1)].field_8:
                        mem[(7 * ceil32(return_data.size)) + 132] = address(arg2)
                        mem[(7 * ceil32(return_data.size)) + 164] = sub_2968676e[address(arg1)].field_8
                        mem[(7 * ceil32(return_data.size)) + 96] = 68
                        mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
                        mem[(7 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + 196] = 32
                        mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_c5d664c6Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, sub_2968676e[address(arg1)].field_8, 0
                        mem[(7 * ceil32(return_data.size)) + 328] = 0
                        call sub_c5d664c6Address with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, sub_2968676e[address(arg1)].field_8, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, sub_2968676e[address(arg1)].field_8, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                                if not mem[(7 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 100] = this.address
                        mem[(7 * ceil32(return_data.size)) + 132] = address(arg2)
                        staticcall sub_c5d664c6Address.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(8 * ceil32(return_data.size)) + 132] = address(arg2)
                        mem[(8 * ceil32(return_data.size)) + 164] = sub_2968676e[address(arg1)].field_8
                        mem[(8 * ceil32(return_data.size)) + 96] = 68
                        mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
                        mem[(8 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(8 * ceil32(return_data.size)) + 196] = 32
                        mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_c5d664c6Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, sub_2968676e[address(arg1)].field_8, 0
                        mem[(8 * ceil32(return_data.size)) + 328] = 0
                        call sub_c5d664c6Address with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, sub_2968676e[address(arg1)].field_8, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, sub_2968676e[address(arg1)].field_8, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                                if not mem[(8 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    call address(arg2).mint(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_2968676e[address(arg1)].field_8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'MINT_FAILED'
    else:
        staticcall address(arg2).underlying() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != sub_c5d664c6Address:
            revert with 0, 'WRONG_UNDERLYING'
        sub_2968676e[address(arg2)].field_0 = 1
        emit 0x2fc1f5b5: msg.sender, address(arg2)
        if sub_2968676e[address(arg1)].field_8:
            if owner != msg.sender:
                if not stor205[address(msg.sender)]:
                    revert with 0, 'Vault: NO_AUTH'
            if not sub_2968676e[address(arg1)].field_0:
                revert with 0, 'UNTRUSTED_STRATEGY'
            if not sub_2968676e[address(arg1)].field_8:
                revert with 0, 'AMOUNT_CANNOT_BE_ZERO'
            require sub_2968676e[address(arg1)].field_8 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            if sub_2968676e[address(arg1)].field_8 < sub_2968676e[address(arg1)].field_8:
                revert with 0, 17
            sub_2968676e[address(arg1)].field_8 = 0
            sub_ecad9565 -= sub_2968676e[address(arg1)].field_8
            emit 0x7e8d851b: sub_2968676e[address(arg1)].field_8, msg.sender, address(arg1)
            mem[(2 * ceil32(return_data.size)) + 100] = sub_2968676e[address(arg1)].field_8
            call address(arg1).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args sub_2968676e[address(arg1)].field_8
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'REDEEM_FAILED'
            staticcall address(arg1).isCEther() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                staticcall sub_c5d664c6Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(sub_c5d664c6Address)
                call sub_c5d664c6Address.deposit() with:
                   value sub_2968676e[address(arg1)].field_8 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                staticcall sub_c5d664c6Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            require return_data.size >= 32
            if owner != msg.sender:
                if not stor205[address(msg.sender)]:
                    revert with 0, 'Vault: NO_AUTH'
            if not sub_2968676e[address(arg2)].field_0:
                revert with 0, 'UNTRUSTED_STRATEGY'
            if ext_call.return_data[0] < sub_2968676e[address(arg1)].field_8:
                if not ext_call.return_data[0]:
                    revert with 0, 'AMOUNT_CANNOT_BE_ZERO'
                if sub_ecad9565 > !ext_call.return_data[0]:
                    revert with 0, 17
                sub_ecad9565 += ext_call.return_data[0]
                require ext_call.return_data[0] <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                sub_2968676e[address(arg2)].field_8 = Mask(248, 0, ext_call.return_data[0] + sub_2968676e[address(arg2)].field_8)
                emit 0x49e9138f: ext_call.return_data[0], msg.sender, address(arg2)
                staticcall address(arg2).isCEther() with:
                        gas gas_remaining wei
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    require ext_code.size(sub_c5d664c6Address)
                    call sub_c5d664c6Address.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg2))
                    call address(arg2).mint() with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not ext_call.return_data[0]:
                        mem[(8 * ceil32(return_data.size)) + 132] = address(arg2)
                        mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 96] = 68
                        mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
                        mem[(8 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(8 * ceil32(return_data.size)) + 196] = 32
                        mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_c5d664c6Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0
                        mem[(8 * ceil32(return_data.size)) + 328] = 0
                        call sub_c5d664c6Address with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                                if not mem[(8 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(8 * ceil32(return_data.size)) + 100] = this.address
                        mem[(8 * ceil32(return_data.size)) + 132] = address(arg2)
                        staticcall sub_c5d664c6Address.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(10 * ceil32(return_data.size)) + 132] = address(arg2)
                        mem[(10 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        mem[(10 * ceil32(return_data.size)) + 96] = 68
                        mem[(10 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
                        mem[(10 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(10 * ceil32(return_data.size)) + 196] = 32
                        mem[(10 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_c5d664c6Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(10 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0
                        mem[(10 * ceil32(return_data.size)) + 328] = 0
                        call sub_c5d664c6Address with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(10 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(10 * ceil32(return_data.size)) + 292] == bool(mem[(10 * ceil32(return_data.size)) + 292])
                                if not mem[(10 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    call address(arg2).mint(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'MINT_FAILED'
            else:
                if not sub_2968676e[address(arg1)].field_8:
                    revert with 0, 'AMOUNT_CANNOT_BE_ZERO'
                if sub_ecad9565 > !sub_2968676e[address(arg1)].field_8:
                    revert with 0, 17
                sub_ecad9565 += sub_2968676e[address(arg1)].field_8
                require sub_2968676e[address(arg1)].field_8 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                sub_2968676e[address(arg2)].field_8 = Mask(248, 0, sub_2968676e[address(arg1)].field_8 + sub_2968676e[address(arg2)].field_8)
                emit 0x49e9138f: sub_2968676e[address(arg1)].field_8, msg.sender, address(arg2)
                staticcall address(arg2).isCEther() with:
                        gas gas_remaining wei
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    require ext_code.size(sub_c5d664c6Address)
                    call sub_c5d664c6Address.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args sub_2968676e[address(arg1)].field_8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg2))
                    call address(arg2).mint() with:
                       value sub_2968676e[address(arg1)].field_8 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not sub_2968676e[address(arg1)].field_8:
                        mem[(8 * ceil32(return_data.size)) + 132] = address(arg2)
                        mem[(8 * ceil32(return_data.size)) + 164] = sub_2968676e[address(arg1)].field_8
                        mem[(8 * ceil32(return_data.size)) + 96] = 68
                        mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
                        mem[(8 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(8 * ceil32(return_data.size)) + 196] = 32
                        mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_c5d664c6Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, sub_2968676e[address(arg1)].field_8, 0
                        mem[(8 * ceil32(return_data.size)) + 328] = 0
                        call sub_c5d664c6Address with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, sub_2968676e[address(arg1)].field_8, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, sub_2968676e[address(arg1)].field_8, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                                if not mem[(8 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(8 * ceil32(return_data.size)) + 100] = this.address
                        mem[(8 * ceil32(return_data.size)) + 132] = address(arg2)
                        staticcall sub_c5d664c6Address.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg2)
                        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[(10 * ceil32(return_data.size)) + 132] = address(arg2)
                        mem[(10 * ceil32(return_data.size)) + 164] = sub_2968676e[address(arg1)].field_8
                        mem[(10 * ceil32(return_data.size)) + 96] = 68
                        mem[(10 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
                        mem[(10 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                        mem[(10 * ceil32(return_data.size)) + 196] = 32
                        mem[(10 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_c5d664c6Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(10 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, sub_2968676e[address(arg1)].field_8, 0
                        mem[(10 * ceil32(return_data.size)) + 328] = 0
                        call sub_c5d664c6Address with:
                           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, sub_2968676e[address(arg1)].field_8, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, sub_2968676e[address(arg1)].field_8, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(10 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(10 * ceil32(return_data.size)) + 292] == bool(mem[(10 * ceil32(return_data.size)) + 292])
                                if not mem[(10 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    call address(arg2).mint(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_2968676e[address(arg1)].field_8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'MINT_FAILED'
    if owner != msg.sender:
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
    if arg3 < withdrawalQueue.length:
        if arg3 >= withdrawalQueue.length:
            revert with 0, 50
        withdrawalQueue[arg3].field_0 = address(arg2)
        emit 0x4a0a125a: arg3, msg.sender, withdrawalQueue[arg3].field_0, address(arg2)
    else:
        if 32 <= withdrawalQueue.length:
            revert with 0, 'STACK_FULL'
        withdrawalQueue.length++
        stor5185[stor213.length] = address(arg2)
        emit 0xd3c85e76: msg.sender, address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2968676e[address(arg1)].field_0 = 0
    emit 0xff8fe190: msg.sender, address(arg1)
}

function sub_c89d3460(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if msg.sender == owner:
        if lastHarvest > -sub_448f56b9 + test266151307():
            revert with 0, 17
        if block.timestamp >= uint64(sub_448f56b9 + lastHarvest):
            sub_eed74e67 = uint64(block.timestamp)
            idx = 0
            s = sub_ecad9565
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if not sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    revert with 0, 'UNTRUSTED_STRATEGY'
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 211
                mem[mem[64] + 4] = this.address
                call address(cd[((32 * idx) + cd[4] + 36)]).0x3af9e669 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _331 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _349 = mem[_331]
                require mem[_331] <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 211
                sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_8 = Mask(248, 0, _349)
                if s > !_349:
                    revert with 0, 17
                if s + _349 < sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_8:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + _349 - sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_8
                continue 
            require not feePercent or not False
            if not totalSupply:
                require not sub_0e962f00 or not False and sub_0e962f00
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !(0 / sub_0e962f00):
                    revert with 0, 17
                totalSupply += 0 / sub_0e962f00
                if balanceOf[address(this.address)] > !(0 / sub_0e962f00):
                    revert with 0, 17
                balanceOf[address(this.address)] += 0 / sub_0e962f00
                mem[0] = this.address
                emit 0xbeddf252: (0 / sub_0e962f00), 0, this.address
                if block.timestamp >= lastHarvest + sub_448f56b9:
                    sub_ecad9565 = s
                    lastHarvest = uint64(block.timestamp)
                    sub_d00364be = 0
                    _403 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = ('cd', 4).length
                    idx = 0
                    s = mem[64] + 64
                    t = cd[4] + 36
                    while idx < ('cd', 4).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0x69e9c71f: mem[mem[64] len _403 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                else:
                    if not sub_448f56b9:
                        revert with 0, 18
                    if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > -1:
                        revert with 0, 17
                    if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) < 0:
                        revert with 0, 17
                    require sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) <= test266151307()
                    sub_ecad9565 = s
                    lastHarvest = uint64(block.timestamp)
                    sub_d00364be = uint128(sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9))
                    _413 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = ('cd', 4).length
                    idx = 0
                    s = mem[64] + 64
                    t = cd[4] + 36
                    while idx < ('cd', 4).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0x69e9c71f: mem[mem[64] len _413 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
            else:
                if block.timestamp >= lastHarvest + sub_448f56b9:
                    mem[mem[64] + 4] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _359 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _373 = mem[_359]
                    if sub_ecad9565 > !mem[_359]:
                        revert with 0, 17
                    require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) + (mem[_359] * sub_0e962f00) / sub_ecad9565 + mem[_359] or not sub_ecad9565 + mem[_359] and totalSupply
                    require not sub_0e962f00 or not False and (sub_ecad9565 * sub_0e962f00) + (mem[_359] * sub_0e962f00) / totalSupply
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !(0 / (sub_ecad9565 * sub_0e962f00) + (mem[_359] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    totalSupply += 0 / (sub_ecad9565 * sub_0e962f00) + (mem[_359] * sub_0e962f00) / totalSupply
                    if balanceOf[address(this.address)] > !(0 / (sub_ecad9565 * sub_0e962f00) + (mem[_359] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    balanceOf[address(this.address)] += 0 / (sub_ecad9565 * sub_0e962f00) + (mem[_359] * sub_0e962f00) / totalSupply
                    mem[0] = this.address
                    emit 0xbeddf252: (0 / (sub_ecad9565 * sub_0e962f00) + (_373 * sub_0e962f00) / totalSupply), 0, this.address
                    if block.timestamp >= lastHarvest + sub_448f56b9:
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = 0
                        _505 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _505 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                    else:
                        if not sub_448f56b9:
                            revert with 0, 18
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > -1:
                            revert with 0, 17
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) < 0:
                            revert with 0, 17
                        require sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) <= test266151307()
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = uint128(sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9))
                        _511 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _511 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                else:
                    if not sub_448f56b9:
                        revert with 0, 18
                    mem[mem[64] + 4] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _366 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _378 = mem[_366]
                    if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !mem[_366]:
                        revert with 0, 17
                    require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_366] * sub_0e962f00) / sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + mem[_366] or not sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + mem[_366] and totalSupply
                    require not sub_0e962f00 or not False and (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_366] * sub_0e962f00) / totalSupply
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !(0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_366] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    totalSupply += 0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_366] * sub_0e962f00) / totalSupply
                    if balanceOf[address(this.address)] > !(0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_366] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    balanceOf[address(this.address)] += 0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_366] * sub_0e962f00) / totalSupply
                    mem[0] = this.address
                    emit 0xbeddf252: (0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (_378 * sub_0e962f00) / totalSupply), 0, this.address
                    if block.timestamp >= lastHarvest + sub_448f56b9:
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = 0
                        _510 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _510 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                    else:
                        if not sub_448f56b9:
                            revert with 0, 18
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > -1:
                            revert with 0, 17
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) < 0:
                            revert with 0, 17
                        require sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) <= test266151307()
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = uint128(sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9))
                        _517 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _517 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
        else:
            if sub_eed74e67 > -sub_f97d2ed7 + test266151307():
                revert with 0, 17
            if block.timestamp > uint128(sub_f97d2ed7 + sub_eed74e67):
                revert with 0, 'BAD_HARVEST_TIME'
            idx = 0
            s = sub_ecad9565
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if not sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    revert with 0, 'UNTRUSTED_STRATEGY'
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 211
                mem[mem[64] + 4] = this.address
                call address(cd[((32 * idx) + cd[4] + 36)]).0x3af9e669 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _329 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _346 = mem[_329]
                require mem[_329] <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 211
                sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_8 = Mask(248, 0, _346)
                if s > !_346:
                    revert with 0, 17
                if s + _346 < sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_8:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + _346 - sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_8
                continue 
            require not feePercent or not False
            if not totalSupply:
                require not sub_0e962f00 or not False and sub_0e962f00
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !(0 / sub_0e962f00):
                    revert with 0, 17
                totalSupply += 0 / sub_0e962f00
                if balanceOf[address(this.address)] > !(0 / sub_0e962f00):
                    revert with 0, 17
                balanceOf[address(this.address)] += 0 / sub_0e962f00
                mem[0] = this.address
                emit 0xbeddf252: (0 / sub_0e962f00), 0, this.address
                if block.timestamp >= lastHarvest + sub_448f56b9:
                    sub_ecad9565 = s
                    lastHarvest = uint64(block.timestamp)
                    sub_d00364be = 0
                    _401 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = ('cd', 4).length
                    idx = 0
                    s = mem[64] + 64
                    t = cd[4] + 36
                    while idx < ('cd', 4).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0x69e9c71f: mem[mem[64] len _401 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                else:
                    if not sub_448f56b9:
                        revert with 0, 18
                    if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > -1:
                        revert with 0, 17
                    if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) < 0:
                        revert with 0, 17
                    require sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) <= test266151307()
                    sub_ecad9565 = s
                    lastHarvest = uint64(block.timestamp)
                    sub_d00364be = uint128(sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9))
                    _410 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = ('cd', 4).length
                    idx = 0
                    s = mem[64] + 64
                    t = cd[4] + 36
                    while idx < ('cd', 4).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0x69e9c71f: mem[mem[64] len _410 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
            else:
                if block.timestamp >= lastHarvest + sub_448f56b9:
                    mem[mem[64] + 4] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _357 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _372 = mem[_357]
                    if sub_ecad9565 > !mem[_357]:
                        revert with 0, 17
                    require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) + (mem[_357] * sub_0e962f00) / sub_ecad9565 + mem[_357] or not sub_ecad9565 + mem[_357] and totalSupply
                    require not sub_0e962f00 or not False and (sub_ecad9565 * sub_0e962f00) + (mem[_357] * sub_0e962f00) / totalSupply
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !(0 / (sub_ecad9565 * sub_0e962f00) + (mem[_357] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    totalSupply += 0 / (sub_ecad9565 * sub_0e962f00) + (mem[_357] * sub_0e962f00) / totalSupply
                    if balanceOf[address(this.address)] > !(0 / (sub_ecad9565 * sub_0e962f00) + (mem[_357] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    balanceOf[address(this.address)] += 0 / (sub_ecad9565 * sub_0e962f00) + (mem[_357] * sub_0e962f00) / totalSupply
                    mem[0] = this.address
                    emit 0xbeddf252: (0 / (sub_ecad9565 * sub_0e962f00) + (_372 * sub_0e962f00) / totalSupply), 0, this.address
                    if block.timestamp >= lastHarvest + sub_448f56b9:
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = 0
                        _504 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _504 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                    else:
                        if not sub_448f56b9:
                            revert with 0, 18
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > -1:
                            revert with 0, 17
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) < 0:
                            revert with 0, 17
                        require sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) <= test266151307()
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = uint128(sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9))
                        _509 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _509 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                else:
                    if not sub_448f56b9:
                        revert with 0, 18
                    mem[mem[64] + 4] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _364 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _376 = mem[_364]
                    if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !mem[_364]:
                        revert with 0, 17
                    require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_364] * sub_0e962f00) / sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + mem[_364] or not sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + mem[_364] and totalSupply
                    require not sub_0e962f00 or not False and (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_364] * sub_0e962f00) / totalSupply
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !(0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_364] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    totalSupply += 0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_364] * sub_0e962f00) / totalSupply
                    if balanceOf[address(this.address)] > !(0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_364] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    balanceOf[address(this.address)] += 0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_364] * sub_0e962f00) / totalSupply
                    mem[0] = this.address
                    emit 0xbeddf252: (0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (_376 * sub_0e962f00) / totalSupply), 0, this.address
                    if block.timestamp >= lastHarvest + sub_448f56b9:
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = 0
                        _508 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _508 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                    else:
                        if not sub_448f56b9:
                            revert with 0, 18
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > -1:
                            revert with 0, 17
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) < 0:
                            revert with 0, 17
                        require sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) <= test266151307()
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = uint128(sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9))
                        _516 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _516 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
    else:
        mem[0] = msg.sender
        mem[32] = 205
        if not stor205[address(msg.sender)]:
            revert with 0, 'Vault: NO_AUTH'
        if lastHarvest > -sub_448f56b9 + test266151307():
            revert with 0, 17
        if block.timestamp >= uint64(sub_448f56b9 + lastHarvest):
            sub_eed74e67 = uint64(block.timestamp)
            idx = 0
            s = sub_ecad9565
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if not sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    revert with 0, 'UNTRUSTED_STRATEGY'
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 211
                mem[mem[64] + 4] = this.address
                call address(cd[((32 * idx) + cd[4] + 36)]).0x3af9e669 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _335 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _355 = mem[_335]
                require mem[_335] <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 211
                sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_8 = Mask(248, 0, _355)
                if s > !_355:
                    revert with 0, 17
                if s + _355 < sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_8:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + _355 - sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_8
                continue 
            require not feePercent or not False
            if not totalSupply:
                require not sub_0e962f00 or not False and sub_0e962f00
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !(0 / sub_0e962f00):
                    revert with 0, 17
                totalSupply += 0 / sub_0e962f00
                if balanceOf[address(this.address)] > !(0 / sub_0e962f00):
                    revert with 0, 17
                balanceOf[address(this.address)] += 0 / sub_0e962f00
                mem[0] = this.address
                emit 0xbeddf252: (0 / sub_0e962f00), 0, this.address
                if block.timestamp >= lastHarvest + sub_448f56b9:
                    sub_ecad9565 = s
                    lastHarvest = uint64(block.timestamp)
                    sub_d00364be = 0
                    _407 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = ('cd', 4).length
                    idx = 0
                    s = mem[64] + 64
                    t = cd[4] + 36
                    while idx < ('cd', 4).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0x69e9c71f: mem[mem[64] len _407 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                else:
                    if not sub_448f56b9:
                        revert with 0, 18
                    if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > -1:
                        revert with 0, 17
                    if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) < 0:
                        revert with 0, 17
                    require sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) <= test266151307()
                    sub_ecad9565 = s
                    lastHarvest = uint64(block.timestamp)
                    sub_d00364be = uint128(sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9))
                    _419 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = ('cd', 4).length
                    idx = 0
                    s = mem[64] + 64
                    t = cd[4] + 36
                    while idx < ('cd', 4).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0x69e9c71f: mem[mem[64] len _419 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
            else:
                if block.timestamp >= lastHarvest + sub_448f56b9:
                    mem[mem[64] + 4] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _363 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _375 = mem[_363]
                    if sub_ecad9565 > !mem[_363]:
                        revert with 0, 17
                    require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) + (mem[_363] * sub_0e962f00) / sub_ecad9565 + mem[_363] or not sub_ecad9565 + mem[_363] and totalSupply
                    require not sub_0e962f00 or not False and (sub_ecad9565 * sub_0e962f00) + (mem[_363] * sub_0e962f00) / totalSupply
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !(0 / (sub_ecad9565 * sub_0e962f00) + (mem[_363] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    totalSupply += 0 / (sub_ecad9565 * sub_0e962f00) + (mem[_363] * sub_0e962f00) / totalSupply
                    if balanceOf[address(this.address)] > !(0 / (sub_ecad9565 * sub_0e962f00) + (mem[_363] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    balanceOf[address(this.address)] += 0 / (sub_ecad9565 * sub_0e962f00) + (mem[_363] * sub_0e962f00) / totalSupply
                    mem[0] = this.address
                    emit 0xbeddf252: (0 / (sub_ecad9565 * sub_0e962f00) + (_375 * sub_0e962f00) / totalSupply), 0, this.address
                    if block.timestamp >= lastHarvest + sub_448f56b9:
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = 0
                        _507 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _507 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                    else:
                        if not sub_448f56b9:
                            revert with 0, 18
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > -1:
                            revert with 0, 17
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) < 0:
                            revert with 0, 17
                        require sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) <= test266151307()
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = uint128(sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9))
                        _515 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _515 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                else:
                    if not sub_448f56b9:
                        revert with 0, 18
                    mem[mem[64] + 4] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _370 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _382 = mem[_370]
                    if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !mem[_370]:
                        revert with 0, 17
                    require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_370] * sub_0e962f00) / sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + mem[_370] or not sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + mem[_370] and totalSupply
                    require not sub_0e962f00 or not False and (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_370] * sub_0e962f00) / totalSupply
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !(0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_370] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    totalSupply += 0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_370] * sub_0e962f00) / totalSupply
                    if balanceOf[address(this.address)] > !(0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_370] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    balanceOf[address(this.address)] += 0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_370] * sub_0e962f00) / totalSupply
                    mem[0] = this.address
                    emit 0xbeddf252: (0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (_382 * sub_0e962f00) / totalSupply), 0, this.address
                    if block.timestamp >= lastHarvest + sub_448f56b9:
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = 0
                        _514 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _514 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                    else:
                        if not sub_448f56b9:
                            revert with 0, 18
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > -1:
                            revert with 0, 17
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) < 0:
                            revert with 0, 17
                        require sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) <= test266151307()
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = uint128(sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9))
                        _519 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _519 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
        else:
            if sub_eed74e67 > -sub_f97d2ed7 + test266151307():
                revert with 0, 17
            if block.timestamp > uint128(sub_f97d2ed7 + sub_eed74e67):
                revert with 0, 'BAD_HARVEST_TIME'
            idx = 0
            s = sub_ecad9565
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if not sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    revert with 0, 'UNTRUSTED_STRATEGY'
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 211
                mem[mem[64] + 4] = this.address
                call address(cd[((32 * idx) + cd[4] + 36)]).0x3af9e669 with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _333 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _352 = mem[_333]
                require mem[_333] <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 211
                sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_8 = Mask(248, 0, _352)
                if s > !_352:
                    revert with 0, 17
                if s + _352 < sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_8:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + _352 - sub_2968676e[address(cd[((32 * idx) + cd[4] + 36)])].field_8
                continue 
            require not feePercent or not False
            if not totalSupply:
                require not sub_0e962f00 or not False and sub_0e962f00
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !(0 / sub_0e962f00):
                    revert with 0, 17
                totalSupply += 0 / sub_0e962f00
                if balanceOf[address(this.address)] > !(0 / sub_0e962f00):
                    revert with 0, 17
                balanceOf[address(this.address)] += 0 / sub_0e962f00
                mem[0] = this.address
                emit 0xbeddf252: (0 / sub_0e962f00), 0, this.address
                if block.timestamp >= lastHarvest + sub_448f56b9:
                    sub_ecad9565 = s
                    lastHarvest = uint64(block.timestamp)
                    sub_d00364be = 0
                    _405 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = ('cd', 4).length
                    idx = 0
                    s = mem[64] + 64
                    t = cd[4] + 36
                    while idx < ('cd', 4).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0x69e9c71f: mem[mem[64] len _405 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                else:
                    if not sub_448f56b9:
                        revert with 0, 18
                    if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > -1:
                        revert with 0, 17
                    if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) < 0:
                        revert with 0, 17
                    require sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) <= test266151307()
                    sub_ecad9565 = s
                    lastHarvest = uint64(block.timestamp)
                    sub_d00364be = uint128(sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9))
                    _416 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = ('cd', 4).length
                    idx = 0
                    s = mem[64] + 64
                    t = cd[4] + 36
                    while idx < ('cd', 4).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit 0x69e9c71f: mem[mem[64] len _416 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
            else:
                if block.timestamp >= lastHarvest + sub_448f56b9:
                    mem[mem[64] + 4] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _361 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _374 = mem[_361]
                    if sub_ecad9565 > !mem[_361]:
                        revert with 0, 17
                    require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) + (mem[_361] * sub_0e962f00) / sub_ecad9565 + mem[_361] or not sub_ecad9565 + mem[_361] and totalSupply
                    require not sub_0e962f00 or not False and (sub_ecad9565 * sub_0e962f00) + (mem[_361] * sub_0e962f00) / totalSupply
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !(0 / (sub_ecad9565 * sub_0e962f00) + (mem[_361] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    totalSupply += 0 / (sub_ecad9565 * sub_0e962f00) + (mem[_361] * sub_0e962f00) / totalSupply
                    if balanceOf[address(this.address)] > !(0 / (sub_ecad9565 * sub_0e962f00) + (mem[_361] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    balanceOf[address(this.address)] += 0 / (sub_ecad9565 * sub_0e962f00) + (mem[_361] * sub_0e962f00) / totalSupply
                    mem[0] = this.address
                    emit 0xbeddf252: (0 / (sub_ecad9565 * sub_0e962f00) + (_374 * sub_0e962f00) / totalSupply), 0, this.address
                    if block.timestamp >= lastHarvest + sub_448f56b9:
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = 0
                        _506 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _506 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                    else:
                        if not sub_448f56b9:
                            revert with 0, 18
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > -1:
                            revert with 0, 17
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) < 0:
                            revert with 0, 17
                        require sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) <= test266151307()
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = uint128(sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9))
                        _513 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _513 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                else:
                    if not sub_448f56b9:
                        revert with 0, 18
                    mem[mem[64] + 4] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _368 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _380 = mem[_368]
                    if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !mem[_368]:
                        revert with 0, 17
                    require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_368] * sub_0e962f00) / sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + mem[_368] or not sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + mem[_368] and totalSupply
                    require not sub_0e962f00 or not False and (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_368] * sub_0e962f00) / totalSupply
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !(0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_368] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    totalSupply += 0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_368] * sub_0e962f00) / totalSupply
                    if balanceOf[address(this.address)] > !(0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_368] * sub_0e962f00) / totalSupply):
                        revert with 0, 17
                    balanceOf[address(this.address)] += 0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (mem[_368] * sub_0e962f00) / totalSupply
                    mem[0] = this.address
                    emit 0xbeddf252: (0 / (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (_380 * sub_0e962f00) / totalSupply), 0, this.address
                    if block.timestamp >= lastHarvest + sub_448f56b9:
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = 0
                        _512 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _512 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
                    else:
                        if not sub_448f56b9:
                            revert with 0, 18
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > -1:
                            revert with 0, 17
                        if sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) < 0:
                            revert with 0, 17
                        require sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) <= test266151307()
                        sub_ecad9565 = s
                        lastHarvest = uint64(block.timestamp)
                        sub_d00364be = uint128(sub_d00364be - ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9))
                        _518 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = ('cd', 4).length
                        idx = 0
                        s = mem[64] + 64
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit 0x69e9c71f: mem[mem[64] len _518 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
    if sub_797ba463:
        sub_448f56b9 = sub_797ba463
        sub_797ba463 = 0
        emit 0x91e893fa: sub_797ba463, msg.sender
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not totalSupply:
        require sub_0e962f00 == sub_0e962f00 * arg1 / arg1 or not arg1
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
        if balanceOf[address(msg.sender)] < arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg1
        if totalSupply < arg1:
            revert with 0, 17
        totalSupply -= arg1
        emit 0xbeddf252: arg1, msg.sender, 0
        emit 0x3f884eda: (sub_0e962f00 * arg1 / sub_0e962f00), msg.sender
        mem[100] = this.address
        staticcall sub_c5d664c6Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_0e962f00 * arg1 / sub_0e962f00 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = sub_0e962f00 * arg1 / sub_0e962f00
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_c5d664c6Address):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_0e962f00 * arg1 / sub_0e962f00, 0
            mem[ceil32(return_data.size) + 328] = 0
            call sub_c5d664c6Address with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_0e962f00 * arg1 / sub_0e962f00, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_0e962f00 * arg1 / sub_0e962f00, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if block.timestamp >= lastHarvest + sub_448f56b9:
                mem[ceil32(return_data.size) + 100] = this.address
                staticcall sub_c5d664c6Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                if sub_ecad9565 > !ext_call.return_data[0]:
                    revert with 0, 17
                if sub_ecad9565 + ext_call.return_data[0] < sub_0e962f00 * arg1 / sub_0e962f00:
                    revert with 0, 17
                require sub_1c693478 == (sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / sub_ecad9565 + ext_call.return_data[0] - (sub_0e962f00 * arg1 / sub_0e962f00) or not sub_ecad9565 + ext_call.return_data[0] - (sub_0e962f00 * arg1 / sub_0e962f00)
                if sub_0e962f00 * arg1 / sub_0e962f00 < ext_call.return_data[0]:
                    revert with 0, 17
                if (sub_0e962f00 * arg1 / sub_0e962f00) - ext_call.return_data[0] > !((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18):
                    revert with 0, 17
                if withdrawalQueue.length < 1:
                    revert with 0, 17
                if var74001 >= withdrawalQueue.length:
                    revert with 0, 50
                mem[32] = 211
                if not sub_2968676e[stor213[var76001].field_0].field_0:
                    if not withdrawalQueue.length:
                        revert with 0, 49
                    withdrawalQueue[withdrawalQueue.length].field_0 = 0
                    withdrawalQueue.length--
                    mem[0] = 213
                    emit 0x6457075a: msg.sender, withdrawalQueue[var76001].field_0
                    if not var76004:
                        revert with 0, 17
                    if var76004 - 1 >= withdrawalQueue.length:
                        revert with 0, 50
                    var76001 = var76004 - 1
                    var76004 = var76004 - 1
                    continue 
                if not sub_2968676e[stor213[var76001].field_0].field_8:
                    if not withdrawalQueue.length:
                        revert with 0, 49
                    withdrawalQueue[withdrawalQueue.length].field_0 = 0
                    withdrawalQueue.length--
                    mem[0] = 213
                    emit 0x6457075a: msg.sender, withdrawalQueue[var76001].field_0
                    if not var76004:
                        revert with 0, 17
                    if var76004 - 1 >= withdrawalQueue.length:
                        revert with 0, 50
                    var76001 = var76004 - 1
                    var76004 = var76004 - 1
                    continue 
                if sub_2968676e[stor213[var76001].field_0].field_8 > (sub_0e962f00 * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18):
                    emit 0x7e8d851b: ((sub_0e962f00 * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)), msg.sender, withdrawalQueue[var76001].field_0
                    mem[(2 * ceil32(return_data.size)) + 100] = (sub_0e962f00 * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)
                    call withdrawalQueue[var76001].field_0.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((sub_0e962f00 * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18))
                else:
                    emit 0x7e8d851b: sub_2968676e[stor213[var76001].field_0].field_8, msg.sender, withdrawalQueue[var76001].field_0
                    mem[(2 * ceil32(return_data.size)) + 100] = sub_2968676e[stor213[var76001].field_0].field_8
                    call withdrawalQueue[var76001].field_0.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_2968676e[stor213[var76001].field_0].field_8
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'REDEEM_FAILED'
                if not sub_f84d73f4:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not eth.balance(this.address):
                        mem[(4 * ceil32(return_data.size)) + 100] = this.address
                        staticcall sub_c5d664c6Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(sub_c5d664c6Address)
                        call sub_c5d664c6Address.deposit() with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 100] = this.address
                        staticcall sub_c5d664c6Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                if sub_2968676e[stor213[var76001].field_0].field_8 <= 0:
                    mem[32] = 211
                    sub_2968676e[stor213[var76001].field_0].field_0 = sub_2968676e[stor213[var76001].field_0].field_0
                    if not withdrawalQueue.length:
                        revert with 0, 49
                    withdrawalQueue[withdrawalQueue.length].field_0 = 0
                    withdrawalQueue.length--
                    if (sub_0e962f00 * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) <= ext_call.return_data[0]:
                        emit 0x6457075a: msg.sender, withdrawalQueue[var76001].field_0
                    else:
                        mem[0] = 213
                        emit 0x6457075a: msg.sender, withdrawalQueue[var76001].field_0
                        if (sub_0e962f00 * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) - ext_call.return_data[0]:
                            if not var76004:
                                revert with 0, 17
                            if var76004 - 1 >= withdrawalQueue.length:
                                revert with 0, 50
                            var76001 = var76004 - 1
                            var76004 = var76004 - 1
                            continue 
                else:
                    require sub_2968676e[stor213[var76001].field_0].field_8 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[0] = withdrawalQueue[var76001].field_0
                    mem[32] = 211
                    sub_2968676e[stor213[var76001].field_0].field_8 = sub_2968676e[stor213[var76001].field_0].field_8
                    if (sub_0e962f00 * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) <= ext_call.return_data[0]:
                        if not sub_2968676e[stor213[var76001].field_0].field_8:
                            if not withdrawalQueue.length:
                                revert with 0, 49
                            withdrawalQueue[withdrawalQueue.length].field_0 = 0
                            withdrawalQueue.length--
                            emit 0x6457075a: msg.sender, withdrawalQueue[var76001].field_0
                    else:
                        if not sub_2968676e[stor213[var76001].field_0].field_8:
                            if not withdrawalQueue.length:
                                revert with 0, 49
                            withdrawalQueue[withdrawalQueue.length].field_0 = 0
                            withdrawalQueue.length--
                            mem[0] = 213
                            emit 0x6457075a: msg.sender, withdrawalQueue[var76001].field_0
                        if (sub_0e962f00 * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) - ext_call.return_data[0]:
                            if not var76004:
                                revert with 0, 17
                            if var76004 - 1 >= withdrawalQueue.length:
                                revert with 0, 50
                            var76001 = var76004 - 1
                            var76004 = var76004 - 1
                            continue 
                sub_ecad9565 = sub_ecad9565 - (sub_0e962f00 * arg1 / sub_0e962f00) + ext_call.return_data[0] - ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)
            else:
                if not sub_448f56b9:
                    revert with 0, 18
                mem[ceil32(return_data.size) + 100] = this.address
                staticcall sub_c5d664c6Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !ext_call.return_data[0]:
                    revert with 0, 17
                if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] < sub_0e962f00 * arg1 / sub_0e962f00:
                    revert with 0, 17
                require sub_1c693478 == (sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] - (sub_0e962f00 * arg1 / sub_0e962f00) or not sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] - (sub_0e962f00 * arg1 / sub_0e962f00)
                if sub_0e962f00 * arg1 / sub_0e962f00 < ext_call.return_data[0]:
                    revert with 0, 17
                if (sub_0e962f00 * arg1 / sub_0e962f00) - ext_call.return_data[0] > !((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18):
                    revert with 0, 17
                if withdrawalQueue.length < 1:
                    revert with 0, 17
                if var75001 >= withdrawalQueue.length:
                    revert with 0, 50
                mem[32] = 211
                if not sub_2968676e[stor213[var77001].field_0].field_0:
                    if not withdrawalQueue.length:
                        revert with 0, 49
                    withdrawalQueue[withdrawalQueue.length].field_0 = 0
                    withdrawalQueue.length--
                    mem[0] = 213
                    emit 0x6457075a: msg.sender, withdrawalQueue[var77001].field_0
                    if not var77004:
                        revert with 0, 17
                    if var77004 - 1 >= withdrawalQueue.length:
                        revert with 0, 50
                    var77001 = var77004 - 1
                    var77004 = var77004 - 1
                    continue 
                if not sub_2968676e[stor213[var77001].field_0].field_8:
                    if not withdrawalQueue.length:
                        revert with 0, 49
                    withdrawalQueue[withdrawalQueue.length].field_0 = 0
                    withdrawalQueue.length--
                    mem[0] = 213
                    emit 0x6457075a: msg.sender, withdrawalQueue[var77001].field_0
                    if not var77004:
                        revert with 0, 17
                    if var77004 - 1 >= withdrawalQueue.length:
                        revert with 0, 50
                    var77001 = var77004 - 1
                    var77004 = var77004 - 1
                    continue 
                if sub_2968676e[stor213[var77001].field_0].field_8 > (sub_0e962f00 * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18):
                    emit 0x7e8d851b: ((sub_0e962f00 * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)), msg.sender, withdrawalQueue[var77001].field_0
                    mem[(2 * ceil32(return_data.size)) + 100] = (sub_0e962f00 * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)
                    call withdrawalQueue[var77001].field_0.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((sub_0e962f00 * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18))
                else:
                    emit 0x7e8d851b: sub_2968676e[stor213[var77001].field_0].field_8, msg.sender, withdrawalQueue[var77001].field_0
                    mem[(2 * ceil32(return_data.size)) + 100] = sub_2968676e[stor213[var77001].field_0].field_8
                    call withdrawalQueue[var77001].field_0.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_2968676e[stor213[var77001].field_0].field_8
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'REDEEM_FAILED'
                if not sub_f84d73f4:
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not eth.balance(this.address):
                        mem[(4 * ceil32(return_data.size)) + 100] = this.address
                        staticcall sub_c5d664c6Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(sub_c5d664c6Address)
                        call sub_c5d664c6Address.deposit() with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 100] = this.address
                        staticcall sub_c5d664c6Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                if sub_2968676e[stor213[var77001].field_0].field_8 <= 0:
                    mem[32] = 211
                    sub_2968676e[stor213[var77001].field_0].field_0 = sub_2968676e[stor213[var77001].field_0].field_0
                    if not withdrawalQueue.length:
                        revert with 0, 49
                    withdrawalQueue[withdrawalQueue.length].field_0 = 0
                    withdrawalQueue.length--
                    if (sub_0e962f00 * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) <= ext_call.return_data[0]:
                        emit 0x6457075a: msg.sender, withdrawalQueue[var77001].field_0
                    else:
                        mem[0] = 213
                        emit 0x6457075a: msg.sender, withdrawalQueue[var77001].field_0
                        if (sub_0e962f00 * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) - ext_call.return_data[0]:
                            if not var77004:
                                revert with 0, 17
                            if var77004 - 1 >= withdrawalQueue.length:
                                revert with 0, 50
                            var77001 = var77004 - 1
                            var77004 = var77004 - 1
                            continue 
                else:
                    require sub_2968676e[stor213[var77001].field_0].field_8 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[0] = withdrawalQueue[var77001].field_0
                    mem[32] = 211
                    sub_2968676e[stor213[var77001].field_0].field_8 = sub_2968676e[stor213[var77001].field_0].field_8
                    if (sub_0e962f00 * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) <= ext_call.return_data[0]:
                        if not sub_2968676e[stor213[var77001].field_0].field_8:
                            if not withdrawalQueue.length:
                                revert with 0, 49
                            withdrawalQueue[withdrawalQueue.length].field_0 = 0
                            withdrawalQueue.length--
                            emit 0x6457075a: msg.sender, withdrawalQueue[var77001].field_0
                    else:
                        if not sub_2968676e[stor213[var77001].field_0].field_8:
                            if not withdrawalQueue.length:
                                revert with 0, 49
                            withdrawalQueue[withdrawalQueue.length].field_0 = 0
                            withdrawalQueue.length--
                            mem[0] = 213
                            emit 0x6457075a: msg.sender, withdrawalQueue[var77001].field_0
                        if (sub_0e962f00 * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) - ext_call.return_data[0]:
                            if not var77004:
                                revert with 0, 17
                            if var77004 - 1 >= withdrawalQueue.length:
                                revert with 0, 50
                            var77001 = var77004 - 1
                            var77004 = var77004 - 1
                            continue 
                sub_ecad9565 = sub_ecad9565 - (sub_0e962f00 * arg1 / sub_0e962f00) + ext_call.return_data[0] - ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - (sub_0e962f00 * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)
            mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 164] = sub_0e962f00 * arg1 / sub_0e962f00
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_c5d664c6Address):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_0e962f00 * arg1 / sub_0e962f00, 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call sub_c5d664c6Address with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_0e962f00 * arg1 / sub_0e962f00, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_0e962f00 * arg1 / sub_0e962f00, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if block.timestamp >= lastHarvest + sub_448f56b9:
            mem[100] = this.address
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ecad9565 > !ext_call.return_data[0]:
                revert with 0, 17
            require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / sub_ecad9565 + ext_call.return_data[0] or not sub_ecad9565 + ext_call.return_data[0] and totalSupply
            require (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply == (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / arg1 or not arg1
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if balanceOf[address(msg.sender)] < arg1:
                revert with 0, 'ERC20: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg1
            if totalSupply < arg1:
                revert with 0, 17
            totalSupply -= arg1
            emit 0xbeddf252: arg1, msg.sender, 0
            emit 0x3f884eda: ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00), msg.sender
            mem[ceil32(return_data.size) + 100] = this.address
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 <= ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_c5d664c6Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call sub_c5d664c6Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                        if not mem[(2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if block.timestamp >= lastHarvest + sub_448f56b9:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if sub_ecad9565 > !ext_call.return_data[0]:
                        revert with 0, 17
                    if sub_ecad9565 + ext_call.return_data[0] < (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00:
                        revert with 0, 17
                    require sub_1c693478 == (sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / sub_ecad9565 + ext_call.return_data[0] - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) or not sub_ecad9565 + ext_call.return_data[0] - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00)
                    if (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 < ext_call.return_data[0]:
                        revert with 0, 17
                    if ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] > !((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18):
                        revert with 0, 17
                    if withdrawalQueue.length < 1:
                        revert with 0, 17
                    if var93001 >= withdrawalQueue.length:
                        revert with 0, 50
                    mem[32] = 211
                    if not sub_2968676e[stor213[var95001].field_0].field_0:
                        if not withdrawalQueue.length:
                            revert with 0, 49
                        withdrawalQueue[withdrawalQueue.length].field_0 = 0
                        withdrawalQueue.length--
                        mem[0] = 213
                        emit 0x6457075a: msg.sender, withdrawalQueue[var95001].field_0
                        if not var95004:
                            revert with 0, 17
                        if var95004 - 1 >= withdrawalQueue.length:
                            revert with 0, 50
                        var95001 = var95004 - 1
                        var95004 = var95004 - 1
                        continue 
                    if not sub_2968676e[stor213[var95001].field_0].field_8:
                        if not withdrawalQueue.length:
                            revert with 0, 49
                        withdrawalQueue[withdrawalQueue.length].field_0 = 0
                        withdrawalQueue.length--
                        mem[0] = 213
                        emit 0x6457075a: msg.sender, withdrawalQueue[var95001].field_0
                        if not var95004:
                            revert with 0, 17
                        if var95004 - 1 >= withdrawalQueue.length:
                            revert with 0, 50
                        var95001 = var95004 - 1
                        var95004 = var95004 - 1
                        continue 
                    if sub_2968676e[stor213[var95001].field_0].field_8 > ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18):
                        emit 0x7e8d851b: (((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)), msg.sender, withdrawalQueue[var95001].field_0
                        mem[(4 * ceil32(return_data.size)) + 100] = ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)
                        call withdrawalQueue[var95001].field_0.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18))
                    else:
                        emit 0x7e8d851b: sub_2968676e[stor213[var95001].field_0].field_8, msg.sender, withdrawalQueue[var95001].field_0
                        mem[(4 * ceil32(return_data.size)) + 100] = sub_2968676e[stor213[var95001].field_0].field_8
                        call withdrawalQueue[var95001].field_0.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_2968676e[stor213[var95001].field_0].field_8
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'REDEEM_FAILED'
                    if not sub_f84d73f4:
                        mem[(6 * ceil32(return_data.size)) + 100] = this.address
                        staticcall sub_c5d664c6Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not eth.balance(this.address):
                            mem[(6 * ceil32(return_data.size)) + 100] = this.address
                            staticcall sub_c5d664c6Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_c5d664c6Address)
                            call sub_c5d664c6Address.deposit() with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 100] = this.address
                            staticcall sub_c5d664c6Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    mem[64] = (7 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if sub_2968676e[stor213[var95001].field_0].field_8 <= 0:
                        mem[32] = 211
                        sub_2968676e[stor213[var95001].field_0].field_0 = sub_2968676e[stor213[var95001].field_0].field_0
                        if not withdrawalQueue.length:
                            revert with 0, 49
                        withdrawalQueue[withdrawalQueue.length].field_0 = 0
                        withdrawalQueue.length--
                        if ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) <= ext_call.return_data[0]:
                            emit 0x6457075a: msg.sender, withdrawalQueue[var95001].field_0
                        else:
                            mem[0] = 213
                            emit 0x6457075a: msg.sender, withdrawalQueue[var95001].field_0
                            if ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) - ext_call.return_data[0]:
                                if not var95004:
                                    revert with 0, 17
                                if var95004 - 1 >= withdrawalQueue.length:
                                    revert with 0, 50
                                var95001 = var95004 - 1
                                var95004 = var95004 - 1
                                continue 
                    else:
                        require sub_2968676e[stor213[var95001].field_0].field_8 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[0] = withdrawalQueue[var95001].field_0
                        mem[32] = 211
                        sub_2968676e[stor213[var95001].field_0].field_8 = sub_2968676e[stor213[var95001].field_0].field_8
                        if ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) <= ext_call.return_data[0]:
                            if not sub_2968676e[stor213[var95001].field_0].field_8:
                                if not withdrawalQueue.length:
                                    revert with 0, 49
                                withdrawalQueue[withdrawalQueue.length].field_0 = 0
                                withdrawalQueue.length--
                                emit 0x6457075a: msg.sender, withdrawalQueue[var95001].field_0
                        else:
                            if not sub_2968676e[stor213[var95001].field_0].field_8:
                                if not withdrawalQueue.length:
                                    revert with 0, 49
                                withdrawalQueue[withdrawalQueue.length].field_0 = 0
                                withdrawalQueue.length--
                                mem[0] = 213
                                emit 0x6457075a: msg.sender, withdrawalQueue[var95001].field_0
                            if ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) - ext_call.return_data[0]:
                                if not var95004:
                                    revert with 0, 17
                                if var95004 - 1 >= withdrawalQueue.length:
                                    revert with 0, 50
                                var95001 = var95004 - 1
                                var95004 = var95004 - 1
                                continue 
                    sub_ecad9565 = sub_ecad9565 - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ext_call.return_data[0] - ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)
                else:
                    if not sub_448f56b9:
                        revert with 0, 18
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] < (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00:
                        revert with 0, 17
                    require sub_1c693478 == (sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) or not sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00)
                    if (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 < ext_call.return_data[0]:
                        revert with 0, 17
                    if ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] > !((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18):
                        revert with 0, 17
                    if withdrawalQueue.length < 1:
                        revert with 0, 17
                    if var94001 >= withdrawalQueue.length:
                        revert with 0, 50
                    mem[32] = 211
                    if not sub_2968676e[stor213[var96001].field_0].field_0:
                        if not withdrawalQueue.length:
                            revert with 0, 49
                        withdrawalQueue[withdrawalQueue.length].field_0 = 0
                        withdrawalQueue.length--
                        mem[0] = 213
                        emit 0x6457075a: msg.sender, withdrawalQueue[var96001].field_0
                        if not var96004:
                            revert with 0, 17
                        if var96004 - 1 >= withdrawalQueue.length:
                            revert with 0, 50
                        var96001 = var96004 - 1
                        var96004 = var96004 - 1
                        continue 
                    if not sub_2968676e[stor213[var96001].field_0].field_8:
                        if not withdrawalQueue.length:
                            revert with 0, 49
                        withdrawalQueue[withdrawalQueue.length].field_0 = 0
                        withdrawalQueue.length--
                        mem[0] = 213
                        emit 0x6457075a: msg.sender, withdrawalQueue[var96001].field_0
                        if not var96004:
                            revert with 0, 17
                        if var96004 - 1 >= withdrawalQueue.length:
                            revert with 0, 50
                        var96001 = var96004 - 1
                        var96004 = var96004 - 1
                        continue 
                    if sub_2968676e[stor213[var96001].field_0].field_8 > ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18):
                        emit 0x7e8d851b: (((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)), msg.sender, withdrawalQueue[var96001].field_0
                        mem[(4 * ceil32(return_data.size)) + 100] = ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)
                        call withdrawalQueue[var96001].field_0.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18))
                    else:
                        emit 0x7e8d851b: sub_2968676e[stor213[var96001].field_0].field_8, msg.sender, withdrawalQueue[var96001].field_0
                        mem[(4 * ceil32(return_data.size)) + 100] = sub_2968676e[stor213[var96001].field_0].field_8
                        call withdrawalQueue[var96001].field_0.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_2968676e[stor213[var96001].field_0].field_8
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'REDEEM_FAILED'
                    if not sub_f84d73f4:
                        mem[(6 * ceil32(return_data.size)) + 100] = this.address
                        staticcall sub_c5d664c6Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not eth.balance(this.address):
                            mem[(6 * ceil32(return_data.size)) + 100] = this.address
                            staticcall sub_c5d664c6Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_c5d664c6Address)
                            call sub_c5d664c6Address.deposit() with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 100] = this.address
                            staticcall sub_c5d664c6Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    mem[64] = (7 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if sub_2968676e[stor213[var96001].field_0].field_8 <= 0:
                        mem[32] = 211
                        sub_2968676e[stor213[var96001].field_0].field_0 = sub_2968676e[stor213[var96001].field_0].field_0
                        if not withdrawalQueue.length:
                            revert with 0, 49
                        withdrawalQueue[withdrawalQueue.length].field_0 = 0
                        withdrawalQueue.length--
                        if ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) <= ext_call.return_data[0]:
                            emit 0x6457075a: msg.sender, withdrawalQueue[var96001].field_0
                        else:
                            mem[0] = 213
                            emit 0x6457075a: msg.sender, withdrawalQueue[var96001].field_0
                            if ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) - ext_call.return_data[0]:
                                if not var96004:
                                    revert with 0, 17
                                if var96004 - 1 >= withdrawalQueue.length:
                                    revert with 0, 50
                                var96001 = var96004 - 1
                                var96004 = var96004 - 1
                                continue 
                    else:
                        require sub_2968676e[stor213[var96001].field_0].field_8 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[0] = withdrawalQueue[var96001].field_0
                        mem[32] = 211
                        sub_2968676e[stor213[var96001].field_0].field_8 = sub_2968676e[stor213[var96001].field_0].field_8
                        if ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) <= ext_call.return_data[0]:
                            if not sub_2968676e[stor213[var96001].field_0].field_8:
                                if not withdrawalQueue.length:
                                    revert with 0, 49
                                withdrawalQueue[withdrawalQueue.length].field_0 = 0
                                withdrawalQueue.length--
                                emit 0x6457075a: msg.sender, withdrawalQueue[var96001].field_0
                        else:
                            if not sub_2968676e[stor213[var96001].field_0].field_8:
                                if not withdrawalQueue.length:
                                    revert with 0, 49
                                withdrawalQueue[withdrawalQueue.length].field_0 = 0
                                withdrawalQueue.length--
                                mem[0] = 213
                                emit 0x6457075a: msg.sender, withdrawalQueue[var96001].field_0
                            if ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) - ext_call.return_data[0]:
                                if not var96004:
                                    revert with 0, 17
                                if var96004 - 1 >= withdrawalQueue.length:
                                    revert with 0, 50
                                var96001 = var96004 - 1
                                var96004 = var96004 - 1
                                continue 
                    sub_ecad9565 = sub_ecad9565 - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ext_call.return_data[0] - ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)
                mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 164] = (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00
                mem[(7 * ceil32(return_data.size)) + 96] = 68
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 196] = 32
                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_c5d664c6Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00, 0
                mem[(7 * ceil32(return_data.size)) + 328] = 0
                call sub_c5d664c6Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (sub_ecad9565 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                        if not mem[(7 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if not sub_448f56b9:
                revert with 0, 18
            mem[100] = this.address
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !ext_call.return_data[0]:
                revert with 0, 17
            require sub_0e962f00 == (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] or not sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] and totalSupply
            require (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply == (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / arg1 or not arg1
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if balanceOf[address(msg.sender)] < arg1:
                revert with 0, 'ERC20: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg1
            if totalSupply < arg1:
                revert with 0, 17
            totalSupply -= arg1
            emit 0xbeddf252: arg1, msg.sender, 0
            emit 0x3f884eda: ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00), msg.sender
            mem[ceil32(return_data.size) + 100] = this.address
            staticcall sub_c5d664c6Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 <= ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_c5d664c6Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call sub_c5d664c6Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                        if not mem[(2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if block.timestamp >= lastHarvest + sub_448f56b9:
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if sub_ecad9565 > !ext_call.return_data[0]:
                        revert with 0, 17
                    if sub_ecad9565 + ext_call.return_data[0] < (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00:
                        revert with 0, 17
                    require sub_1c693478 == (sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / sub_ecad9565 + ext_call.return_data[0] - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) or not sub_ecad9565 + ext_call.return_data[0] - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00)
                    if (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 < ext_call.return_data[0]:
                        revert with 0, 17
                    if ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] > !((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18):
                        revert with 0, 17
                    if withdrawalQueue.length < 1:
                        revert with 0, 17
                    if var94001 >= withdrawalQueue.length:
                        revert with 0, 50
                    mem[32] = 211
                    if not sub_2968676e[stor213[var96001].field_0].field_0:
                        if not withdrawalQueue.length:
                            revert with 0, 49
                        withdrawalQueue[withdrawalQueue.length].field_0 = 0
                        withdrawalQueue.length--
                        mem[0] = 213
                        emit 0x6457075a: msg.sender, withdrawalQueue[var96001].field_0
                        if not var96004:
                            revert with 0, 17
                        if var96004 - 1 >= withdrawalQueue.length:
                            revert with 0, 50
                        var96001 = var96004 - 1
                        var96004 = var96004 - 1
                        continue 
                    if not sub_2968676e[stor213[var96001].field_0].field_8:
                        if not withdrawalQueue.length:
                            revert with 0, 49
                        withdrawalQueue[withdrawalQueue.length].field_0 = 0
                        withdrawalQueue.length--
                        mem[0] = 213
                        emit 0x6457075a: msg.sender, withdrawalQueue[var96001].field_0
                        if not var96004:
                            revert with 0, 17
                        if var96004 - 1 >= withdrawalQueue.length:
                            revert with 0, 50
                        var96001 = var96004 - 1
                        var96004 = var96004 - 1
                        continue 
                    if sub_2968676e[stor213[var96001].field_0].field_8 > ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18):
                        emit 0x7e8d851b: (((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)), msg.sender, withdrawalQueue[var96001].field_0
                        mem[(4 * ceil32(return_data.size)) + 100] = ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)
                        call withdrawalQueue[var96001].field_0.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18))
                    else:
                        emit 0x7e8d851b: sub_2968676e[stor213[var96001].field_0].field_8, msg.sender, withdrawalQueue[var96001].field_0
                        mem[(4 * ceil32(return_data.size)) + 100] = sub_2968676e[stor213[var96001].field_0].field_8
                        call withdrawalQueue[var96001].field_0.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_2968676e[stor213[var96001].field_0].field_8
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'REDEEM_FAILED'
                    if not sub_f84d73f4:
                        mem[(6 * ceil32(return_data.size)) + 100] = this.address
                        staticcall sub_c5d664c6Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not eth.balance(this.address):
                            mem[(6 * ceil32(return_data.size)) + 100] = this.address
                            staticcall sub_c5d664c6Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_c5d664c6Address)
                            call sub_c5d664c6Address.deposit() with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 100] = this.address
                            staticcall sub_c5d664c6Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    mem[64] = (7 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if sub_2968676e[stor213[var96001].field_0].field_8 <= 0:
                        mem[32] = 211
                        sub_2968676e[stor213[var96001].field_0].field_0 = sub_2968676e[stor213[var96001].field_0].field_0
                        if not withdrawalQueue.length:
                            revert with 0, 49
                        withdrawalQueue[withdrawalQueue.length].field_0 = 0
                        withdrawalQueue.length--
                        if ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) <= ext_call.return_data[0]:
                            emit 0x6457075a: msg.sender, withdrawalQueue[var96001].field_0
                        else:
                            mem[0] = 213
                            emit 0x6457075a: msg.sender, withdrawalQueue[var96001].field_0
                            if ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) - ext_call.return_data[0]:
                                if not var96004:
                                    revert with 0, 17
                                if var96004 - 1 >= withdrawalQueue.length:
                                    revert with 0, 50
                                var96001 = var96004 - 1
                                var96004 = var96004 - 1
                                continue 
                    else:
                        require sub_2968676e[stor213[var96001].field_0].field_8 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[0] = withdrawalQueue[var96001].field_0
                        mem[32] = 211
                        sub_2968676e[stor213[var96001].field_0].field_8 = sub_2968676e[stor213[var96001].field_0].field_8
                        if ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) <= ext_call.return_data[0]:
                            if not sub_2968676e[stor213[var96001].field_0].field_8:
                                if not withdrawalQueue.length:
                                    revert with 0, 49
                                withdrawalQueue[withdrawalQueue.length].field_0 = 0
                                withdrawalQueue.length--
                                emit 0x6457075a: msg.sender, withdrawalQueue[var96001].field_0
                        else:
                            if not sub_2968676e[stor213[var96001].field_0].field_8:
                                if not withdrawalQueue.length:
                                    revert with 0, 49
                                withdrawalQueue[withdrawalQueue.length].field_0 = 0
                                withdrawalQueue.length--
                                mem[0] = 213
                                emit 0x6457075a: msg.sender, withdrawalQueue[var96001].field_0
                            if ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) - ext_call.return_data[0]:
                                if not var96004:
                                    revert with 0, 17
                                if var96004 - 1 >= withdrawalQueue.length:
                                    revert with 0, 50
                                var96001 = var96004 - 1
                                var96004 = var96004 - 1
                                continue 
                    sub_ecad9565 = sub_ecad9565 - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ext_call.return_data[0] - ((sub_ecad9565 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)
                else:
                    if not sub_448f56b9:
                        revert with 0, 18
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    staticcall sub_c5d664c6Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] < (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00:
                        revert with 0, 17
                    require sub_1c693478 == (sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) or not sub_ecad9565 - sub_d00364be + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9) + ext_call.return_data[0] - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00)
                    if (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 < ext_call.return_data[0]:
                        revert with 0, 17
                    if ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] > !((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18):
                        revert with 0, 17
                    if withdrawalQueue.length < 1:
                        revert with 0, 17
                    if var95001 >= withdrawalQueue.length:
                        revert with 0, 50
                    mem[32] = 211
                    if not sub_2968676e[stor213[var97001].field_0].field_0:
                        if not withdrawalQueue.length:
                            revert with 0, 49
                        withdrawalQueue[withdrawalQueue.length].field_0 = 0
                        withdrawalQueue.length--
                        mem[0] = 213
                        emit 0x6457075a: msg.sender, withdrawalQueue[var97001].field_0
                        if not var97004:
                            revert with 0, 17
                        if var97004 - 1 >= withdrawalQueue.length:
                            revert with 0, 50
                        var97001 = var97004 - 1
                        var97004 = var97004 - 1
                        continue 
                    if not sub_2968676e[stor213[var97001].field_0].field_8:
                        if not withdrawalQueue.length:
                            revert with 0, 49
                        withdrawalQueue[withdrawalQueue.length].field_0 = 0
                        withdrawalQueue.length--
                        mem[0] = 213
                        emit 0x6457075a: msg.sender, withdrawalQueue[var97001].field_0
                        if not var97004:
                            revert with 0, 17
                        if var97004 - 1 >= withdrawalQueue.length:
                            revert with 0, 50
                        var97001 = var97004 - 1
                        var97004 = var97004 - 1
                        continue 
                    if sub_2968676e[stor213[var97001].field_0].field_8 > ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18):
                        emit 0x7e8d851b: (((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)), msg.sender, withdrawalQueue[var97001].field_0
                        mem[(4 * ceil32(return_data.size)) + 100] = ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)
                        call withdrawalQueue[var97001].field_0.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) - ext_call.return_data[0] + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18))
                    else:
                        emit 0x7e8d851b: sub_2968676e[stor213[var97001].field_0].field_8, msg.sender, withdrawalQueue[var97001].field_0
                        mem[(4 * ceil32(return_data.size)) + 100] = sub_2968676e[stor213[var97001].field_0].field_8
                        call withdrawalQueue[var97001].field_0.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_2968676e[stor213[var97001].field_0].field_8
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'REDEEM_FAILED'
                    if not sub_f84d73f4:
                        mem[(6 * ceil32(return_data.size)) + 100] = this.address
                        staticcall sub_c5d664c6Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not eth.balance(this.address):
                            mem[(6 * ceil32(return_data.size)) + 100] = this.address
                            staticcall sub_c5d664c6Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_c5d664c6Address)
                            call sub_c5d664c6Address.deposit() with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 100] = this.address
                            staticcall sub_c5d664c6Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    mem[64] = (7 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    if sub_2968676e[stor213[var97001].field_0].field_8 <= 0:
                        mem[32] = 211
                        sub_2968676e[stor213[var97001].field_0].field_0 = sub_2968676e[stor213[var97001].field_0].field_0
                        if not withdrawalQueue.length:
                            revert with 0, 49
                        withdrawalQueue[withdrawalQueue.length].field_0 = 0
                        withdrawalQueue.length--
                        if ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) <= ext_call.return_data[0]:
                            emit 0x6457075a: msg.sender, withdrawalQueue[var97001].field_0
                        else:
                            mem[0] = 213
                            emit 0x6457075a: msg.sender, withdrawalQueue[var97001].field_0
                            if ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) - ext_call.return_data[0]:
                                if not var97004:
                                    revert with 0, 17
                                if var97004 - 1 >= withdrawalQueue.length:
                                    revert with 0, 50
                                var97001 = var97004 - 1
                                var97004 = var97004 - 1
                                continue 
                    else:
                        require sub_2968676e[stor213[var97001].field_0].field_8 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[0] = withdrawalQueue[var97001].field_0
                        mem[32] = 211
                        sub_2968676e[stor213[var97001].field_0].field_8 = sub_2968676e[stor213[var97001].field_0].field_8
                        if ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) <= ext_call.return_data[0]:
                            if not sub_2968676e[stor213[var97001].field_0].field_8:
                                if not withdrawalQueue.length:
                                    revert with 0, 49
                                withdrawalQueue[withdrawalQueue.length].field_0 = 0
                                withdrawalQueue.length--
                                emit 0x6457075a: msg.sender, withdrawalQueue[var97001].field_0
                        else:
                            if not sub_2968676e[stor213[var97001].field_0].field_8:
                                if not withdrawalQueue.length:
                                    revert with 0, 49
                                withdrawalQueue[withdrawalQueue.length].field_0 = 0
                                withdrawalQueue.length--
                                mem[0] = 213
                                emit 0x6457075a: msg.sender, withdrawalQueue[var97001].field_0
                            if ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18) - ext_call.return_data[0]:
                                if not var97004:
                                    revert with 0, 17
                                if var97004 - 1 >= withdrawalQueue.length:
                                    revert with 0, 50
                                var97001 = var97004 - 1
                                var97004 = var97004 - 1
                                continue 
                    sub_ecad9565 = sub_ecad9565 - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00) + ext_call.return_data[0] - ((sub_ecad9565 * sub_1c693478) - (sub_d00364be * sub_1c693478) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_1c693478) + (ext_call.return_data[0] * sub_1c693478) - ((sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00 * sub_1c693478) / 10^18)
                mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 164] = (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00
                mem[(7 * ceil32(return_data.size)) + 96] = 68
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(7 * ceil32(return_data.size)) + 196] = 32
                mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_c5d664c6Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00, 0
                mem[(7 * ceil32(return_data.size)) + 328] = 0
                call sub_c5d664c6Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (sub_ecad9565 * sub_0e962f00) - (sub_d00364be * sub_0e962f00) + ((block.timestamp * sub_d00364be) - (lastHarvest * sub_d00364be) / sub_448f56b9 * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply * arg1 / sub_0e962f00, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                        if not mem[(7 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
