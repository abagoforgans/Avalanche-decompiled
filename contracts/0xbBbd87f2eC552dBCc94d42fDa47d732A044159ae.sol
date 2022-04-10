contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const MAXIMUM_TRANSFER_TAX_RATE = 1500

const BURN_ADDRESS = 57005


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
uint8 decimals;
uint16 stor6;
uint16 transferTaxRate; offset 8
uint16 burnRate; offset 24
uint256 stor6; offset 8
mapping of uint8 stor7;
mapping of uint8 stor8;
uint8 stor9;
uint256 stor10; offset 1
uint256 minAmountToLiquify;
address tokenSwapRouterAddress;
uint8 stor12; offset 160
uint128 stor12; offset 160
address tokenSwapPairAddress;
address operatorAddress;

function tokenSwapRouter() {
    return tokenSwapRouterAddress
}

function totalSupply() {
    return totalSupply
}

function isExcludedFromAntiWhale(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function decimals() {
    return decimals
}

function sub_385deb9e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[address(arg1)])
}

function swapAndLiquifyEnabled() {
    return bool(stor9)
}

function operator() {
    return operatorAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function transferTaxRate() {
    return transferTaxRate
}

function burnRate() {
    return burnRate
}

function minAmountToLiquify() {
    return minAmountToLiquify
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function tokenSwapPair() {
    return tokenSwapPairAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function ExcludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    stor7[address(arg1)] = uint8(arg2)
}

function ExcludeFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    stor8[address(arg1)] = uint8(arg2)
}

function updateSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    emit SwapAndLiquifyEnabledUpdated(arg1, msg.sender);
    stor9 = uint8(arg1)
}

function updateMinAmountToLiquify(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    emit MinAmountToLiquifyUpdated(minAmountToLiquify, arg1, msg.sender);
    minAmountToLiquify = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function burn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if balanceOf[stor0] > -balanceOf[address(arg1)] - 1:
        revert with 'NH{q', 17
    if balanceOf[stor0] + balanceOf[address(arg1)] < balanceOf[stor0]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor0] += balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
}

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TOKEN::transferOperator: new operator is the zero address'
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function updateBurnRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TOKEN::updateBurnRate: Burn rate must not exceed the maximum rate.'
    emit BurnRateUpdated(uint16(stor6.field_0), arg1, msg.sender);
    burnRate = arg1
}

function updateTransferTaxRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if arg1 > 1500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TOKEN::updateTransferTaxRate: Transfer tax rate must not exceed the maximum rate.'
    emit TransferTaxRateUpdated(uint16(stor6.field_0), arg1, msg.sender);
    transferTaxRate = arg1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, this.address, msg.sender);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function addLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not tokenSwapRouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor11] = arg1
    emit Approval(arg1, this.address, tokenSwapRouterAddress);
    require ext_code.size(tokenSwapRouterAddress)
    call tokenSwapRouterAddress.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
       value arg2 wei
         gas gas_remaining wei
        args 0, 0, arg1, 0, 0, operatorAddress, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
}

function sub_eec5bbc9(?) {
    require ext_code.size(tokenSwapRouterAddress)
    staticcall tokenSwapRouterAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(tokenSwapRouterAddress)
    staticcall tokenSwapRouterAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        tokenSwapPairAddress = ext_call.return_data[12 len 20]
}

function swapTokensForEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = this.address
    require ext_code.size(tokenSwapRouterAddress)
    staticcall tokenSwapRouterAddress.WAVAX() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not tokenSwapRouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor11] = arg1
    emit Approval(arg1, this.address, tokenSwapRouterAddress);
    mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(tokenSwapRouterAddress)
    call tokenSwapRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_33630b8a(?) payable {
    call operatorAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to transfer the funds, aborting.'
    else:
        if not ext_call.success:
            revert with 0, 'Failed to transfer the funds, aborting.'
    ('bool', 'ext_call.success')
    require ext_code.size(tokenSwapRouterAddress)
    staticcall tokenSwapRouterAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args tokenSwapPairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenSwapRouterAddress)
    staticcall tokenSwapRouterAddress.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args msg.value, ext_call.return_data[0], balanceOf[address(stor12.field_0)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if balanceOf[tx.origin] > -1:
            revert with 'NH{q', 17
        if balanceOf[tx.origin] < balanceOf[tx.origin]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > balanceOf[stor0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if balanceOf[stor0] < 0:
            revert with 'NH{q', 17
        emit Transfer(0, tokenSwapPairAddress, tx.origin);
    else:
        if ext_call.return_data[0] and 90 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 90 * ext_call.return_data[0] / ext_call.return_data[0] != 90:
            revert with 0, 'SafeMath: multiplication overflow'
        if balanceOf[tx.origin] > -(90 * ext_call.return_data[0] / 100) - 1:
            revert with 'NH{q', 17
        if balanceOf[tx.origin] + (90 * ext_call.return_data[0] / 100) < balanceOf[tx.origin]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[tx.origin] += 90 * ext_call.return_data[0] / 100
        if 90 * ext_call.return_data[0] / 100 > balanceOf[stor0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if balanceOf[stor0] < 90 * ext_call.return_data[0] / 100:
            revert with 'NH{q', 17
        balanceOf[stor0] -= 90 * ext_call.return_data[0] / 100
        emit Transfer((90 * ext_call.return_data[0] / 100), tokenSwapPairAddress, tx.origin);
}

function name() {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function swapAndLiquify() {
    Mask(96, 0, stor12.field_160) = 1
    transferTaxRate = 0
    if balanceOf[address(this.address)] < minAmountToLiquify:
        if eth.balance(this.address) > 0:
            call operatorAddress with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to transfer the funds, aborting.'
            else:
                if not ext_call.success:
                    revert with 0, 'Failed to transfer the funds, aborting.'
            ('bool', 'ext_call.success')
    else:
        if stor10 > minAmountToLiquify:
            revert with 0, 'SafeMath: subtraction overflow'
        if minAmountToLiquify < stor10:
            revert with 'NH{q', 17
        mem[128] = this.address
        require ext_code.size(tokenSwapRouterAddress)
        staticcall tokenSwapRouterAddress.WAVAX() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not tokenSwapRouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][stor11] = stor10
        emit Approval(stor10, this.address, tokenSwapRouterAddress);
        mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = stor10
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(tokenSwapRouterAddress)
        call tokenSwapRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 2 * Mask(256, -1, stor10), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow'
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not tokenSwapRouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][stor11] = minAmountToLiquify - stor10
        emit Approval((minAmountToLiquify - stor10), this.address, tokenSwapRouterAddress);
        require ext_code.size(tokenSwapRouterAddress)
        call tokenSwapRouterAddress.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
             gas gas_remaining wei
            args address(this.address), minAmountToLiquify - stor10, 0, 0, operatorAddress, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        emit SwapAndLiquify(2 * Mask(256, -1, stor10), 0, minAmountToLiquify - stor10);
        if eth.balance(this.address) > 0:
            call operatorAddress with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Failed to transfer the funds, aborting.'
    Mask(248, 0, stor6.field_8) = transferTaxRate
    Mask(96, 0, stor12.field_160) = 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor9) != 1:
        if arg1 == 57005:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not transferTaxRate:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor7[tx.origin]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if tokenSwapPairAddress == msg.sender:
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if arg2 > -1:
                                revert with 'NH{q', 17
                            if arg2 != arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if balanceOf[57005] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, 57005);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if balanceOf[address(this.address)] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, this.address);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and transferTaxRate > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not arg2 * transferTaxRate / 10000:
                                if 0 > arg2 * transferTaxRate / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 * transferTaxRate / 10000 < 0:
                                    revert with 'NH{q', 17
                                if 0 > -(arg2 * transferTaxRate / 10000) - 1:
                                    revert with 'NH{q', 17
                                if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                if arg2 * transferTaxRate / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 < arg2 * transferTaxRate / 10000:
                                    revert with 'NH{q', 17
                                if arg2 > -1:
                                    revert with 'NH{q', 17
                                if arg2 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                            else:
                                if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                    revert with 'NH{q', 17
                                if not arg2 * transferTaxRate / 10000:
                                    revert with 'NH{q', 18
                                if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if arg2 * transferTaxRate / 10000 * burnRate / 10000 > arg2 * transferTaxRate / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                    revert with 'NH{q', 17
                                if arg2 * transferTaxRate / 10000 * burnRate / 10000 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                    revert with 'NH{q', 17
                                if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                if arg2 * transferTaxRate / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 < arg2 * transferTaxRate / 10000:
                                    revert with 'NH{q', 17
                                if arg2 > -1:
                                    revert with 'NH{q', 17
                                if arg2 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if arg2 * transferTaxRate / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 10000
                                if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 10000
                                emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 10000), msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)), msg.sender, this.address);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * transferTaxRate / 10000):
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                            emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                    else:
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if arg2 > -1:
                                revert with 'NH{q', 17
                            if arg2 != arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if balanceOf[57005] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, 57005);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            if balanceOf[address(this.address)] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, this.address);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and 5000 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if 5000 * arg2 / arg2 != 5000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not 5000 * arg2 / 10000:
                                if 0 > 5000 * arg2 / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 5000 * arg2 / 10000 < 0:
                                    revert with 'NH{q', 17
                                if 0 > -(5000 * arg2 / 10000) - 1:
                                    revert with 'NH{q', 17
                                if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                if 5000 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 < 5000 * arg2 / 10000:
                                    revert with 'NH{q', 17
                                if arg2 > -1:
                                    revert with 'NH{q', 17
                                if arg2 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 5000 * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000
                                if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (5000 * arg2 / 10000) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += 5000 * arg2 / 10000
                                emit Transfer((5000 * arg2 / 10000), msg.sender, this.address);
                            else:
                                if 5000 * arg2 / 10000 and burnRate > -1 / 5000 * arg2 / 10000:
                                    revert with 'NH{q', 17
                                if not 5000 * arg2 / 10000:
                                    revert with 'NH{q', 18
                                if 5000 * arg2 / 10000 * burnRate / 5000 * arg2 / 10000 != burnRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if 5000 * arg2 / 10000 * burnRate / 10000 > 5000 * arg2 / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 5000 * arg2 / 10000 < 5000 * arg2 / 10000 * burnRate / 10000:
                                    revert with 'NH{q', 17
                                if 5000 * arg2 / 10000 * burnRate / 10000 > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                    revert with 'NH{q', 17
                                if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                if 5000 * arg2 / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 < 5000 * arg2 / 10000:
                                    revert with 'NH{q', 17
                                if arg2 > -1:
                                    revert with 'NH{q', 17
                                if arg2 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if 5000 * arg2 / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000 * burnRate / 10000:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000 * burnRate / 10000
                                if balanceOf[57005] > -(5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] + (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += 5000 * arg2 / 10000 * burnRate / 10000
                                emit Transfer((5000 * arg2 / 10000 * burnRate / 10000), msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000)
                                if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)
                                emit Transfer(((5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)), msg.sender, this.address);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 - (5000 * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2 - (5000 * arg2 / 10000):
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (5000 * arg2 / 10000)
                            if balanceOf[address(arg1)] > -arg2 + (5000 * arg2 / 10000) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000)
                            emit Transfer((arg2 - (5000 * arg2 / 10000)), msg.sender, arg1);
    else:
        if uint8(stor12.field_160):
            if arg1 == 57005:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not transferTaxRate:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor7[tx.origin]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if tokenSwapPairAddress == msg.sender:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if arg2 > -1:
                                    revert with 'NH{q', 17
                                if arg2 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and transferTaxRate > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not arg2 * transferTaxRate / 10000:
                                    if 0 > arg2 * transferTaxRate / 10000:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 * transferTaxRate / 10000 < 0:
                                        revert with 'NH{q', 17
                                    if 0 > -(arg2 * transferTaxRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                    if arg2 * transferTaxRate / 10000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 < arg2 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    if arg2 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                    if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                else:
                                    if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    if not arg2 * transferTaxRate / 10000:
                                        revert with 'NH{q', 18
                                    if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if arg2 * transferTaxRate / 10000 * burnRate / 10000 > arg2 * transferTaxRate / 10000:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                        revert with 'NH{q', 17
                                    if arg2 * transferTaxRate / 10000 * burnRate / 10000 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                    if arg2 * transferTaxRate / 10000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 < arg2 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    if arg2 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if arg2 * transferTaxRate / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 10000
                                    if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 10000
                                    emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 10000), msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                    if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                    emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * transferTaxRate / 10000):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                        else:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if arg2 > -1:
                                    revert with 'NH{q', 17
                                if arg2 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and 5000 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if 5000 * arg2 / arg2 != 5000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not 5000 * arg2 / 10000:
                                    if 0 > 5000 * arg2 / 10000:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 5000 * arg2 / 10000 < 0:
                                        revert with 'NH{q', 17
                                    if 0 > -(5000 * arg2 / 10000) - 1:
                                        revert with 'NH{q', 17
                                    if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                    if 5000 * arg2 / 10000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 < 5000 * arg2 / 10000:
                                        revert with 'NH{q', 17
                                    if arg2 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 5000 * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000
                                    if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (5000 * arg2 / 10000) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += 5000 * arg2 / 10000
                                    emit Transfer((5000 * arg2 / 10000), msg.sender, this.address);
                                else:
                                    if 5000 * arg2 / 10000 and burnRate > -1 / 5000 * arg2 / 10000:
                                        revert with 'NH{q', 17
                                    if not 5000 * arg2 / 10000:
                                        revert with 'NH{q', 18
                                    if 5000 * arg2 / 10000 * burnRate / 5000 * arg2 / 10000 != burnRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if 5000 * arg2 / 10000 * burnRate / 10000 > 5000 * arg2 / 10000:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 5000 * arg2 / 10000 < 5000 * arg2 / 10000 * burnRate / 10000:
                                        revert with 'NH{q', 17
                                    if 5000 * arg2 / 10000 * burnRate / 10000 > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                    if 5000 * arg2 / 10000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 < 5000 * arg2 / 10000:
                                        revert with 'NH{q', 17
                                    if arg2 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if 5000 * arg2 / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000 * burnRate / 10000:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000 * burnRate / 10000
                                    if balanceOf[57005] > -(5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] + (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += 5000 * arg2 / 10000 * burnRate / 10000
                                    emit Transfer((5000 * arg2 / 10000 * burnRate / 10000), msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000)
                                    if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)
                                    emit Transfer(((5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (5000 * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (5000 * arg2 / 10000):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (5000 * arg2 / 10000)
                                if balanceOf[address(arg1)] > -arg2 + (5000 * arg2 / 10000) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000)
                                emit Transfer((arg2 - (5000 * arg2 / 10000)), msg.sender, arg1);
        else:
            if not tokenSwapRouterAddress:
                if arg1 == 57005:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not transferTaxRate:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor7[tx.origin]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if tokenSwapPairAddress == msg.sender:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if arg2 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and transferTaxRate > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not arg2 * transferTaxRate / 10000:
                                        if 0 > arg2 * transferTaxRate / 10000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 * transferTaxRate / 10000 < 0:
                                            revert with 'NH{q', 17
                                        if 0 > -(arg2 * transferTaxRate / 10000) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                        if arg2 * transferTaxRate / 10000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 < arg2 * transferTaxRate / 10000:
                                            revert with 'NH{q', 17
                                        if arg2 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 != arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                        if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                        emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                    else:
                                        if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                            revert with 'NH{q', 17
                                        if not arg2 * transferTaxRate / 10000:
                                            revert with 'NH{q', 18
                                        if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if arg2 * transferTaxRate / 10000 * burnRate / 10000 > arg2 * transferTaxRate / 10000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                            revert with 'NH{q', 17
                                        if arg2 * transferTaxRate / 10000 * burnRate / 10000 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                            revert with 'NH{q', 17
                                        if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                        if arg2 * transferTaxRate / 10000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 < arg2 * transferTaxRate / 10000:
                                            revert with 'NH{q', 17
                                        if arg2 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 != arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if arg2 * transferTaxRate / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 10000
                                        if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 10000
                                        emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 10000), msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                        if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                        emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * transferTaxRate / 10000):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                            else:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if arg2 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and 5000 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if 5000 * arg2 / arg2 != 5000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not 5000 * arg2 / 10000:
                                        if 0 > 5000 * arg2 / 10000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 5000 * arg2 / 10000 < 0:
                                            revert with 'NH{q', 17
                                        if 0 > -(5000 * arg2 / 10000) - 1:
                                            revert with 'NH{q', 17
                                        if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                        if 5000 * arg2 / 10000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 < 5000 * arg2 / 10000:
                                            revert with 'NH{q', 17
                                        if arg2 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 != arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 5000 * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000
                                        if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (5000 * arg2 / 10000) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += 5000 * arg2 / 10000
                                        emit Transfer((5000 * arg2 / 10000), msg.sender, this.address);
                                    else:
                                        if 5000 * arg2 / 10000 and burnRate > -1 / 5000 * arg2 / 10000:
                                            revert with 'NH{q', 17
                                        if not 5000 * arg2 / 10000:
                                            revert with 'NH{q', 18
                                        if 5000 * arg2 / 10000 * burnRate / 5000 * arg2 / 10000 != burnRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if 5000 * arg2 / 10000 * burnRate / 10000 > 5000 * arg2 / 10000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 5000 * arg2 / 10000 < 5000 * arg2 / 10000 * burnRate / 10000:
                                            revert with 'NH{q', 17
                                        if 5000 * arg2 / 10000 * burnRate / 10000 > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                            revert with 'NH{q', 17
                                        if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                        if 5000 * arg2 / 10000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 < 5000 * arg2 / 10000:
                                            revert with 'NH{q', 17
                                        if arg2 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 != arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if 5000 * arg2 / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000 * burnRate / 10000:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000 * burnRate / 10000
                                        if balanceOf[57005] > -(5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] + (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += 5000 * arg2 / 10000 * burnRate / 10000
                                        emit Transfer((5000 * arg2 / 10000 * burnRate / 10000), msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000)
                                        if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)
                                        emit Transfer(((5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (5000 * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (5000 * arg2 / 10000):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (5000 * arg2 / 10000)
                                    if balanceOf[address(arg1)] > -arg2 + (5000 * arg2 / 10000) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000)
                                    emit Transfer((arg2 - (5000 * arg2 / 10000)), msg.sender, arg1);
            else:
                if tokenSwapPairAddress == msg.sender:
                    if arg1 == 57005:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not transferTaxRate:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor7[tx.origin]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if tokenSwapPairAddress == msg.sender:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if arg2 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 != arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and transferTaxRate > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not arg2 * transferTaxRate / 10000:
                                            if 0 > arg2 * transferTaxRate / 10000:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 * transferTaxRate / 10000 < 0:
                                                revert with 'NH{q', 17
                                            if 0 > -(arg2 * transferTaxRate / 10000) - 1:
                                                revert with 'NH{q', 17
                                            if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                            if arg2 * transferTaxRate / 10000 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 < arg2 * transferTaxRate / 10000:
                                                revert with 'NH{q', 17
                                            if arg2 > -1:
                                                revert with 'NH{q', 17
                                            if arg2 != arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, 57005);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                            if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                            emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                        else:
                                            if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                                revert with 'NH{q', 17
                                            if not arg2 * transferTaxRate / 10000:
                                                revert with 'NH{q', 18
                                            if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > arg2 * transferTaxRate / 10000:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                revert with 'NH{q', 17
                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                revert with 'NH{q', 17
                                            if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                            if arg2 * transferTaxRate / 10000 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 < arg2 * transferTaxRate / 10000:
                                                revert with 'NH{q', 17
                                            if arg2 > -1:
                                                revert with 'NH{q', 17
                                            if arg2 != arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 10000
                                            if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 10000
                                            emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 10000), msg.sender, 57005);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000):
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                            if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                            emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * transferTaxRate / 10000):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                        emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if arg2 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 != arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and 5000 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not arg2:
                                            revert with 'NH{q', 18
                                        if 5000 * arg2 / arg2 != 5000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not 5000 * arg2 / 10000:
                                            if 0 > 5000 * arg2 / 10000:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if 5000 * arg2 / 10000 < 0:
                                                revert with 'NH{q', 17
                                            if 0 > -(5000 * arg2 / 10000) - 1:
                                                revert with 'NH{q', 17
                                            if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                            if 5000 * arg2 / 10000 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 < 5000 * arg2 / 10000:
                                                revert with 'NH{q', 17
                                            if arg2 > -1:
                                                revert with 'NH{q', 17
                                            if arg2 != arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, 57005);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 5000 * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000
                                            if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] + (5000 * arg2 / 10000) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += 5000 * arg2 / 10000
                                            emit Transfer((5000 * arg2 / 10000), msg.sender, this.address);
                                        else:
                                            if 5000 * arg2 / 10000 and burnRate > -1 / 5000 * arg2 / 10000:
                                                revert with 'NH{q', 17
                                            if not 5000 * arg2 / 10000:
                                                revert with 'NH{q', 18
                                            if 5000 * arg2 / 10000 * burnRate / 5000 * arg2 / 10000 != burnRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if 5000 * arg2 / 10000 * burnRate / 10000 > 5000 * arg2 / 10000:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if 5000 * arg2 / 10000 < 5000 * arg2 / 10000 * burnRate / 10000:
                                                revert with 'NH{q', 17
                                            if 5000 * arg2 / 10000 * burnRate / 10000 > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                revert with 'NH{q', 17
                                            if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                            if 5000 * arg2 / 10000 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 < 5000 * arg2 / 10000:
                                                revert with 'NH{q', 17
                                            if arg2 > -1:
                                                revert with 'NH{q', 17
                                            if arg2 != arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if 5000 * arg2 / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000 * burnRate / 10000:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000 * burnRate / 10000
                                            if balanceOf[57005] > -(5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] + (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += 5000 * arg2 / 10000 * burnRate / 10000
                                            emit Transfer((5000 * arg2 / 10000 * burnRate / 10000), msg.sender, 57005);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000):
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000)
                                            if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)
                                            emit Transfer(((5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (5000 * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (5000 * arg2 / 10000):
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (5000 * arg2 / 10000)
                                        if balanceOf[address(arg1)] > -arg2 + (5000 * arg2 / 10000) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000)
                                        emit Transfer((arg2 - (5000 * arg2 / 10000)), msg.sender, arg1);
                else:
                    if stor7[tx.origin]:
                        if arg1 == 57005:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not transferTaxRate:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[tx.origin]:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if tokenSwapPairAddress == msg.sender:
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if arg2 > -1:
                                                revert with 'NH{q', 17
                                            if arg2 != arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, 57005);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and transferTaxRate > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if not arg2:
                                                revert with 'NH{q', 18
                                            if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not arg2 * transferTaxRate / 10000:
                                                if 0 > arg2 * transferTaxRate / 10000:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 * transferTaxRate / 10000 < 0:
                                                    revert with 'NH{q', 17
                                                if 0 > -(arg2 * transferTaxRate / 10000) - 1:
                                                    revert with 'NH{q', 17
                                                if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                                if arg2 * transferTaxRate / 10000 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 < arg2 * transferTaxRate / 10000:
                                                    revert with 'NH{q', 17
                                                if arg2 > -1:
                                                    revert with 'NH{q', 17
                                                if arg2 != arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[57005] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                emit Transfer(0, msg.sender, 57005);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) - 1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                            else:
                                                if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                                    revert with 'NH{q', 17
                                                if not arg2 * transferTaxRate / 10000:
                                                    revert with 'NH{q', 18
                                                if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if arg2 * transferTaxRate / 10000 * burnRate / 10000 > arg2 * transferTaxRate / 10000:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                    revert with 'NH{q', 17
                                                if arg2 * transferTaxRate / 10000 * burnRate / 10000 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                    revert with 'NH{q', 17
                                                if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                                if arg2 * transferTaxRate / 10000 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 < arg2 * transferTaxRate / 10000:
                                                    revert with 'NH{q', 17
                                                if arg2 > -1:
                                                    revert with 'NH{q', 17
                                                if arg2 != arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if arg2 * transferTaxRate / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 10000), msg.sender, 57005);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000):
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * transferTaxRate / 10000):
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                            emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                    else:
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if arg2 > -1:
                                                revert with 'NH{q', 17
                                            if arg2 != arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, 57005);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and 5000 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if not arg2:
                                                revert with 'NH{q', 18
                                            if 5000 * arg2 / arg2 != 5000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if not 5000 * arg2 / 10000:
                                                if 0 > 5000 * arg2 / 10000:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if 5000 * arg2 / 10000 < 0:
                                                    revert with 'NH{q', 17
                                                if 0 > -(5000 * arg2 / 10000) - 1:
                                                    revert with 'NH{q', 17
                                                if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                                if 5000 * arg2 / 10000 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 < 5000 * arg2 / 10000:
                                                    revert with 'NH{q', 17
                                                if arg2 > -1:
                                                    revert with 'NH{q', 17
                                                if arg2 != arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[57005] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                emit Transfer(0, msg.sender, 57005);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 5000 * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000
                                                if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) - 1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(this.address)] + (5000 * arg2 / 10000) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += 5000 * arg2 / 10000
                                                emit Transfer((5000 * arg2 / 10000), msg.sender, this.address);
                                            else:
                                                if 5000 * arg2 / 10000 and burnRate > -1 / 5000 * arg2 / 10000:
                                                    revert with 'NH{q', 17
                                                if not 5000 * arg2 / 10000:
                                                    revert with 'NH{q', 18
                                                if 5000 * arg2 / 10000 * burnRate / 5000 * arg2 / 10000 != burnRate:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if 5000 * arg2 / 10000 * burnRate / 10000 > 5000 * arg2 / 10000:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if 5000 * arg2 / 10000 < 5000 * arg2 / 10000 * burnRate / 10000:
                                                    revert with 'NH{q', 17
                                                if 5000 * arg2 / 10000 * burnRate / 10000 > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                    revert with 'NH{q', 17
                                                if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                                if 5000 * arg2 / 10000 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 < 5000 * arg2 / 10000:
                                                    revert with 'NH{q', 17
                                                if arg2 > -1:
                                                    revert with 'NH{q', 17
                                                if arg2 != arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if 5000 * arg2 / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000 * burnRate / 10000:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000 * burnRate / 10000
                                                if balanceOf[57005] > -(5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[57005] + (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += 5000 * arg2 / 10000 * burnRate / 10000
                                                emit Transfer((5000 * arg2 / 10000 * burnRate / 10000), msg.sender, 57005);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000):
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000)
                                                if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)
                                                emit Transfer(((5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (5000 * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 - (5000 * arg2 / 10000):
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (5000 * arg2 / 10000)
                                            if balanceOf[address(arg1)] > -arg2 + (5000 * arg2 / 10000) - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000)
                                            emit Transfer((arg2 - (5000 * arg2 / 10000)), msg.sender, arg1);
                    else:
                        Mask(96, 0, stor12.field_160) = 1
                        transferTaxRate = 0
                        if balanceOf[address(this.address)] < minAmountToLiquify:
                            if eth.balance(this.address) <= 0:
                                Mask(248, 0, stor6.field_8) = transferTaxRate
                                Mask(96, 0, stor12.field_160) = 0
                                if arg1 == 57005:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not transferTaxRate:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[tx.origin]:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if tokenSwapPairAddress == msg.sender:
                                                if not arg2:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if arg2 > -1:
                                                        revert with 'NH{q', 17
                                                    if arg2 != arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] < balanceOf[57005]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    emit Transfer(0, msg.sender, 57005);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    emit Transfer(0, msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and transferTaxRate > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if not arg2 * transferTaxRate / 10000:
                                                        if 0 > arg2 * transferTaxRate / 10000:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 * transferTaxRate / 10000 < 0:
                                                            revert with 'NH{q', 17
                                                        if 0 > -(arg2 * transferTaxRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                                        if arg2 * transferTaxRate / 10000 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < arg2 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                        if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                        emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                    else:
                                                        if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if not arg2 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 18
                                                        if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if arg2 * transferTaxRate / 10000 * burnRate / 10000 > arg2 * transferTaxRate / 10000:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg2 * transferTaxRate / 10000 * burnRate / 10000 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                                        if arg2 * transferTaxRate / 10000 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < arg2 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if arg2 * transferTaxRate / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                        if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                        emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 10000), msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                        if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                        emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * transferTaxRate / 10000):
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if arg2 > -1:
                                                        revert with 'NH{q', 17
                                                    if arg2 != arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] < balanceOf[57005]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    emit Transfer(0, msg.sender, 57005);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    emit Transfer(0, msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and 5000 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if 5000 * arg2 / arg2 != 5000:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if not 5000 * arg2 / 10000:
                                                        if 0 > 5000 * arg2 / 10000:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if 5000 * arg2 / 10000 < 0:
                                                            revert with 'NH{q', 17
                                                        if 0 > -(5000 * arg2 / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                                        if 5000 * arg2 / 10000 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < 5000 * arg2 / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if 5000 * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000
                                                        if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] + (5000 * arg2 / 10000) < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] += 5000 * arg2 / 10000
                                                        emit Transfer((5000 * arg2 / 10000), msg.sender, this.address);
                                                    else:
                                                        if 5000 * arg2 / 10000 and burnRate > -1 / 5000 * arg2 / 10000:
                                                            revert with 'NH{q', 17
                                                        if not 5000 * arg2 / 10000:
                                                            revert with 'NH{q', 18
                                                        if 5000 * arg2 / 10000 * burnRate / 5000 * arg2 / 10000 != burnRate:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if 5000 * arg2 / 10000 * burnRate / 10000 > 5000 * arg2 / 10000:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if 5000 * arg2 / 10000 < 5000 * arg2 / 10000 * burnRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if 5000 * arg2 / 10000 * burnRate / 10000 > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                                        if 5000 * arg2 / 10000 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < 5000 * arg2 / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if 5000 * arg2 / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000 * burnRate / 10000:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000 * burnRate / 10000
                                                        if balanceOf[57005] > -(5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] + (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[57005] += 5000 * arg2 / 10000 * burnRate / 10000
                                                        emit Transfer((5000 * arg2 / 10000 * burnRate / 10000), msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000)
                                                        if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)
                                                        emit Transfer(((5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 - (5000 * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < arg2 - (5000 * arg2 / 10000):
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (5000 * arg2 / 10000)
                                                    if balanceOf[address(arg1)] > -arg2 + (5000 * arg2 / 10000) - 1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000) < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000)
                                                    emit Transfer((arg2 - (5000 * arg2 / 10000)), msg.sender, arg1);
                            else:
                                call operatorAddress with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to transfer the funds, aborting.'
                                    Mask(248, 0, stor6.field_8) = transferTaxRate
                                    Mask(96, 0, stor12.field_160) = 0
                                    if arg1 == 57005:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if not transferTaxRate:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[tx.origin]:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if tokenSwapPairAddress == msg.sender:
                                                    if not arg2:
                                                        if 0 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and transferTaxRate > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if not arg2 * transferTaxRate / 10000:
                                                            if 0 > arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 * transferTaxRate / 10000 < 0:
                                                                revert with 'NH{q', 17
                                                            if 0 > -(arg2 * transferTaxRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                                            if arg2 * transferTaxRate / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            emit Transfer(0, msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                            if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                            if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                            emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                        else:
                                                            if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if not arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 18
                                                            if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                                            if arg2 * transferTaxRate / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                            if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                            if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                            emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 10000), msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                            if balanceOf[address(msg.sender)] < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000):
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                            if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                            emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)), msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * transferTaxRate / 10000):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                        emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        if 0 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and 5000 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if 5000 * arg2 / arg2 != 5000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if not 5000 * arg2 / 10000:
                                                            if 0 > 5000 * arg2 / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 5000 * arg2 / 10000 < 0:
                                                                revert with 'NH{q', 17
                                                            if 0 > -(5000 * arg2 / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                                            if 5000 * arg2 / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            emit Transfer(0, msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if 5000 * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                            if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000
                                                            if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (5000 * arg2 / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] += 5000 * arg2 / 10000
                                                            emit Transfer((5000 * arg2 / 10000), msg.sender, this.address);
                                                        else:
                                                            if 5000 * arg2 / 10000 and burnRate > -1 / 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            if not 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 18
                                                            if 5000 * arg2 / 10000 * burnRate / 5000 * arg2 / 10000 != burnRate:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                            if 5000 * arg2 / 10000 * burnRate / 10000 > 5000 * arg2 / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 5000 * arg2 / 10000 < 5000 * arg2 / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if 5000 * arg2 / 10000 * burnRate / 10000 > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Burn value invalid'
                                                            if 5000 * arg2 / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                            if 5000 * arg2 / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                                            if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000 * burnRate / 10000
                                                            if balanceOf[57005] > -(5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[57005] += 5000 * arg2 / 10000 * burnRate / 10000
                                                            emit Transfer((5000 * arg2 / 10000 * burnRate / 10000), msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                                            if balanceOf[address(msg.sender)] < (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000):
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000)
                                                            if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)
                                                            emit Transfer(((5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)), msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 - (5000 * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                                        if balanceOf[address(msg.sender)] < arg2 - (5000 * arg2 / 10000):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (5000 * arg2 / 10000)
                                                        if balanceOf[address(arg1)] > -arg2 + (5000 * arg2 / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000) < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000)
                                                        emit Transfer((arg2 - (5000 * arg2 / 10000)), msg.sender, arg1);
                                else:
                                    if not ext_call.success:
                                        revert with 0, 'Failed to transfer the funds, aborting.'
                                    Mask(248, 0, stor6.field_8) = transferTaxRate
                                    Mask(96, 0, stor12.field_160) = 0
                                    if arg1 == 57005:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 167 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if not transferTaxRate:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 167 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[tx.origin]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 167 len 26] >> 48,
                                                                0
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if tokenSwapPairAddress == msg.sender:
                                                    if not arg2:
                                                        if 0 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 167 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 263 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 359 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and transferTaxRate > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not arg2 * transferTaxRate / 10000:
                                                            if 0 > arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 * transferTaxRate / 10000 < 0:
                                                                revert with 'NH{q', 17
                                                            if 0 > -(arg2 * transferTaxRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                            if arg2 * transferTaxRate / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 167 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            emit Transfer(0, msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 263 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                            if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                            emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                        else:
                                                            if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if not arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 18
                                                            if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                            if arg2 * transferTaxRate / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 167 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                            if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                            emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 10000), msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 263 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000):
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                            if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                            emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)), msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 359 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * transferTaxRate / 10000):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                        emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        if 0 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 167 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 263 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 359 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and 5000 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if 5000 * arg2 / arg2 != 5000:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not 5000 * arg2 / 10000:
                                                            if 0 > 5000 * arg2 / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 5000 * arg2 / 10000 < 0:
                                                                revert with 'NH{q', 17
                                                            if 0 > -(5000 * arg2 / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                                revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                            if 5000 * arg2 / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 167 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            emit Transfer(0, msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if 5000 * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 263 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000
                                                            if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (5000 * arg2 / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] += 5000 * arg2 / 10000
                                                            emit Transfer((5000 * arg2 / 10000), msg.sender, this.address);
                                                        else:
                                                            if 5000 * arg2 / 10000 and burnRate > -1 / 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            if not 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 18
                                                            if 5000 * arg2 / 10000 * burnRate / 5000 * arg2 / 10000 != burnRate:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 5000 * arg2 / 10000 * burnRate / 10000 > 5000 * arg2 / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 5000 * arg2 / 10000 < 5000 * arg2 / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if 5000 * arg2 / 10000 * burnRate / 10000 > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                                revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                            if 5000 * arg2 / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if 5000 * arg2 / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 167 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000 * burnRate / 10000
                                                            if balanceOf[57005] > -(5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[57005] += 5000 * arg2 / 10000 * burnRate / 10000
                                                            emit Transfer((5000 * arg2 / 10000 * burnRate / 10000), msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 263 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000):
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000)
                                                            if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)
                                                            emit Transfer(((5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)), msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 - (5000 * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 359 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2 - (5000 * arg2 / 10000):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (5000 * arg2 / 10000)
                                                        if balanceOf[address(arg1)] > -arg2 + (5000 * arg2 / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000) < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000)
                                                        emit Transfer((arg2 - (5000 * arg2 / 10000)), msg.sender, arg1);
                        else:
                            if stor10 > minAmountToLiquify:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if minAmountToLiquify < stor10:
                                revert with 'NH{q', 17
                            mem[128] = this.address
                            require ext_code.size(tokenSwapRouterAddress)
                            staticcall tokenSwapRouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not tokenSwapRouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor11] = stor10
                            emit Approval(stor10, this.address, tokenSwapRouterAddress);
                            mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = stor10
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(tokenSwapRouterAddress)
                            call tokenSwapRouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 2 * Mask(256, -1, stor10), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not tokenSwapRouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor11] = minAmountToLiquify - stor10
                            emit Approval((minAmountToLiquify - stor10), this.address, tokenSwapRouterAddress);
                            mem[ceil32(return_data.size) + 260] = 0
                            mem[ceil32(return_data.size) + 292] = 0
                            mem[ceil32(return_data.size) + 324] = operatorAddress
                            mem[ceil32(return_data.size) + 356] = block.timestamp
                            require ext_code.size(tokenSwapRouterAddress)
                            call tokenSwapRouterAddress.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                 gas gas_remaining wei
                                args address(this.address), minAmountToLiquify - stor10, 0, 0, operatorAddress, block.timestamp
                            mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            mem[(2 * ceil32(return_data.size)) + 256] = minAmountToLiquify - stor10
                            emit SwapAndLiquify(2 * Mask(256, -1, stor10), 0, minAmountToLiquify - stor10);
                            if eth.balance(this.address) <= 0:
                                Mask(248, 0, stor6.field_8) = transferTaxRate
                                Mask(96, 0, stor12.field_160) = 0
                                if arg1 == 57005:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not transferTaxRate:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[tx.origin]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if tokenSwapPairAddress == msg.sender:
                                                if not arg2:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if arg2 > -1:
                                                        revert with 'NH{q', 17
                                                    if arg2 != arg2:
                                                        revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] < balanceOf[57005]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    emit Transfer(0, msg.sender, 57005);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    emit Transfer(0, msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 454 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and transferTaxRate > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not arg2 * transferTaxRate / 10000:
                                                        if 0 > arg2 * transferTaxRate / 10000:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 * transferTaxRate / 10000 < 0:
                                                            revert with 'NH{q', 17
                                                        if 0 > -(arg2 * transferTaxRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                            revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                        if arg2 * transferTaxRate / 10000 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < arg2 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                        if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                        emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                    else:
                                                        if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if not arg2 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 18
                                                        if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if arg2 * transferTaxRate / 10000 * burnRate / 10000 > arg2 * transferTaxRate / 10000:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg2 * transferTaxRate / 10000 * burnRate / 10000 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                            revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                        if arg2 * transferTaxRate / 10000 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < arg2 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if arg2 * transferTaxRate / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                        if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                        emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 10000), msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                        if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                        emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 454 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * transferTaxRate / 10000):
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if arg2 > -1:
                                                        revert with 'NH{q', 17
                                                    if arg2 != arg2:
                                                        revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[57005] < balanceOf[57005]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    emit Transfer(0, msg.sender, 57005);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    emit Transfer(0, msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 454 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and 5000 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if not arg2:
                                                        revert with 'NH{q', 18
                                                    if 5000 * arg2 / arg2 != 5000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 5000 * arg2 / 10000:
                                                        if 0 > 5000 * arg2 / 10000:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if 5000 * arg2 / 10000 < 0:
                                                            revert with 'NH{q', 17
                                                        if 0 > -(5000 * arg2 / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                            revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                        if 5000 * arg2 / 10000 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < 5000 * arg2 / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if 5000 * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000
                                                        if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] + (5000 * arg2 / 10000) < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] += 5000 * arg2 / 10000
                                                        emit Transfer((5000 * arg2 / 10000), msg.sender, this.address);
                                                    else:
                                                        if 5000 * arg2 / 10000 and burnRate > -1 / 5000 * arg2 / 10000:
                                                            revert with 'NH{q', 17
                                                        if not 5000 * arg2 / 10000:
                                                            revert with 'NH{q', 18
                                                        if 5000 * arg2 / 10000 * burnRate / 5000 * arg2 / 10000 != burnRate:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if 5000 * arg2 / 10000 * burnRate / 10000 > 5000 * arg2 / 10000:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if 5000 * arg2 / 10000 < 5000 * arg2 / 10000 * burnRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if 5000 * arg2 / 10000 * burnRate / 10000 > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                            revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                        if 5000 * arg2 / 10000 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < 5000 * arg2 / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if 5000 * arg2 / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000 * burnRate / 10000:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000 * burnRate / 10000
                                                        if balanceOf[57005] > -(5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] + (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[57005] += 5000 * arg2 / 10000 * burnRate / 10000
                                                        emit Transfer((5000 * arg2 / 10000 * burnRate / 10000), msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000)
                                                        if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)
                                                        emit Transfer(((5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 - (5000 * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 454 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2 - (5000 * arg2 / 10000):
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (5000 * arg2 / 10000)
                                                    if balanceOf[address(arg1)] > -arg2 + (5000 * arg2 / 10000) - 1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000) < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000)
                                                    emit Transfer((arg2 - (5000 * arg2 / 10000)), msg.sender, arg1);
                            else:
                                call operatorAddress with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to transfer the funds, aborting.'
                                Mask(248, 0, stor6.field_8) = transferTaxRate
                                Mask(96, 0, stor12.field_160) = 0
                                if not return_data.size:
                                    if arg1 == 57005:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if not transferTaxRate:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[tx.origin]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                                0
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if tokenSwapPairAddress == msg.sender:
                                                    if not arg2:
                                                        if 0 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 454 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and transferTaxRate > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not arg2 * transferTaxRate / 10000:
                                                            if 0 > arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 * transferTaxRate / 10000 < 0:
                                                                revert with 'NH{q', 17
                                                            if 0 > -(arg2 * transferTaxRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                            if arg2 * transferTaxRate / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            emit Transfer(0, msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                            if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                            emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                        else:
                                                            if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if not arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 18
                                                            if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                            if arg2 * transferTaxRate / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                            if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                            emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 10000), msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000):
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                            if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                            emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)), msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 454 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * transferTaxRate / 10000):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                        emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        if 0 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 454 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and 5000 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if 5000 * arg2 / arg2 != 5000:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not 5000 * arg2 / 10000:
                                                            if 0 > 5000 * arg2 / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 5000 * arg2 / 10000 < 0:
                                                                revert with 'NH{q', 17
                                                            if 0 > -(5000 * arg2 / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                                revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                            if 5000 * arg2 / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            emit Transfer(0, msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if 5000 * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000
                                                            if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (5000 * arg2 / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] += 5000 * arg2 / 10000
                                                            emit Transfer((5000 * arg2 / 10000), msg.sender, this.address);
                                                        else:
                                                            if 5000 * arg2 / 10000 and burnRate > -1 / 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            if not 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 18
                                                            if 5000 * arg2 / 10000 * burnRate / 5000 * arg2 / 10000 != burnRate:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 5000 * arg2 / 10000 * burnRate / 10000 > 5000 * arg2 / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 5000 * arg2 / 10000 < 5000 * arg2 / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if 5000 * arg2 / 10000 * burnRate / 10000 > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                                revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                            if 5000 * arg2 / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if 5000 * arg2 / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor10) >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000 * burnRate / 10000
                                                            if balanceOf[57005] > -(5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[57005] += 5000 * arg2 / 10000 * burnRate / 10000
                                                            emit Transfer((5000 * arg2 / 10000 * burnRate / 10000), msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000):
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000)
                                                            if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)
                                                            emit Transfer(((5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)), msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 - (5000 * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 454 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2 - (5000 * arg2 / 10000):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (5000 * arg2 / 10000)
                                                        if balanceOf[address(arg1)] > -arg2 + (5000 * arg2 / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000) < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000)
                                                        emit Transfer((arg2 - (5000 * arg2 / 10000)), msg.sender, arg1);
                                else:
                                    if arg1 == 57005:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if not transferTaxRate:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[tx.origin]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                0
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if tokenSwapPairAddress == msg.sender:
                                                    if not arg2:
                                                        if 0 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 359 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 455 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and transferTaxRate > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not arg2 * transferTaxRate / 10000:
                                                            if 0 > arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 * transferTaxRate / 10000 < 0:
                                                                revert with 'NH{q', 17
                                                            if 0 > -(arg2 * transferTaxRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                            if arg2 * transferTaxRate / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            emit Transfer(0, msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 359 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                            if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                            emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                        else:
                                                            if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if not arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 18
                                                            if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                                revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                            if arg2 * transferTaxRate / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < arg2 * transferTaxRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if arg2 * transferTaxRate / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                            if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 10000
                                                            emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 10000), msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 359 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000):
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                            if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)
                                                            emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 10000)), msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 455 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * transferTaxRate / 10000):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                        emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                                                else:
                                                    if not arg2:
                                                        if 0 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if arg2 < 0:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[57005] < balanceOf[57005]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 359 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        emit Transfer(0, msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 455 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and 5000 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if not arg2:
                                                            revert with 'NH{q', 18
                                                        if 5000 * arg2 / arg2 != 5000:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not 5000 * arg2 / 10000:
                                                            if 0 > 5000 * arg2 / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 5000 * arg2 / 10000 < 0:
                                                                revert with 'NH{q', 17
                                                            if 0 > -(5000 * arg2 / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                                revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                            if 5000 * arg2 / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] > -1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            emit Transfer(0, msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if 5000 * arg2 / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 359 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000
                                                            if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (5000 * arg2 / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] += 5000 * arg2 / 10000
                                                            emit Transfer((5000 * arg2 / 10000), msg.sender, this.address);
                                                        else:
                                                            if 5000 * arg2 / 10000 and burnRate > -1 / 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            if not 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 18
                                                            if 5000 * arg2 / 10000 * burnRate / 5000 * arg2 / 10000 != burnRate:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if 5000 * arg2 / 10000 * burnRate / 10000 > 5000 * arg2 / 10000:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if 5000 * arg2 / 10000 < 5000 * arg2 / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            if 5000 * arg2 / 10000 * burnRate / 10000 > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if 5000 * arg2 / 10000 != 5000 * arg2 / 10000:
                                                                revert with 0, 'TOKEN::transfer: Burn value invalid'
                                                            if 5000 * arg2 / 10000 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            if arg2 < 5000 * arg2 / 10000:
                                                                revert with 'NH{q', 17
                                                            if arg2 > -1:
                                                                revert with 'NH{q', 17
                                                            if arg2 != arg2:
                                                                revert with 0, 'TOKEN::transfer: Tax value invalid'
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if 5000 * arg2 / 10000 * burnRate / 10000 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 5000 * arg2 / 10000 * burnRate / 10000:
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] -= 5000 * arg2 / 10000 * burnRate / 10000
                                                            if balanceOf[57005] > -(5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[57005] + (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[57005]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[57005] += 5000 * arg2 / 10000 * burnRate / 10000
                                                            emit Transfer((5000 * arg2 / 10000 * burnRate / 10000), msg.sender, 57005);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 359 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000):
                                                                revert with 'NH{q', 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000)
                                                            if balanceOf[address(this.address)] > -(5000 * arg2 / 10000) + (5000 * arg2 / 10000 * burnRate / 10000) - 1:
                                                                revert with 'NH{q', 17
                                                            if balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000) < balanceOf[address(this.address)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)
                                                            emit Transfer(((5000 * arg2 / 10000) - (5000 * arg2 / 10000 * burnRate / 10000)), msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 - (5000 * arg2 / 10000) > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 455 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < arg2 - (5000 * arg2 / 10000):
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (5000 * arg2 / 10000)
                                                        if balanceOf[address(arg1)] > -arg2 + (5000 * arg2 / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000) < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (5000 * arg2 / 10000)
                                                        emit Transfer((arg2 - (5000 * arg2 / 10000)), msg.sender, arg1);
    return 1
}



}
