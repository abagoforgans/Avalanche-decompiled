contract main {




// =====================  Runtime code  =====================


const decimals = 18

const maxSupply = 20000 * 10^18

const MAXIMUM_TRANSFER_TAX_RATE = 500

const BURN_ADDRESS = 57005


address owner;
mapping of struct balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 stor4;
array of struct stor5;
array of struct stor6;
uint8 stor7; offset 32
uint16 transferTaxRate;
uint16 burnRate; offset 16
uint256 stor7; offset 32
uint256 minAmountToLiquify;
address sub_e877e128Address;
uint8 stor10; offset 160
uint128 stor10; offset 160
address sub_fef0acffAddress;
address operatorAddress;

function totalSupply() {
    return totalSupply
}

function swapAndLiquifyEnabled() {
    return bool(uint8(stor7.field_32))
}

function operator() {
    return operatorAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
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

function sub_e877e128(?) {
    return sub_e877e128Address
}

function sub_fef0acff(?) {
    return sub_fef0acffAddress
}

function _fallback() payable {
    revert
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
    Mask(224, 0, stor7.field_32) = Mask(224, 0, arg1)
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

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BLOOM::transferOperator: new operator is the zero address'
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
                    'BLOOM::updateBurnRate: Burn rate must not exceed the maximum rate.'
    emit BurnRateUpdated(transferTaxRate, arg1, msg.sender);
    burnRate = arg1
}

function updateTransferTaxRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if arg1 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BLOOM::updateTransferTaxRate: Transfer tax rate must not exceed the maximum rate.'
    emit TransferTaxRateUpdated(transferTaxRate, arg1, msg.sender);
    transferTaxRate = arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if stor4 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor4 + arg1 > 20000 * 10^18:
        revert with 0, 'Max supply reached'
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    totalSupply += arg1
    if stor4 > -arg1 - 1:
        revert with 'NH{q', 17
    stor4 += arg1
    if balanceOf[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)].field_0 += arg1
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
        revert with 0, 'ERC20: mint to the zero address'
    if stor4 > -arg2 - 1:
        revert with 'NH{q', 17
    if stor4 + arg2 > 20000 * 10^18:
        revert with 0, 'Max supply reached'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if stor4 > -arg2 - 1:
        revert with 'NH{q', 17
    stor4 += arg2
    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)].field_0 += arg2
    emit Transfer(arg2, 0, arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_78b6f38e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e877e128Address = address(arg1)
    staticcall sub_e877e128Address.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall sub_e877e128Address.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_fef0acffAddress = ext_call.return_data[12 len 20]
    if not sub_fef0acffAddress:
        revert with 0, 'BLOOM::updateBlossomSwapRouter: Invalid pair address.'
    emit 0x5deb7907: msg.sender, sub_e877e128Address, sub_fef0acffAddress
}

function name() {
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

function symbol() {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(uint8(stor7.field_32)) != 1:
        if arg1 == 57005:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)].field_0 < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)].field_0 -= arg2
            if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)].field_0 += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not transferTaxRate:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)].field_0 < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)].field_0 -= arg2
                if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)].field_0 += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if msg.sender == owner:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)].field_0 < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)].field_0 -= arg2
                    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)].field_0 += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg1 == owner:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)].field_0 -= arg2
                        if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)].field_0 += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if msg.sender == operatorAddress:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == operatorAddress:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)].field_0 += arg2
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
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                if arg2 < arg2 * transferTaxRate / 10000:
                                    revert with 'NH{q', 17
                                if arg2 > -1:
                                    revert with 'NH{q', 17
                                if arg2 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if balanceOf[address(msg.sender)].field_0 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                if balanceOf[57005].field_0 > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[57005].field_0 += arg2 * transferTaxRate / 10000 * burnRate / 100
                                emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)].field_0 < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                if balanceOf[address(this.address)].field_0 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * transferTaxRate / 10000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * transferTaxRate / 10000)
                                if balanceOf[address(arg1)].field_0 > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * transferTaxRate / 10000)
                                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
    else:
        if uint8(stor10.field_160):
            if arg1 == 57005:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)].field_0 < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)].field_0 -= arg2
                if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)].field_0 += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not transferTaxRate:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)].field_0 < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)].field_0 -= arg2
                    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)].field_0 += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if msg.sender == owner:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)].field_0 -= arg2
                        if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)].field_0 += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg1 == owner:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == operatorAddress:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == operatorAddress:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)].field_0 += arg2
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
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                    if arg2 < arg2 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    if arg2 > -1:
                                        revert with 'NH{q', 17
                                    if arg2 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if balanceOf[address(msg.sender)].field_0 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                    if balanceOf[57005].field_0 > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[57005].field_0 += arg2 * transferTaxRate / 10000 * burnRate / 100
                                    emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)].field_0 < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                    if balanceOf[address(this.address)].field_0 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                    emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * transferTaxRate / 10000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * transferTaxRate / 10000)
                                    if balanceOf[address(arg1)].field_0 > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * transferTaxRate / 10000)
                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
        else:
            if not sub_e877e128Address:
                if arg1 == 57005:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)].field_0 < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)].field_0 -= arg2
                    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)].field_0 += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not transferTaxRate:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)].field_0 -= arg2
                        if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)].field_0 += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if msg.sender == owner:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == owner:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == operatorAddress:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == operatorAddress:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)].field_0 += arg2
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
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                        if arg2 < arg2 * transferTaxRate / 10000:
                                            revert with 'NH{q', 17
                                        if arg2 > -1:
                                            revert with 'NH{q', 17
                                        if arg2 != arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if balanceOf[address(msg.sender)].field_0 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                        if balanceOf[57005].field_0 > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[57005].field_0 += arg2 * transferTaxRate / 10000 * burnRate / 100
                                        emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)].field_0 < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                        if balanceOf[address(this.address)].field_0 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                        emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * transferTaxRate / 10000):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * transferTaxRate / 10000)
                                        if balanceOf[address(arg1)].field_0 > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * transferTaxRate / 10000)
                                        emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
            else:
                if not sub_fef0acffAddress:
                    if arg1 == 57005:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)].field_0 -= arg2
                        if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)].field_0 += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not transferTaxRate:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == owner:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == owner:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == operatorAddress:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == operatorAddress:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)].field_0 += arg2
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
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                            if arg2 < arg2 * transferTaxRate / 10000:
                                                revert with 'NH{q', 17
                                            if arg2 > -1:
                                                revert with 'NH{q', 17
                                            if arg2 != arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if balanceOf[address(msg.sender)].field_0 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)].field_0 -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                            if balanceOf[57005].field_0 > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[57005].field_0 += arg2 * transferTaxRate / 10000 * burnRate / 100
                                            emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)].field_0 < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                            if balanceOf[address(this.address)].field_0 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                            emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * transferTaxRate / 10000):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * transferTaxRate / 10000)
                                            if balanceOf[address(arg1)].field_0 > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * transferTaxRate / 10000)
                                            emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                else:
                    if msg.sender == sub_fef0acffAddress:
                        if arg1 == 57005:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not transferTaxRate:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == owner:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == owner:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == operatorAddress:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg1 == operatorAddress:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)].field_0 += arg2
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
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                                if arg2 < arg2 * transferTaxRate / 10000:
                                                    revert with 'NH{q', 17
                                                if arg2 > -1:
                                                    revert with 'NH{q', 17
                                                if arg2 != arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if balanceOf[address(msg.sender)].field_0 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)].field_0 -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                                if balanceOf[57005].field_0 > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[57005].field_0 += arg2 * transferTaxRate / 10000 * burnRate / 100
                                                emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)].field_0 < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                if balanceOf[address(this.address)].field_0 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * transferTaxRate / 10000):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * transferTaxRate / 10000)
                                                if balanceOf[address(arg1)].field_0 > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * transferTaxRate / 10000)
                                                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                    else:
                        if msg.sender == owner:
                            if arg1 == 57005:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 -= arg2
                                if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)].field_0 += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not transferTaxRate:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == owner:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == owner:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == operatorAddress:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg1 == operatorAddress:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)].field_0 += arg2
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
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                                    if arg2 < arg2 * transferTaxRate / 10000:
                                                        revert with 'NH{q', 17
                                                    if arg2 > -1:
                                                        revert with 'NH{q', 17
                                                    if arg2 != arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)].field_0 -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                                    if balanceOf[57005].field_0 > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[57005].field_0 += arg2 * transferTaxRate / 10000 * burnRate / 100
                                                    emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)].field_0 < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                    if balanceOf[address(this.address)].field_0 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                    emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * transferTaxRate / 10000):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * transferTaxRate / 10000)
                                                    if balanceOf[address(arg1)].field_0 > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * transferTaxRate / 10000)
                                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                        else:
                            Mask(96, 0, stor10.field_160) = 1
                            transferTaxRate = 0
                            if balanceOf[address(this.address)].field_0 < minAmountToLiquify:
                                Mask(96, 0, stor10.field_160) = 0
                                if arg1 == 57005:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not transferTaxRate:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == owner:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg1 == owner:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == operatorAddress:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg1 == operatorAddress:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                                        if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)].field_0 += arg2
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
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                                        if arg2 < arg2 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)].field_0 -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                                        if balanceOf[57005].field_0 > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[57005].field_0 += arg2 * transferTaxRate / 10000 * burnRate / 100
                                                        emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)].field_0 < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100):
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                        if balanceOf[address(this.address)].field_0 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                        emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * transferTaxRate / 10000):
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * transferTaxRate / 10000)
                                                        if balanceOf[address(arg1)].field_0 > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * transferTaxRate / 10000)
                                                        emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                            else:
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
                                    revert with 'NH{q', 17
                                mem[128] = this.address
                                staticcall sub_e877e128Address.WAVAX() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not sub_e877e128Address:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor9] = balanceOf[address(this.address)].field_1
                                emit Approval(balanceOf[address(this.address)].field_1, this.address, sub_e877e128Address);
                                mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)].field_1
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(sub_e877e128Address)
                                call sub_e877e128Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 2 * Mask(256, -1, balanceOf[address(this.address)].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not sub_e877e128Address:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor9] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
                                emit Approval((balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, sub_e877e128Address);
                                call sub_e877e128Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1, 0, 0, operatorAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit SwapAndLiquify(2 * Mask(256, -1, balanceOf[address(this.address)].field_1), 0, balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1);
                                Mask(96, 0, stor10.field_160) = 0
                                if arg1 == 57005:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)].field_0 += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not transferTaxRate:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                        if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)].field_0 += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == owner:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)].field_0 -= arg2
                                            if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)].field_0 += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg1 == owner:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)].field_0 -= arg2
                                                if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)].field_0 += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == operatorAddress:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)].field_0 < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)].field_0 -= arg2
                                                    if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)].field_0 += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg1 == operatorAddress:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)].field_0 < arg2:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)].field_0 -= arg2
                                                        if balanceOf[address(arg1)].field_0 > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)].field_0 += arg2
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
                                                            revert with 0, 'BLOOM::transfer: Burn value invalid'
                                                        if arg2 < arg2 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg2 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg2 != arg2:
                                                            revert with 0, 'BLOOM::transfer: Tax value invalid'
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 * transferTaxRate / 10000 * burnRate / 100:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)].field_0 -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                                        if balanceOf[57005].field_0 > -(arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[57005].field_0 += arg2 * transferTaxRate / 10000 * burnRate / 100
                                                        emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)].field_0 < (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                        if balanceOf[address(this.address)].field_0 > -(arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                        emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * transferTaxRate / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * transferTaxRate / 10000)
                                                        if balanceOf[address(arg1)].field_0 > -arg2 + (arg2 * transferTaxRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 + arg2 - (arg2 * transferTaxRate / 10000)
                                                        emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if bool(uint8(stor7.field_32)) != 1:
        if arg2 == 57005:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)].field_0 < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)].field_0 -= arg3
            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)].field_0 += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if not transferTaxRate:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg1 == owner:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)].field_0 < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)].field_0 -= arg3
                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)].field_0 += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg2 == owner:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)].field_0 < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)].field_0 += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg1 == operatorAddress:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg2 == operatorAddress:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
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
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                if arg3 < arg3 * transferTaxRate / 10000:
                                    revert with 'NH{q', 17
                                if arg3 > -1:
                                    revert with 'NH{q', 17
                                if arg3 != arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if balanceOf[address(arg1)].field_0 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 -= arg3 * transferTaxRate / 10000 * burnRate / 100
                                if balanceOf[57005].field_0 > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[57005].field_0 += arg3 * transferTaxRate / 10000 * burnRate / 100
                                emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)].field_0 < (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                if balanceOf[address(this.address)].field_0 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * transferTaxRate / 10000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * transferTaxRate / 10000)
                                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * transferTaxRate / 10000)
                                emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if uint8(stor10.field_160):
            if arg2 == 57005:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if not transferTaxRate:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)].field_0 < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)].field_0 -= arg3
                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)].field_0 += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg1 == owner:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)].field_0 < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)].field_0 += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg2 == owner:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg1 == operatorAddress:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg2 == operatorAddress:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
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
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                    if arg3 < arg3 * transferTaxRate / 10000:
                                        revert with 'NH{q', 17
                                    if arg3 > -1:
                                        revert with 'NH{q', 17
                                    if arg3 != arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if balanceOf[address(arg1)].field_0 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)].field_0 -= arg3 * transferTaxRate / 10000 * burnRate / 100
                                    if balanceOf[57005].field_0 > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[57005].field_0 += arg3 * transferTaxRate / 10000 * burnRate / 100
                                    emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)].field_0 < (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                    if balanceOf[address(this.address)].field_0 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                    emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * transferTaxRate / 10000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * transferTaxRate / 10000)
                                    if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * transferTaxRate / 10000)
                                    emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if not sub_e877e128Address:
                if arg2 == 57005:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)].field_0 < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)].field_0 -= arg3
                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)].field_0 += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if not transferTaxRate:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)].field_0 < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)].field_0 += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg1 == owner:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg2 == owner:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg1 == operatorAddress:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg2 == operatorAddress:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
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
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                        if arg3 < arg3 * transferTaxRate / 10000:
                                            revert with 'NH{q', 17
                                        if arg3 > -1:
                                            revert with 'NH{q', 17
                                        if arg3 != arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if balanceOf[address(arg1)].field_0 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)].field_0 -= arg3 * transferTaxRate / 10000 * burnRate / 100
                                        if balanceOf[57005].field_0 > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[57005].field_0 += arg3 * transferTaxRate / 10000 * burnRate / 100
                                        emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)].field_0 < (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                        if balanceOf[address(this.address)].field_0 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                        emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * transferTaxRate / 10000):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * transferTaxRate / 10000)
                                        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * transferTaxRate / 10000)
                                        emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if not sub_fef0acffAddress:
                    if arg2 == 57005:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)].field_0 < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)].field_0 += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not transferTaxRate:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg1 == owner:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg2 == owner:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg1 == operatorAddress:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg2 == operatorAddress:
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
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
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                            if arg3 < arg3 * transferTaxRate / 10000:
                                                revert with 'NH{q', 17
                                            if arg3 > -1:
                                                revert with 'NH{q', 17
                                            if arg3 != arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if balanceOf[address(arg1)].field_0 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)].field_0 -= arg3 * transferTaxRate / 10000 * burnRate / 100
                                            if balanceOf[57005].field_0 > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[57005].field_0 += arg3 * transferTaxRate / 10000 * burnRate / 100
                                            emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)].field_0 < (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                            if balanceOf[address(this.address)].field_0 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                            emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * transferTaxRate / 10000):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * transferTaxRate / 10000)
                                            if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * transferTaxRate / 10000)
                                            emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if arg1 == sub_fef0acffAddress:
                        if arg2 == 57005:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if not transferTaxRate:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg1 == owner:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg2 == owner:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg1 == operatorAddress:
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg2 == operatorAddress:
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
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
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                                if arg3 < arg3 * transferTaxRate / 10000:
                                                    revert with 'NH{q', 17
                                                if arg3 > -1:
                                                    revert with 'NH{q', 17
                                                if arg3 != arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if balanceOf[address(arg1)].field_0 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)].field_0 -= arg3 * transferTaxRate / 10000 * burnRate / 100
                                                if balanceOf[57005].field_0 > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[57005].field_0 += arg3 * transferTaxRate / 10000 * burnRate / 100
                                                emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)].field_0 < (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                                if balanceOf[address(this.address)].field_0 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                                emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * transferTaxRate / 10000):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * transferTaxRate / 10000)
                                                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * transferTaxRate / 10000)
                                                emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if arg1 == owner:
                            if arg2 == 57005:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if not transferTaxRate:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg1 == owner:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg2 == owner:
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg1 == operatorAddress:
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg2 == operatorAddress:
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, arg1, arg2);
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
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                                    if arg3 < arg3 * transferTaxRate / 10000:
                                                        revert with 'NH{q', 17
                                                    if arg3 > -1:
                                                        revert with 'NH{q', 17
                                                    if arg3 != arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if balanceOf[address(arg1)].field_0 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)].field_0 -= arg3 * transferTaxRate / 10000 * burnRate / 100
                                                    if balanceOf[57005].field_0 > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[57005].field_0 += arg3 * transferTaxRate / 10000 * burnRate / 100
                                                    emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)].field_0 < (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                                    if balanceOf[address(this.address)].field_0 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                                    emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * transferTaxRate / 10000):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * transferTaxRate / 10000)
                                                    if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * transferTaxRate / 10000)
                                                    emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            Mask(96, 0, stor10.field_160) = 1
                            transferTaxRate = 0
                            if balanceOf[address(this.address)].field_0 < minAmountToLiquify:
                                Mask(96, 0, stor10.field_160) = 0
                                if arg2 == 57005:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if not transferTaxRate:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg1 == owner:
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg2 == owner:
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg1 == operatorAddress:
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg2 == operatorAddress:
                                                        if not arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)].field_0 < arg3:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)].field_0 -= arg3
                                                        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg2)].field_0 += arg3
                                                        emit Transfer(arg3, arg1, arg2);
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
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Burn value invalid'
                                                        if arg3 < arg3 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg3 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg3 != arg3:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BLOOM::transfer: Tax value invalid'
                                                        if not arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if balanceOf[address(arg1)].field_0 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)].field_0 -= arg3 * transferTaxRate / 10000 * burnRate / 100
                                                        if balanceOf[57005].field_0 > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[57005].field_0 += arg3 * transferTaxRate / 10000 * burnRate / 100
                                                        emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                                                        if not arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)].field_0 < (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100):
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                                        if balanceOf[address(this.address)].field_0 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                                        emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                                                        if not arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * transferTaxRate / 10000):
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * transferTaxRate / 10000)
                                                        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * transferTaxRate / 10000)
                                                        emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
                                    revert with 'NH{q', 17
                                mem[128] = this.address
                                staticcall sub_e877e128Address.WAVAX() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not sub_e877e128Address:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor9] = balanceOf[address(this.address)].field_1
                                emit Approval(balanceOf[address(this.address)].field_1, this.address, sub_e877e128Address);
                                mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)].field_1
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(sub_e877e128Address)
                                call sub_e877e128Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 2 * Mask(256, -1, balanceOf[address(this.address)].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not sub_e877e128Address:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor9] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
                                emit Approval((balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, sub_e877e128Address);
                                call sub_e877e128Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1, 0, 0, operatorAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit SwapAndLiquify(2 * Mask(256, -1, balanceOf[address(this.address)].field_1), 0, balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1);
                                Mask(96, 0, stor10.field_160) = 0
                                if arg2 == 57005:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)].field_0 < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)].field_0 -= arg3
                                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)].field_0 += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if not transferTaxRate:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)].field_0 < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)].field_0 -= arg3
                                        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)].field_0 += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg1 == owner:
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)].field_0 < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)].field_0 -= arg3
                                            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)].field_0 += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg2 == owner:
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)].field_0 < arg3:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)].field_0 -= arg3
                                                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)].field_0 += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg1 == operatorAddress:
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)].field_0 < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)].field_0 -= arg3
                                                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)].field_0 += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg2 == operatorAddress:
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)].field_0 < arg3:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)].field_0 -= arg3
                                                        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg2)].field_0 += arg3
                                                        emit Transfer(arg3, arg1, arg2);
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
                                                            revert with 0, 'BLOOM::transfer: Burn value invalid'
                                                        if arg3 < arg3 * transferTaxRate / 10000:
                                                            revert with 'NH{q', 17
                                                        if arg3 > -1:
                                                            revert with 'NH{q', 17
                                                        if arg3 != arg3:
                                                            revert with 0, 'BLOOM::transfer: Tax value invalid'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if balanceOf[address(arg1)].field_0 < arg3 * transferTaxRate / 10000 * burnRate / 100:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)].field_0 -= arg3 * transferTaxRate / 10000 * burnRate / 100
                                                        if balanceOf[57005].field_0 > -(arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[57005].field_0 += arg3 * transferTaxRate / 10000 * burnRate / 100
                                                        emit Transfer((arg3 * transferTaxRate / 10000 * burnRate / 100), arg1, 57005);
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)].field_0 < (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                                        if balanceOf[address(this.address)].field_0 > -(arg3 * transferTaxRate / 10000) + (arg3 * transferTaxRate / 10000 * burnRate / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)
                                                        emit Transfer(((arg3 * transferTaxRate / 10000) - (arg3 * transferTaxRate / 10000 * burnRate / 100)), arg1, this.address);
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg2:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * transferTaxRate / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * transferTaxRate / 10000)
                                                        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 * transferTaxRate / 10000) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 * transferTaxRate / 10000)
                                                        emit Transfer((arg3 - (arg3 * transferTaxRate / 10000)), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
