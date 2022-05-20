contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const decimals = 18


mapping of struct balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address routerAddress;
uint8 stor7; offset 160
address pairAddress;
uint256 sub_7c32b610;
uint8 stor9;
uint8 stor9; offset 8
uint16 sub_3487f049; offset 16
uint16 sub_fa1ab85e; offset 32
uint16 sub_fee638ab; offset 48
uint256 stor9; offset 16
uint256 stor9; offset 8
mapping of uint8 stor10;

function totalSupply() {
    return totalSupply
}

function sub_31576122(?) {
    return bool(uint8(stor9.field_0))
}

function sub_3487f049(?) {
    return sub_3487f049
}

function tradingEnabled() {
    return bool(uint8(stor9.field_8))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
}

function sub_7c32b610(?) {
    return sub_7c32b610
}

function owner() {
    return owner
}

function pair() {
    return pairAddress
}

function sub_c5d32bb2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
}

function sub_fa1ab85e(?) {
    return sub_fa1ab85e
}

function sub_fee638ab(?) {
    return sub_fee638ab
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeLiquidityTreshhold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7c32b610 = arg1
    emit LiquidityThresholdUpdated(arg1);
}

function setTradingEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor9.field_8) = Mask(248, 0, arg1)
}

function changeFees(uint16 arg1, uint16 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fa1ab85e = arg1
    sub_fee638ab = arg2
}

function updateExemptFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = uint8(arg2)
    return 1
}

function changeLiquidityProvide(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor9.field_0) = uint8(arg1)
    emit LiquidityProvisionStateChanged(arg1);
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

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor10[address(msg.sender)]:
        if not stor10[address(arg1)]:
            if not uint8(stor9.field_8):
                revert with 0, 'Trading not started yet'
    if pairAddress != arg1:
        Mask(240, 0, stor9.field_16) = sub_fa1ab85e
    else:
        Mask(240, 0, stor9.field_16) = sub_fee638ab
    if arg2 and sub_3487f049 > -1 / arg2:
        revert with 0, 17
    if stor7:
        if not uint8(stor9.field_0):
            if arg2 < 0:
                revert with 0, 17
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)].field_0 < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        else:
            if pairAddress == msg.sender:
                if arg2 < 0:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)].field_0 < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            else:
                if stor7:
                    if arg2 < 0:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)].field_0 < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                else:
                    stor7 = 1
                    if balanceOf[this.address].field_0 < sub_7c32b610:
                        stor7 = 0
                        if arg2 < 0:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    else:
                        mem[128] = this.address
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.WETH() with:
                                gas gas_remaining wei
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[160] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not routerAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                        emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_1
                        idx = 0
                        s = ceil32(return_data.size) + 388
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not routerAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                        emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 0, 0, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        stor7 = 0
                        if arg2 < 0:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
        ('ge', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0)))), ('param', 'arg2'))
        balanceOf[address(msg.sender)].field_0 -= arg2
        if balanceOf[arg1].field_0 > !arg2:
            revert with 0, 17
        balanceOf[arg1].field_0 += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor10[address(msg.sender)]:
            if not uint8(stor9.field_0):
                if arg2 < 0:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)].field_0 < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            else:
                if pairAddress == msg.sender:
                    if arg2 < 0:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)].field_0 < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                else:
                    if stor7:
                        if arg2 < 0:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    else:
                        stor7 = 1
                        if balanceOf[this.address].field_0 < sub_7c32b610:
                            stor7 = 0
                            if arg2 < 0:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        else:
                            mem[128] = this.address
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not routerAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                            emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_1
                            idx = 0
                            s = ceil32(return_data.size) + 388
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not routerAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                            emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args this.address, 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 0, 0, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            stor7 = 0
                            if arg2 < 0:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
            ('ge', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0)))), ('param', 'arg2'))
            balanceOf[address(msg.sender)].field_0 -= arg2
            if balanceOf[arg1].field_0 > !arg2:
                revert with 0, 17
            balanceOf[arg1].field_0 += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor10[address(arg1)]:
                if not uint8(stor9.field_0):
                    if arg2 < 0:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)].field_0 < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                else:
                    if pairAddress == msg.sender:
                        if arg2 < 0:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)].field_0 < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    else:
                        if stor7:
                            if arg2 < 0:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)].field_0 < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        else:
                            stor7 = 1
                            if balanceOf[this.address].field_0 < sub_7c32b610:
                                stor7 = 0
                                if arg2 < 0:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            else:
                                mem[128] = this.address
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not routerAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                                emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_1
                                idx = 0
                                s = ceil32(return_data.size) + 388
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not routerAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                                emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 0, 0, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                stor7 = 0
                                if arg2 < 0:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)].field_0 < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                ('ge', ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0)))), ('param', 'arg2'))
                balanceOf[address(msg.sender)].field_0 -= arg2
                if balanceOf[arg1].field_0 > !arg2:
                    revert with 0, 17
                balanceOf[arg1].field_0 += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not uint8(stor9.field_0):
                    if arg2 < arg2 * sub_3487f049 / 100:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * sub_3487f049 / 100):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * sub_3487f049 / 100)
                    if balanceOf[arg1].field_0 > !(arg2 - (arg2 * sub_3487f049 / 100)):
                        revert with 0, 17
                    balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 * sub_3487f049 / 100)
                    emit Transfer((arg2 - (arg2 * sub_3487f049 / 100)), msg.sender, arg1);
                    if arg2 * sub_3487f049 / 100:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)].field_0 < arg2 * sub_3487f049 / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)].field_0 -= arg2 * sub_3487f049 / 100
                        if balanceOf[this.address].field_0 > !(arg2 * sub_3487f049 / 100):
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg2 * sub_3487f049 / 100
                        emit Transfer((arg2 * sub_3487f049 / 100), msg.sender, this.address);
                else:
                    if pairAddress == msg.sender:
                        if arg2 < arg2 * sub_3487f049 / 100:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * sub_3487f049 / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * sub_3487f049 / 100)
                        if balanceOf[arg1].field_0 > !(arg2 - (arg2 * sub_3487f049 / 100)):
                            revert with 0, 17
                        balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 * sub_3487f049 / 100)
                        emit Transfer((arg2 - (arg2 * sub_3487f049 / 100)), msg.sender, arg1);
                        if arg2 * sub_3487f049 / 100:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)].field_0 < arg2 * sub_3487f049 / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)].field_0 -= arg2 * sub_3487f049 / 100
                            if balanceOf[this.address].field_0 > !(arg2 * sub_3487f049 / 100):
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg2 * sub_3487f049 / 100
                            emit Transfer((arg2 * sub_3487f049 / 100), msg.sender, this.address);
                    else:
                        if stor7:
                            if arg2 < arg2 * sub_3487f049 / 100:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * sub_3487f049 / 100):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * sub_3487f049 / 100)
                            if balanceOf[arg1].field_0 > !(arg2 - (arg2 * sub_3487f049 / 100)):
                                revert with 0, 17
                            balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 * sub_3487f049 / 100)
                            emit Transfer((arg2 - (arg2 * sub_3487f049 / 100)), msg.sender, arg1);
                            if arg2 * sub_3487f049 / 100:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)].field_0 < arg2 * sub_3487f049 / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 -= arg2 * sub_3487f049 / 100
                                if balanceOf[this.address].field_0 > !(arg2 * sub_3487f049 / 100):
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg2 * sub_3487f049 / 100
                                emit Transfer((arg2 * sub_3487f049 / 100), msg.sender, this.address);
                        else:
                            stor7 = 1
                            if balanceOf[this.address].field_0 < sub_7c32b610:
                                stor7 = 0
                                if arg2 < arg2 * sub_3487f049 / 100:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * sub_3487f049 / 100):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * sub_3487f049 / 100)
                                if balanceOf[arg1].field_0 > !(arg2 - (arg2 * sub_3487f049 / 100)):
                                    revert with 0, 17
                                balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 * sub_3487f049 / 100)
                                emit Transfer((arg2 - (arg2 * sub_3487f049 / 100)), msg.sender, arg1);
                                if arg2 * sub_3487f049 / 100:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)].field_0 < arg2 * sub_3487f049 / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2 * sub_3487f049 / 100
                                    if balanceOf[this.address].field_0 > !(arg2 * sub_3487f049 / 100):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 += arg2 * sub_3487f049 / 100
                                    emit Transfer((arg2 * sub_3487f049 / 100), msg.sender, this.address);
                            else:
                                mem[128] = this.address
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not routerAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                                emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_1
                                idx = 0
                                s = ceil32(return_data.size) + 388
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not routerAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                                emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 0, 0, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                stor7 = 0
                                if arg2 < arg2 * sub_3487f049 / 100:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)].field_0 < arg2 - (arg2 * sub_3487f049 / 100):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 * sub_3487f049 / 100)
                                if balanceOf[arg1].field_0 > !(arg2 - (arg2 * sub_3487f049 / 100)):
                                    revert with 0, 17
                                balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 * sub_3487f049 / 100)
                                emit Transfer((arg2 - (arg2 * sub_3487f049 / 100)), msg.sender, arg1);
                                if arg2 * sub_3487f049 / 100:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)].field_0 < arg2 * sub_3487f049 / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)].field_0 -= arg2 * sub_3487f049 / 100
                                    if balanceOf[this.address].field_0 > !(arg2 * sub_3487f049 / 100):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 += arg2 * sub_3487f049 / 100
                                    emit Transfer((arg2 * sub_3487f049 / 100), msg.sender, this.address);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor10[address(arg1)]:
        if not stor10[address(arg2)]:
            if not uint8(stor9.field_8):
                revert with 0, 'Trading not started yet'
    if pairAddress != arg2:
        Mask(240, 0, stor9.field_16) = sub_fa1ab85e
    else:
        Mask(240, 0, stor9.field_16) = sub_fee638ab
    if arg3 and sub_3487f049 > -1 / arg3:
        revert with 0, 17
    if stor7:
        if not uint8(stor9.field_0):
            if arg3 < 0:
                revert with 0, 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)].field_0 < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)].field_0 -= arg3
            if balanceOf[arg2].field_0 > !arg3:
                revert with 0, 17
            balanceOf[arg2].field_0 += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if pairAddress == arg1:
                if arg3 < 0:
                    revert with 0, 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[arg2].field_0 > !arg3:
                    revert with 0, 17
                balanceOf[arg2].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if stor7:
                    if arg3 < 0:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)].field_0 < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)].field_0 -= arg3
                    if balanceOf[arg2].field_0 > !arg3:
                        revert with 0, 17
                    balanceOf[arg2].field_0 += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    stor7 = 1
                    if balanceOf[this.address].field_0 < sub_7c32b610:
                        stor7 = 0
                        if arg3 < 0:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)].field_0 < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[arg2].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[arg2].field_0 += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        mem[128] = this.address
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.WETH() with:
                                gas gas_remaining wei
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[160] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not routerAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                        emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_1
                        idx = 0
                        s = ceil32(return_data.size) + 388
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not routerAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                        emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 0, 0, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        stor7 = 0
                        if arg3 < 0:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)].field_0 < arg3:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[arg2].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[arg2].field_0 += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
    else:
        if stor10[address(arg1)]:
            if not uint8(stor9.field_0):
                if arg3 < 0:
                    revert with 0, 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)].field_0 < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[arg2].field_0 > !arg3:
                    revert with 0, 17
                balanceOf[arg2].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if pairAddress == arg1:
                    if arg3 < 0:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)].field_0 < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)].field_0 -= arg3
                    if balanceOf[arg2].field_0 > !arg3:
                        revert with 0, 17
                    balanceOf[arg2].field_0 += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if stor7:
                        if arg3 < 0:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)].field_0 < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[arg2].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[arg2].field_0 += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        stor7 = 1
                        if balanceOf[this.address].field_0 < sub_7c32b610:
                            stor7 = 0
                            if arg3 < 0:
                                revert with 0, 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[arg2].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[arg2].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if allowance[address(arg1)][msg.sender] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            mem[128] = this.address
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not routerAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                            emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_1
                            idx = 0
                            s = ceil32(return_data.size) + 388
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not routerAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                            emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args this.address, 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 0, 0, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            stor7 = 0
                            if arg3 < 0:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[arg2].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[arg2].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if allowance[address(arg1)][msg.sender] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: approve to the zero address'
        else:
            if stor10[address(arg2)]:
                if not uint8(stor9.field_0):
                    if arg3 < 0:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)].field_0 < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)].field_0 -= arg3
                    if balanceOf[arg2].field_0 > !arg3:
                        revert with 0, 17
                    balanceOf[arg2].field_0 += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if pairAddress == arg1:
                        if arg3 < 0:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)].field_0 < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[arg2].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[arg2].field_0 += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if stor7:
                            if arg3 < 0:
                                revert with 0, 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)].field_0 < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[arg2].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[arg2].field_0 += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if allowance[address(arg1)][msg.sender] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            stor7 = 1
                            if balanceOf[this.address].field_0 < sub_7c32b610:
                                stor7 = 0
                                if arg3 < 0:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[arg2].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if allowance[address(arg1)][msg.sender] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                mem[128] = this.address
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not routerAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                                emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_1
                                idx = 0
                                s = ceil32(return_data.size) + 388
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not routerAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                                emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 0, 0, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                stor7 = 0
                                if arg3 < 0:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)].field_0 < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 -= arg3
                                if balanceOf[arg2].field_0 > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2].field_0 += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if allowance[address(arg1)][msg.sender] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address'
            else:
                if not uint8(stor9.field_0):
                    if arg3 < arg3 * sub_3487f049 / 100:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * sub_3487f049 / 100):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * sub_3487f049 / 100)
                    if balanceOf[arg2].field_0 > !(arg3 - (arg3 * sub_3487f049 / 100)):
                        revert with 0, 17
                    balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (arg3 * sub_3487f049 / 100)
                    emit Transfer((arg3 - (arg3 * sub_3487f049 / 100)), arg1, arg2);
                    if arg3 * sub_3487f049 / 100:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)].field_0 < arg3 * sub_3487f049 / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)].field_0 -= arg3 * sub_3487f049 / 100
                        if balanceOf[this.address].field_0 > !(arg3 * sub_3487f049 / 100):
                            revert with 0, 17
                        balanceOf[this.address].field_0 += arg3 * sub_3487f049 / 100
                        emit Transfer((arg3 * sub_3487f049 / 100), arg1, this.address);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if pairAddress == arg1:
                        if arg3 < arg3 * sub_3487f049 / 100:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * sub_3487f049 / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * sub_3487f049 / 100)
                        if balanceOf[arg2].field_0 > !(arg3 - (arg3 * sub_3487f049 / 100)):
                            revert with 0, 17
                        balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (arg3 * sub_3487f049 / 100)
                        emit Transfer((arg3 - (arg3 * sub_3487f049 / 100)), arg1, arg2);
                        if arg3 * sub_3487f049 / 100:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)].field_0 < arg3 * sub_3487f049 / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)].field_0 -= arg3 * sub_3487f049 / 100
                            if balanceOf[this.address].field_0 > !(arg3 * sub_3487f049 / 100):
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg3 * sub_3487f049 / 100
                            emit Transfer((arg3 * sub_3487f049 / 100), arg1, this.address);
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if stor7:
                            if arg3 < arg3 * sub_3487f049 / 100:
                                revert with 0, 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * sub_3487f049 / 100):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * sub_3487f049 / 100)
                            if balanceOf[arg2].field_0 > !(arg3 - (arg3 * sub_3487f049 / 100)):
                                revert with 0, 17
                            balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (arg3 * sub_3487f049 / 100)
                            emit Transfer((arg3 - (arg3 * sub_3487f049 / 100)), arg1, arg2);
                            if arg3 * sub_3487f049 / 100:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)].field_0 < arg3 * sub_3487f049 / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 -= arg3 * sub_3487f049 / 100
                                if balanceOf[this.address].field_0 > !(arg3 * sub_3487f049 / 100):
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg3 * sub_3487f049 / 100
                                emit Transfer((arg3 * sub_3487f049 / 100), arg1, this.address);
                            if allowance[address(arg1)][msg.sender] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            stor7 = 1
                            if balanceOf[this.address].field_0 < sub_7c32b610:
                                stor7 = 0
                                if arg3 < arg3 * sub_3487f049 / 100:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * sub_3487f049 / 100):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * sub_3487f049 / 100)
                                if balanceOf[arg2].field_0 > !(arg3 - (arg3 * sub_3487f049 / 100)):
                                    revert with 0, 17
                                balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (arg3 * sub_3487f049 / 100)
                                emit Transfer((arg3 - (arg3 * sub_3487f049 / 100)), arg1, arg2);
                                if arg3 * sub_3487f049 / 100:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)].field_0 < arg3 * sub_3487f049 / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)].field_0 -= arg3 * sub_3487f049 / 100
                                    if balanceOf[this.address].field_0 > !(arg3 * sub_3487f049 / 100):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 += arg3 * sub_3487f049 / 100
                                    emit Transfer((arg3 * sub_3487f049 / 100), arg1, this.address);
                                if allowance[address(arg1)][msg.sender] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                mem[128] = this.address
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not routerAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                                emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_1
                                idx = 0
                                s = ceil32(return_data.size) + 388
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not routerAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor6] = balanceOf[this.address].field_1
                                emit Approval(balanceOf[this.address].field_1, this.address, routerAddress);
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 0, 0, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                stor7 = 0
                                if arg3 < arg3 * sub_3487f049 / 100:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)].field_0 < arg3 - (arg3 * sub_3487f049 / 100):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 * sub_3487f049 / 100)
                                if balanceOf[arg2].field_0 > !(arg3 - (arg3 * sub_3487f049 / 100)):
                                    revert with 0, 17
                                balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (arg3 * sub_3487f049 / 100)
                                emit Transfer((arg3 - (arg3 * sub_3487f049 / 100)), arg1, arg2);
                                if arg3 * sub_3487f049 / 100:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)].field_0 < arg3 * sub_3487f049 / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)].field_0 -= arg3 * sub_3487f049 / 100
                                    if balanceOf[this.address].field_0 > !(arg3 * sub_3487f049 / 100):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 += arg3 * sub_3487f049 / 100
                                    emit Transfer((arg3 * sub_3487f049 / 100), arg1, this.address);
                                if allowance[address(arg1)][msg.sender] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
