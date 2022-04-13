contract main {




// =====================  Runtime code  =====================


const swapRouter = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const MAXIMUM_TRANSFER_TAX_RATE = 300

const BURN_ADDRESS = 57005


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
uint8 decimals;
uint8 swapAndLiquifyEnabled; offset 40
uint16 stor6;
uint16 transferTaxRate; offset 8
uint16 burnRate; offset 24
uint256 stor6; offset 40
uint256 stor6; offset 8
uint256 stor7; offset 1
uint256 minAmountToLiquify;
uint8 stor8; offset 160
uint128 stor8; offset 160
address swapPairAddress;
address liquidityAddress;
address operatorAddress;

function totalSupply() {
    return totalSupply
}

function swapPair() {
    return swapPairAddress
}

function decimals() {
    return decimals
}

function liquidityAddress() {
    return liquidityAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
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

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setLiquidityAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    liquidityAddress = arg1
}

function updateMinAmountToLiquify(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    emit MinAmountToLiquifyUpdated(minAmountToLiquify, arg1, msg.sender);
    minAmountToLiquify = arg1
}

function updateSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    emit SwapAndLiquifyEnabledUpdated(arg1, msg.sender);
    Mask(216, 0, stor6.field_40) = Mask(216, 0, arg1)
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

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    totalSupply += arg1
    if balanceOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TMGO::transferOperator: new operator is the zero address'
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
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
                    'TMGO::updateBurnRate: Burn rate must not exceed the maximum rate.'
    emit BurnRateUpdated(uint16(stor6.field_0), arg1, msg.sender);
    burnRate = arg1
}

function updateTransferTaxRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if arg1 > 300:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TMGO::updateTransferTaxRate: Transfer tax rate must not exceed the maximum rate.'
    emit TransferTaxRateUpdated(uint16(stor6.field_0), arg1, msg.sender);
    transferTaxRate = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setSwapPair() {
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.WETH() with:
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
    swapPairAddress = ext_call.return_data[12 len 20]
    if not swapPairAddress:
        revert with 0, 'TMGO::updateSwapRouter: Invalid pair address. Check if liquidity was added'
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(swapAndLiquifyEnabled) != 1:
        if arg1 == 57005:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not transferTaxRate:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg2 and transferTaxRate > -1 / arg2:
                    revert with 'NH{q', 17
                if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                    revert with 'NH{q', 17
                if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                    revert with 'NH{q', 17
                if arg2 * transferTaxRate / 10000 * burnRate / 100 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                    revert with 'NH{q', 17
                if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Burn value invalid'
                if arg2 < arg2 * transferTaxRate / 10000:
                    revert with 'NH{q', 17
                if arg2 > -1:
                    revert with 'NH{q', 17
                if arg2 != arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Tax value invalid'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                if not msg.sender:
                    revert with 0, 'BEP20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'BEP20: transfer to the zero address'
                if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                if not msg.sender:
                    revert with 0, 'BEP20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'BEP20: transfer to the zero address'
                if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
    else:
        if uint8(stor8.field_160):
            if arg1 == 57005:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not transferTaxRate:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 and transferTaxRate > -1 / arg2:
                        revert with 'NH{q', 17
                    if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                        revert with 'NH{q', 17
                    if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                        revert with 'NH{q', 17
                    if arg2 * transferTaxRate / 10000 * burnRate / 100 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                        revert with 'NH{q', 17
                    if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Burn value invalid'
                    if arg2 < arg2 * transferTaxRate / 10000:
                        revert with 'NH{q', 17
                    if arg2 > -1:
                        revert with 'NH{q', 17
                    if arg2 != arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Tax value invalid'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                    if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                    if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                    emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                    if not msg.sender:
                        revert with 0, 'BEP20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'BEP20: transfer to the zero address'
                    if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                    if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                    emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                    if not msg.sender:
                        revert with 0, 'BEP20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'BEP20: transfer to the zero address'
                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
        else:
            if not swapPairAddress:
                if arg1 == 57005:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not transferTaxRate:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 and transferTaxRate > -1 / arg2:
                            revert with 'NH{q', 17
                        if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                            revert with 'NH{q', 17
                        if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                            revert with 'NH{q', 17
                        if arg2 * transferTaxRate / 10000 * burnRate / 100 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                            revert with 'NH{q', 17
                        if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Burn value invalid'
                        if arg2 < arg2 * transferTaxRate / 10000:
                            revert with 'NH{q', 17
                        if arg2 > -1:
                            revert with 'NH{q', 17
                        if arg2 != arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Tax value invalid'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                        if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                        if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                        emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                        if not msg.sender:
                            revert with 0, 'BEP20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'BEP20: transfer to the zero address'
                        if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                        if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                        emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                        if not msg.sender:
                            revert with 0, 'BEP20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'BEP20: transfer to the zero address'
                        if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                        if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                        emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
            else:
                if msg.sender == swapPairAddress:
                    if arg1 == 57005:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not transferTaxRate:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and transferTaxRate > -1 / arg2:
                                revert with 'NH{q', 17
                            if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                revert with 'NH{q', 17
                            if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                                revert with 'NH{q', 17
                            if arg2 * transferTaxRate / 10000 * burnRate / 100 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                revert with 'NH{q', 17
                            if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Burn value invalid'
                            if arg2 < arg2 * transferTaxRate / 10000:
                                revert with 'NH{q', 17
                            if arg2 > -1:
                                revert with 'NH{q', 17
                            if arg2 != arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Tax value invalid'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                            if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                            if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                            emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                            if not msg.sender:
                                revert with 0, 'BEP20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'BEP20: transfer to the zero address'
                            if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                            if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                            emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                            if not msg.sender:
                                revert with 0, 'BEP20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'BEP20: transfer to the zero address'
                            if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                            emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                else:
                    if msg.sender == owner:
                        if arg1 == 57005:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not transferTaxRate:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and transferTaxRate > -1 / arg2:
                                    revert with 'NH{q', 17
                                if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                    revert with 'NH{q', 17
                                if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                                    revert with 'NH{q', 17
                                if arg2 * transferTaxRate / 10000 * burnRate / 100 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                    revert with 'NH{q', 17
                                if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Burn value invalid'
                                if arg2 < arg2 * transferTaxRate / 10000:
                                    revert with 'NH{q', 17
                                if arg2 > -1:
                                    revert with 'NH{q', 17
                                if arg2 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Tax value invalid'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                                if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                                emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 'BEP20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'BEP20: transfer to the zero address'
                                if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'BEP20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'BEP20: transfer to the zero address'
                                if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                    else:
                        Mask(96, 0, stor8.field_160) = 1
                        transferTaxRate = 0
                        if balanceOf[address(this.address)] < minAmountToLiquify:
                            Mask(248, 0, stor6.field_8) = transferTaxRate
                            Mask(96, 0, stor8.field_160) = 0
                            if arg1 == 57005:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not transferTaxRate:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and transferTaxRate > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * transferTaxRate / 10000 * burnRate / 100 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Burn value invalid'
                                    if arg2 < arg2 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    if arg2 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Tax value invalid'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                                    if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                    if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                                    emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 'BEP20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'BEP20: transfer to the zero address'
                                    if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                    if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                    emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'BEP20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'BEP20: transfer to the zero address'
                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                        else:
                            if minAmountToLiquify < stor7:
                                revert with 'NH{q', 17
                            mem[128] = this.address
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'BEP20: approve from the zero address'
                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4] = stor7
                            emit Approval(stor7, this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = stor7
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 2 * Mask(256, -1, stor7), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if not this.address:
                                revert with 0, 'BEP20: approve from the zero address'
                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4] = minAmountToLiquify - stor7
                            emit Approval((minAmountToLiquify - stor7), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                            mem[ceil32(return_data.size) + 356] = block.timestamp
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            if liquidityAddress == 57005:
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), minAmountToLiquify - stor7, 0, 0, operatorAddress, block.timestamp
                            else:
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), minAmountToLiquify - stor7, 0, 0, liquidityAddress, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            emit SwapAndLiquify(2 * Mask(256, -1, stor7), 0, minAmountToLiquify - stor7);
                            Mask(248, 0, stor6.field_8) = transferTaxRate
                            Mask(96, 0, stor8.field_160) = 0
                            if arg1 == 57005:
                                if not msg.sender:
                                    revert with 0, 'BEP20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'BEP20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor7) >> 48,
                                                0
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not transferTaxRate:
                                    if not msg.sender:
                                        revert with 0, 'BEP20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'BEP20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor7) >> 48,
                                                    0
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and transferTaxRate > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if arg2 * transferTaxRate / 10000 and burnRate > -1 / arg2 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    if arg2 * transferTaxRate / 10000 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * transferTaxRate / 10000 * burnRate / 100 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                        revert with 0, 'TMGO::transfer: Burn value invalid'
                                    if arg2 < arg2 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    if arg2 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 != arg2:
                                        revert with 0, 'TMGO::transfer: Tax value invalid'
                                    if not msg.sender:
                                        revert with 0, 'BEP20: transfer from the zero address'
                                    if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor7) >> 48,
                                                    0
                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                    if balanceOf[57005] > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                                    emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 'BEP20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'BEP20: transfer to the zero address'
                                    if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                    0
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                    if balanceOf[address(this.address)] > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                    emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'BEP20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'BEP20: transfer to the zero address'
                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 454 len 26] >> 48,
                                                    0
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if bool(swapAndLiquifyEnabled) != 1:
        if arg2 == 57005:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
        else:
            if not transferTaxRate:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if arg3 and transferTaxRate > -1 / arg3:
                    revert with 'NH{q', 17
                if arg3 * transferTaxRate / 10000 and burnRate > -1 / arg3 * transferTaxRate / 10000:
                    revert with 'NH{q', 17
                if arg3 * transferTaxRate / 10000 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                    revert with 'NH{q', 17
                if arg3 * transferTaxRate / 10000 * burnRate / 100 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                    revert with 'NH{q', 17
                if arg3 * transferTaxRate / 10000 != arg3 * transferTaxRate / 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Burn value invalid'
                if arg3 < arg3 * transferTaxRate / 10000:
                    revert with 'NH{q', 17
                if arg3 > -1:
                    revert with 'NH{q', 17
                if arg3 != arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Tax value invalid'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                if arg3 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3 * transferTaxRate / 10000 * burnRate / 100
                if balanceOf[57005] > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[57005] += arg3 * transferTaxRate / 10000 * burnRate / 100
                emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                if not arg1:
                    revert with 0, 'BEP20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'BEP20: transfer to the zero address'
                if (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                if balanceOf[address(this.address)] > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                if not arg1:
                    revert with 0, 'BEP20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'BEP20: transfer to the zero address'
                if arg3 - (arg3 * transferTaxRate / 10000) > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * transferTaxRate / 10000)
                if balanceOf[address(arg2)] > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * transferTaxRate / 10000)
                emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
    else:
        if uint8(stor8.field_160):
            if arg2 == 57005:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if not transferTaxRate:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if arg3 and transferTaxRate > -1 / arg3:
                        revert with 'NH{q', 17
                    if arg3 * transferTaxRate / 10000 and burnRate > -1 / arg3 * transferTaxRate / 10000:
                        revert with 'NH{q', 17
                    if arg3 * transferTaxRate / 10000 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                        revert with 'NH{q', 17
                    if arg3 * transferTaxRate / 10000 * burnRate / 100 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                        revert with 'NH{q', 17
                    if arg3 * transferTaxRate / 10000 != arg3 * transferTaxRate / 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Burn value invalid'
                    if arg3 < arg3 * transferTaxRate / 10000:
                        revert with 'NH{q', 17
                    if arg3 > -1:
                        revert with 'NH{q', 17
                    if arg3 != arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Tax value invalid'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                    if arg3 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3 * transferTaxRate / 10000 * burnRate / 100
                    if balanceOf[57005] > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[57005] += arg3 * transferTaxRate / 10000 * burnRate / 100
                    emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                    if not arg1:
                        revert with 0, 'BEP20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'BEP20: transfer to the zero address'
                    if (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                    if balanceOf[address(this.address)] > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                    emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                    if not arg1:
                        revert with 0, 'BEP20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'BEP20: transfer to the zero address'
                    if arg3 - (arg3 * transferTaxRate / 10000) > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * transferTaxRate / 10000)
                    if balanceOf[address(arg2)] > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * transferTaxRate / 10000)
                    emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
        else:
            if not swapPairAddress:
                if arg2 == 57005:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if not transferTaxRate:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if arg3 and transferTaxRate > -1 / arg3:
                            revert with 'NH{q', 17
                        if arg3 * transferTaxRate / 10000 and burnRate > -1 / arg3 * transferTaxRate / 10000:
                            revert with 'NH{q', 17
                        if arg3 * transferTaxRate / 10000 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                            revert with 'NH{q', 17
                        if arg3 * transferTaxRate / 10000 * burnRate / 100 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                            revert with 'NH{q', 17
                        if arg3 * transferTaxRate / 10000 != arg3 * transferTaxRate / 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Burn value invalid'
                        if arg3 < arg3 * transferTaxRate / 10000:
                            revert with 'NH{q', 17
                        if arg3 > -1:
                            revert with 'NH{q', 17
                        if arg3 != arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Tax value invalid'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                        if arg3 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3 * transferTaxRate / 10000 * burnRate / 100
                        if balanceOf[57005] > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[57005] += arg3 * transferTaxRate / 10000 * burnRate / 100
                        emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                        if not arg1:
                            revert with 0, 'BEP20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'BEP20: transfer to the zero address'
                        if (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                        if balanceOf[address(this.address)] > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                        emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                        if not arg1:
                            revert with 0, 'BEP20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'BEP20: transfer to the zero address'
                        if arg3 - (arg3 * transferTaxRate / 10000) > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * transferTaxRate / 10000)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * transferTaxRate / 10000)
                        emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
            else:
                if arg1 == swapPairAddress:
                    if arg2 == 57005:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if not transferTaxRate:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                        else:
                            if arg3 and transferTaxRate > -1 / arg3:
                                revert with 'NH{q', 17
                            if arg3 * transferTaxRate / 10000 and burnRate > -1 / arg3 * transferTaxRate / 10000:
                                revert with 'NH{q', 17
                            if arg3 * transferTaxRate / 10000 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                                revert with 'NH{q', 17
                            if arg3 * transferTaxRate / 10000 * burnRate / 100 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                revert with 'NH{q', 17
                            if arg3 * transferTaxRate / 10000 != arg3 * transferTaxRate / 10000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Burn value invalid'
                            if arg3 < arg3 * transferTaxRate / 10000:
                                revert with 'NH{q', 17
                            if arg3 > -1:
                                revert with 'NH{q', 17
                            if arg3 != arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Tax value invalid'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                            if arg3 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3 * transferTaxRate / 10000 * burnRate / 100
                            if balanceOf[57005] > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[57005] += arg3 * transferTaxRate / 10000 * burnRate / 100
                            emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                            if not arg1:
                                revert with 0, 'BEP20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'BEP20: transfer to the zero address'
                            if (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                            if balanceOf[address(this.address)] > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                            emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                            if not arg1:
                                revert with 0, 'BEP20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'BEP20: transfer to the zero address'
                            if arg3 - (arg3 * transferTaxRate / 10000) > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * transferTaxRate / 10000)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * transferTaxRate / 10000)
                            emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                else:
                    if arg1 == owner:
                        if arg2 == 57005:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                        else:
                            if not transferTaxRate:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                            else:
                                if arg3 and transferTaxRate > -1 / arg3:
                                    revert with 'NH{q', 17
                                if arg3 * transferTaxRate / 10000 and burnRate > -1 / arg3 * transferTaxRate / 10000:
                                    revert with 'NH{q', 17
                                if arg3 * transferTaxRate / 10000 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                                    revert with 'NH{q', 17
                                if arg3 * transferTaxRate / 10000 * burnRate / 100 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                    revert with 'NH{q', 17
                                if arg3 * transferTaxRate / 10000 != arg3 * transferTaxRate / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Burn value invalid'
                                if arg3 < arg3 * transferTaxRate / 10000:
                                    revert with 'NH{q', 17
                                if arg3 > -1:
                                    revert with 'NH{q', 17
                                if arg3 != arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Tax value invalid'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                                if arg3 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                balanceOf[address(arg1)] -= arg3 * transferTaxRate / 10000 * burnRate / 100
                                if balanceOf[57005] > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[57005] += arg3 * transferTaxRate / 10000 * burnRate / 100
                                emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                                if not arg1:
                                    revert with 0, 'BEP20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'BEP20: transfer to the zero address'
                                if (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                if balanceOf[address(this.address)] > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                                if not arg1:
                                    revert with 0, 'BEP20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'BEP20: transfer to the zero address'
                                if arg3 - (arg3 * transferTaxRate / 10000) > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * transferTaxRate / 10000)
                                if balanceOf[address(arg2)] > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * transferTaxRate / 10000)
                                emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                    else:
                        Mask(96, 0, stor8.field_160) = 1
                        transferTaxRate = 0
                        if balanceOf[address(this.address)] < minAmountToLiquify:
                            Mask(248, 0, stor6.field_8) = transferTaxRate
                            Mask(96, 0, stor8.field_160) = 0
                            if arg2 == 57005:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                            else:
                                if not transferTaxRate:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                                else:
                                    if arg3 and transferTaxRate > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if arg3 * transferTaxRate / 10000 and burnRate > -1 / arg3 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    if arg3 * transferTaxRate / 10000 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                                        revert with 'NH{q', 17
                                    if arg3 * transferTaxRate / 10000 * burnRate / 100 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    if arg3 * transferTaxRate / 10000 != arg3 * transferTaxRate / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Burn value invalid'
                                    if arg3 < arg3 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    if arg3 > -1:
                                        revert with 'NH{q', 17
                                    if arg3 != arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TMGO::transfer: Tax value invalid'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
                                    if arg3 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    balanceOf[address(arg1)] -= arg3 * transferTaxRate / 10000 * burnRate / 100
                                    if balanceOf[57005] > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[57005] += arg3 * transferTaxRate / 10000 * burnRate / 100
                                    emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                                    if not arg1:
                                        revert with 0, 'BEP20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'BEP20: transfer to the zero address'
                                    if (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                    if balanceOf[address(this.address)] > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                    emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                                    if not arg1:
                                        revert with 0, 'BEP20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'BEP20: transfer to the zero address'
                                    if arg3 - (arg3 * transferTaxRate / 10000) > balanceOf[address(arg1)]:
                                        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * transferTaxRate / 10000)
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * transferTaxRate / 10000)
                                    emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                        else:
                            if minAmountToLiquify < stor7:
                                revert with 'NH{q', 17
                            mem[128] = this.address
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'BEP20: approve from the zero address'
                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4] = stor7
                            emit Approval(stor7, this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = stor7
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args 2 * Mask(256, -1, stor7), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if not this.address:
                                revert with 0, 'BEP20: approve from the zero address'
                            allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4] = minAmountToLiquify - stor7
                            emit Approval((minAmountToLiquify - stor7), this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
                            mem[ceil32(return_data.size) + 356] = block.timestamp
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            if liquidityAddress == 57005:
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), minAmountToLiquify - stor7, 0, 0, operatorAddress, block.timestamp
                            else:
                                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), minAmountToLiquify - stor7, 0, 0, liquidityAddress, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            emit SwapAndLiquify(2 * Mask(256, -1, stor7), 0, minAmountToLiquify - stor7);
                            Mask(248, 0, stor6.field_8) = transferTaxRate
                            Mask(96, 0, stor8.field_160) = 0
                            if arg2 == 57005:
                                if not arg1:
                                    revert with 0, 'BEP20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'BEP20: transfer to the zero address'
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor7) >> 48,
                                                0
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + 360 len 24] >> 64,
                                                0
                            else:
                                if not transferTaxRate:
                                    if not arg1:
                                        revert with 0, 'BEP20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'BEP20: transfer to the zero address'
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor7) >> 48,
                                                    0
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + 360 len 24] >> 64,
                                                    0
                                else:
                                    if arg3 and transferTaxRate > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if arg3 * transferTaxRate / 10000 and burnRate > -1 / arg3 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    if arg3 * transferTaxRate / 10000 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                                        revert with 'NH{q', 17
                                    if arg3 * transferTaxRate / 10000 * burnRate / 100 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    if arg3 * transferTaxRate / 10000 != arg3 * transferTaxRate / 10000:
                                        revert with 0, 'TMGO::transfer: Burn value invalid'
                                    if arg3 < arg3 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    if arg3 > -1:
                                        revert with 'NH{q', 17
                                    if arg3 != arg3:
                                        revert with 0, 'TMGO::transfer: Tax value invalid'
                                    if not arg1:
                                        revert with 0, 'BEP20: transfer from the zero address'
                                    if arg3 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, minAmountToLiquify - stor7) >> 48,
                                                    0
                                    balanceOf[address(arg1)] -= arg3 * transferTaxRate / 10000 * burnRate / 100
                                    if balanceOf[57005] > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[57005] += arg3 * transferTaxRate / 10000 * burnRate / 100
                                    emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                                    if not arg1:
                                        revert with 0, 'BEP20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'BEP20: transfer to the zero address'
                                    if (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                    0
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                    if balanceOf[address(this.address)] > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                    emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                                    if not arg1:
                                        revert with 0, 'BEP20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'BEP20: transfer to the zero address'
                                    if arg3 - (arg3 * transferTaxRate / 10000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 454 len 26] >> 48,
                                                    0
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * transferTaxRate / 10000)
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * transferTaxRate / 10000)
                                    emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + 552 len 24] >> 64,
                                                    0
    ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 2)))))
    if not arg1:
        revert with 0, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
