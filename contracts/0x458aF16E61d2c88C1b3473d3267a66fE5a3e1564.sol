contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 9


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address vaultAddress;
uint256 stor7;
uint256 stor8;
uint256 stor9; offset 1
uint256 stor9;
uint256 stor10;
uint8 stor11;
address stor11;
address autoLiquidityReceiverAddress; offset 8
address marketingFeeReceiverAddress;
mapping of uint8 stor13;
uint8 sub_bb6c6d31;
mapping of uint8 stor15;
uint8 stor16;
uint256 swapThreshold;
address stor18;
address stor19;
address routerAddress;
address pairAddress;
address stor22;
address distributorAddress;
uint256 stor24;
uint8 stor25;
uint256 stor26;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function routerAddress() {
    return routerAddress
}

function swapEnabled() {
    return bool(stor16)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function distributorAddress() {
    return distributorAddress
}

function feesEnabled() {
    return bool(uint8(stor11.field_0))
}

function pair() {
    return pairAddress
}

function sub_bb6c6d31(?) {
    return bool(sub_bb6c6d31)
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function vault() {
    return vaultAddress
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

function sub_a92d9cff(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = address(arg1)
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
    return 1
}

function setDividendsEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bb6c6d31 = uint8(arg1)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 750000
    stor24 = arg1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = uint8(arg2)
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function Sweep() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDistributor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if vaultAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VaultOwned: caller is not the Vault'
    distributorAddress = arg1
    stor22 = distributorAddress
}

function sub_fa97f677(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 99:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Target liquidity percentage can't be 100 or more'
    stor26 = arg1
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

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swap threshold must be greater than 0'
    stor16 = uint8(arg1)
    swapThreshold = arg2
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

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if vaultAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VaultOwned: caller is not the Vault'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function setPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pairAddress = arg1
    stor15[stor21] = 1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not pairAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][stor21] = totalSupply
    emit Approval(totalSupply, msg.sender, pairAddress);
}

function sub_ecad202b(?) {
    require calldata.size - 4 >= 128
    require arg1 == bool(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor11.field_0) = uint8(bool(arg1))
    stor8 = arg2
    uint256(stor9.field_0) = arg3
    stor10 = arg4
    if stor8 > -uint256(stor9.field_0) - 1:
        revert with 'NH{q', 17
    if stor8 + uint256(stor9.field_0) > -stor10 - 1:
        revert with 'NH{q', 17
    stor7 = stor8 + uint256(stor9.field_0) + stor10
    if stor7 >= 25:
        revert with 0, 'Fees too high'
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
    stor15[stor20] = 1
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not routerAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor20] = totalSupply
    emit Approval(totalSupply, this.address, routerAddress);
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

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != this.address
    require arg1 != pairAddress
    stor15[address(arg1)] = uint8(arg2)
    require ext_code.size(stor22)
    if not arg2:
        call stor22.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor22.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0xfe45524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28] >> 32, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function _burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0xfe45524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28] >> 32, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor25:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not stor16:
            if not uint8(stor11.field_0):
                if sub_bb6c6d31:
                    require ext_code.size(stor22)
                    if not stor15[address(msg.sender)]:
                        call stor22.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                    if not stor15[address(arg1)]:
                        call stor22.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    call stor22.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args stor24
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor13[address(msg.sender)]:
                    if sub_bb6c6d31:
                        require ext_code.size(stor22)
                        if not stor15[address(msg.sender)]:
                            call stor22.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor15[address(arg1)]:
                            call stor22.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call stor22.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor24
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 and stor7 > -1 / arg2:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 * stor7 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2 * stor7 / 100
                    if balanceOf[address(this.address)] > -(arg2 * stor7 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += arg2 * stor7 / 100
                    emit Transfer((arg2 * stor7 / 100), msg.sender, this.address);
                    if arg2 < arg2 * stor7 / 100:
                        revert with 'NH{q', 17
                    if sub_bb6c6d31:
                        require ext_code.size(stor22)
                        if not stor15[address(msg.sender)]:
                            call stor22.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor15[address(arg1)]:
                            call stor22.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call stor22.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor24
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor7 / 100):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor7 / 100)
                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor7 / 100) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor7 / 100)
                    emit Transfer((arg2 - (arg2 * stor7 / 100)), msg.sender, arg1);
        else:
            if arg1 == pairAddress:
                if msg.sender == pairAddress:
                    if not uint8(stor11.field_0):
                        if sub_bb6c6d31:
                            require ext_code.size(stor22)
                            if not stor15[address(msg.sender)]:
                                call stor22.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor15[address(arg1)]:
                                call stor22.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call stor22.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args stor24
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor13[address(msg.sender)]:
                            if sub_bb6c6d31:
                                require ext_code.size(stor22)
                                if not stor15[address(msg.sender)]:
                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor15[address(arg1)]:
                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call stor22.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor24
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and stor7 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 * stor7 / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * stor7 / 100
                            if balanceOf[address(this.address)] > -(arg2 * stor7 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 * stor7 / 100
                            emit Transfer((arg2 * stor7 / 100), msg.sender, this.address);
                            if arg2 < arg2 * stor7 / 100:
                                revert with 'NH{q', 17
                            if sub_bb6c6d31:
                                require ext_code.size(stor22)
                                if not stor15[address(msg.sender)]:
                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor15[address(arg1)]:
                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call stor22.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor24
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor7 / 100):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor7 / 100)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor7 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor7 / 100)
                            emit Transfer((arg2 - (arg2 * stor7 / 100)), msg.sender, arg1);
                else:
                    if balanceOf[address(this.address)] < swapThreshold:
                        if not uint8(stor11.field_0):
                            if sub_bb6c6d31:
                                require ext_code.size(stor22)
                                if not stor15[address(msg.sender)]:
                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor15[address(arg1)]:
                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call stor22.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor24
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor13[address(msg.sender)]:
                                if sub_bb6c6d31:
                                    require ext_code.size(stor22)
                                    if not stor15[address(msg.sender)]:
                                        call stor22.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor15[address(arg1)]:
                                        call stor22.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor22.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor24
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and stor7 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 * stor7 / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2 * stor7 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor7 / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2 * stor7 / 100
                                emit Transfer((arg2 * stor7 / 100), msg.sender, this.address);
                                if arg2 < arg2 * stor7 / 100:
                                    revert with 'NH{q', 17
                                if sub_bb6c6d31:
                                    require ext_code.size(stor22)
                                    if not stor15[address(msg.sender)]:
                                        call stor22.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor15[address(arg1)]:
                                        call stor22.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor22.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor24
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor7 / 100):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor7 / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor7 / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor7 / 100)
                                emit Transfer((arg2 - (arg2 * stor7 / 100)), msg.sender, arg1);
                    else:
                        if not msg.sender:
                            if not uint8(stor11.field_0):
                                if sub_bb6c6d31:
                                    require ext_code.size(stor22)
                                    if not stor15[address(msg.sender)]:
                                        call stor22.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor15[address(arg1)]:
                                        call stor22.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor22.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor24
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(msg.sender)]:
                                    if sub_bb6c6d31:
                                        require ext_code.size(stor22)
                                        if not stor15[address(msg.sender)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor15[address(arg1)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call stor22.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor24
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and stor7 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 * stor7 / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2 * stor7 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor7 / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg2 * stor7 / 100
                                    emit Transfer((arg2 * stor7 / 100), msg.sender, this.address);
                                    if arg2 < arg2 * stor7 / 100:
                                        revert with 'NH{q', 17
                                    if sub_bb6c6d31:
                                        require ext_code.size(stor22)
                                        if not stor15[address(msg.sender)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor15[address(arg1)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call stor22.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor24
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor7 / 100):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor7 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor7 / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor7 / 100)
                                    emit Transfer((arg2 - (arg2 * stor7 / 100)), msg.sender, arg1);
                        else:
                            if not arg1:
                                if not uint8(stor11.field_0):
                                    if sub_bb6c6d31:
                                        require ext_code.size(stor22)
                                        if not stor15[address(msg.sender)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor15[address(arg1)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call stor22.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor24
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(msg.sender)]:
                                        if sub_bb6c6d31:
                                            require ext_code.size(stor22)
                                            if not stor15[address(msg.sender)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor15[address(arg1)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor22.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor24
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and stor7 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * stor7 / 100:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * stor7 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor7 / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg2 * stor7 / 100
                                        emit Transfer((arg2 * stor7 / 100), msg.sender, this.address);
                                        if arg2 < arg2 * stor7 / 100:
                                            revert with 'NH{q', 17
                                        if sub_bb6c6d31:
                                            require ext_code.size(stor22)
                                            if not stor15[address(msg.sender)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor15[address(arg1)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor22.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor24
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor7 / 100):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor7 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor7 / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor7 / 100)
                                        emit Transfer((arg2 - (arg2 * stor7 / 100)), msg.sender, arg1);
                            else:
                                stor25 = 1
                                if balanceOf[stor21] and 200 > -1 / balanceOf[stor21]:
                                    revert with 'NH{q', 17
                                if not totalSupply:
                                    revert with 'NH{q', 18
                                if 200 * balanceOf[stor21] / totalSupply > stor26:
                                    if swapThreshold and 0 > -1 / swapThreshold:
                                        revert with 'NH{q', 17
                                    if not stor7:
                                        revert with 'NH{q', 18
                                    if swapThreshold < 0 / stor7 / 2:
                                        revert with 'NH{q', 17
                                    mem[128] = this.address
                                    if not stor18:
                                        require ext_code.size(stor19)
                                        staticcall stor19.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = swapThreshold - (0 / stor7 / 2)
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor19)
                                        call stor19.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args swapThreshold - (0 / stor7 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        mem[160] = stor18
                                        require ext_code.size(stor19)
                                        staticcall stor19.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = swapThreshold - (0 / stor7 / 2)
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 420
                                        while idx < 3:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor19)
                                        call stor19.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args swapThreshold - (0 / stor7 / 2), 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 'NH{q', 17
                                    if stor7 < 0:
                                        revert with 'NH{q', 17
                                    if not stor7:
                                        revert with 'NH{q', 18
                                    if False and stor8 > 0:
                                        revert with 'NH{q', 17
                                    if not stor7:
                                        revert with 'NH{q', 18
                                    if False and stor10 > 0:
                                        revert with 'NH{q', 17
                                    if not stor7:
                                        revert with 'NH{q', 18
                                    require ext_code.size(stor22)
                                    call stor22.deposit() with:
                                       value 0 / stor7 wei
                                         gas gas_remaining wei
                                    call marketingFeeReceiverAddress with:
                                       value 0 / stor7 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / stor7 / 2 > 0:
                                        require ext_code.size(stor19)
                                        call stor19.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / stor7 / 2 wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, 0 / stor7), 0, 0, address(stor11.field_0), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(Mask(255, 1, 0 / stor7), 0 / stor7 / 2);
                                else:
                                    if swapThreshold and uint256(stor9.field_0) > -1 / swapThreshold:
                                        revert with 'NH{q', 17
                                    if not stor7:
                                        revert with 'NH{q', 18
                                    if swapThreshold < swapThreshold * uint256(stor9.field_0) / stor7 / 2:
                                        revert with 'NH{q', 17
                                    mem[128] = this.address
                                    if not stor18:
                                        require ext_code.size(stor19)
                                        staticcall stor19.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = swapThreshold - (swapThreshold * uint256(stor9.field_0) / stor7 / 2)
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor19)
                                        call stor19.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args swapThreshold - (swapThreshold * uint256(stor9.field_0) / stor7 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        mem[160] = stor18
                                        require ext_code.size(stor19)
                                        staticcall stor19.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = swapThreshold - (swapThreshold * uint256(stor9.field_0) / stor7 / 2)
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 420
                                        while idx < 3:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor19)
                                        call stor19.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args swapThreshold - (swapThreshold * uint256(stor9.field_0) / stor7 / 2), 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 'NH{q', 17
                                    if stor7 < uint255(stor9.field_1):
                                        revert with 'NH{q', 17
                                    if False and uint256(stor9.field_0) > 0:
                                        revert with 'NH{q', 17
                                    if not stor7 - uint255(stor9.field_1):
                                        revert with 'NH{q', 18
                                    if False and stor8 > 0:
                                        revert with 'NH{q', 17
                                    if not stor7 - uint255(stor9.field_1):
                                        revert with 'NH{q', 18
                                    if False and stor10 > 0:
                                        revert with 'NH{q', 17
                                    if not stor7 - uint255(stor9.field_1):
                                        revert with 'NH{q', 18
                                    require ext_code.size(stor22)
                                    call stor22.deposit() with:
                                       value 0 / stor7 - uint255(stor9.field_1) wei
                                         gas gas_remaining wei
                                    call marketingFeeReceiverAddress with:
                                       value 0 / stor7 - uint255(stor9.field_1) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if swapThreshold * uint256(stor9.field_0) / stor7 / 2 > 0:
                                        require ext_code.size(stor19)
                                        call stor19.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / stor7 - uint255(stor9.field_1) / 2 wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, swapThreshold * uint256(stor9.field_0) / stor7), 0, 0, address(stor11.field_0), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(Mask(255, 1, 0 / stor7 - uint255(stor9.field_1)), swapThreshold * uint256(stor9.field_0) / stor7 / 2);
                                stor25 = 0
                                if not uint8(stor11.field_0):
                                    if sub_bb6c6d31:
                                        require ext_code.size(stor22)
                                        if not stor15[address(msg.sender)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor15[address(arg1)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call stor22.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor24
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(msg.sender)]:
                                        if sub_bb6c6d31:
                                            require ext_code.size(stor22)
                                            if not stor15[address(msg.sender)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor15[address(arg1)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor22.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor24
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and stor7 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * stor7 / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * stor7 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor7 / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg2 * stor7 / 100
                                        emit Transfer((arg2 * stor7 / 100), msg.sender, this.address);
                                        if arg2 < arg2 * stor7 / 100:
                                            revert with 'NH{q', 17
                                        if sub_bb6c6d31:
                                            require ext_code.size(stor22)
                                            if not stor15[address(msg.sender)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor15[address(arg1)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor22.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor24
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor7 / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor7 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor7 / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor7 / 100)
                                        emit Transfer((arg2 - (arg2 * stor7 / 100)), msg.sender, arg1);
            else:
                if arg1 != routerAddress:
                    if not uint8(stor11.field_0):
                        if sub_bb6c6d31:
                            require ext_code.size(stor22)
                            if not stor15[address(msg.sender)]:
                                call stor22.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor15[address(arg1)]:
                                call stor22.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call stor22.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args stor24
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor13[address(msg.sender)]:
                            if sub_bb6c6d31:
                                require ext_code.size(stor22)
                                if not stor15[address(msg.sender)]:
                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor15[address(arg1)]:
                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call stor22.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor24
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and stor7 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 * stor7 / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * stor7 / 100
                            if balanceOf[address(this.address)] > -(arg2 * stor7 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 * stor7 / 100
                            emit Transfer((arg2 * stor7 / 100), msg.sender, this.address);
                            if arg2 < arg2 * stor7 / 100:
                                revert with 'NH{q', 17
                            if sub_bb6c6d31:
                                require ext_code.size(stor22)
                                if not stor15[address(msg.sender)]:
                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor15[address(arg1)]:
                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call stor22.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor24
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor7 / 100):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor7 / 100)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor7 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor7 / 100)
                            emit Transfer((arg2 - (arg2 * stor7 / 100)), msg.sender, arg1);
                else:
                    if msg.sender == pairAddress:
                        if not uint8(stor11.field_0):
                            if sub_bb6c6d31:
                                require ext_code.size(stor22)
                                if not stor15[address(msg.sender)]:
                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor15[address(arg1)]:
                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call stor22.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor24
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor13[address(msg.sender)]:
                                if sub_bb6c6d31:
                                    require ext_code.size(stor22)
                                    if not stor15[address(msg.sender)]:
                                        call stor22.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor15[address(arg1)]:
                                        call stor22.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor22.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor24
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and stor7 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 * stor7 / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2 * stor7 / 100
                                if balanceOf[address(this.address)] > -(arg2 * stor7 / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2 * stor7 / 100
                                emit Transfer((arg2 * stor7 / 100), msg.sender, this.address);
                                if arg2 < arg2 * stor7 / 100:
                                    revert with 'NH{q', 17
                                if sub_bb6c6d31:
                                    require ext_code.size(stor22)
                                    if not stor15[address(msg.sender)]:
                                        call stor22.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor15[address(arg1)]:
                                        call stor22.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor22.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor24
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor7 / 100):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor7 / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * stor7 / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor7 / 100)
                                emit Transfer((arg2 - (arg2 * stor7 / 100)), msg.sender, arg1);
                    else:
                        if balanceOf[address(this.address)] < swapThreshold:
                            if not uint8(stor11.field_0):
                                if sub_bb6c6d31:
                                    require ext_code.size(stor22)
                                    if not stor15[address(msg.sender)]:
                                        call stor22.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor15[address(arg1)]:
                                        call stor22.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call stor22.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor24
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor13[address(msg.sender)]:
                                    if sub_bb6c6d31:
                                        require ext_code.size(stor22)
                                        if not stor15[address(msg.sender)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor15[address(arg1)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call stor22.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor24
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and stor7 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 * stor7 / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2 * stor7 / 100
                                    if balanceOf[address(this.address)] > -(arg2 * stor7 / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg2 * stor7 / 100
                                    emit Transfer((arg2 * stor7 / 100), msg.sender, this.address);
                                    if arg2 < arg2 * stor7 / 100:
                                        revert with 'NH{q', 17
                                    if sub_bb6c6d31:
                                        require ext_code.size(stor22)
                                        if not stor15[address(msg.sender)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor15[address(arg1)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call stor22.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor24
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor7 / 100):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor7 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * stor7 / 100) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor7 / 100)
                                    emit Transfer((arg2 - (arg2 * stor7 / 100)), msg.sender, arg1);
                        else:
                            if not msg.sender:
                                if not uint8(stor11.field_0):
                                    if sub_bb6c6d31:
                                        require ext_code.size(stor22)
                                        if not stor15[address(msg.sender)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor15[address(arg1)]:
                                            call stor22.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call stor22.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor24
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor13[address(msg.sender)]:
                                        if sub_bb6c6d31:
                                            require ext_code.size(stor22)
                                            if not stor15[address(msg.sender)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor15[address(arg1)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor22.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor24
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and stor7 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * stor7 / 100:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * stor7 / 100
                                        if balanceOf[address(this.address)] > -(arg2 * stor7 / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg2 * stor7 / 100
                                        emit Transfer((arg2 * stor7 / 100), msg.sender, this.address);
                                        if arg2 < arg2 * stor7 / 100:
                                            revert with 'NH{q', 17
                                        if sub_bb6c6d31:
                                            require ext_code.size(stor22)
                                            if not stor15[address(msg.sender)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor15[address(arg1)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor22.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor24
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor7 / 100):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor7 / 100)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * stor7 / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor7 / 100)
                                        emit Transfer((arg2 - (arg2 * stor7 / 100)), msg.sender, arg1);
                            else:
                                if not arg1:
                                    if not uint8(stor11.field_0):
                                        if sub_bb6c6d31:
                                            require ext_code.size(stor22)
                                            if not stor15[address(msg.sender)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor15[address(arg1)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor22.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor24
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if sub_bb6c6d31:
                                                require ext_code.size(stor22)
                                                if not stor15[address(msg.sender)]:
                                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor15[address(arg1)]:
                                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call stor22.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args stor24
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and stor7 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * stor7 / 100:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * stor7 / 100
                                            if balanceOf[address(this.address)] > -(arg2 * stor7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg2 * stor7 / 100
                                            emit Transfer((arg2 * stor7 / 100), msg.sender, this.address);
                                            if arg2 < arg2 * stor7 / 100:
                                                revert with 'NH{q', 17
                                            if sub_bb6c6d31:
                                                require ext_code.size(stor22)
                                                if not stor15[address(msg.sender)]:
                                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor15[address(arg1)]:
                                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call stor22.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args stor24
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor7 / 100):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor7 / 100)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor7 / 100)
                                            emit Transfer((arg2 - (arg2 * stor7 / 100)), msg.sender, arg1);
                                else:
                                    stor25 = 1
                                    if balanceOf[stor21] and 200 > -1 / balanceOf[stor21]:
                                        revert with 'NH{q', 17
                                    if not totalSupply:
                                        revert with 'NH{q', 18
                                    if 200 * balanceOf[stor21] / totalSupply > stor26:
                                        if swapThreshold and 0 > -1 / swapThreshold:
                                            revert with 'NH{q', 17
                                        if not stor7:
                                            revert with 'NH{q', 18
                                        if swapThreshold < 0 / stor7 / 2:
                                            revert with 'NH{q', 17
                                        mem[128] = this.address
                                        if not stor18:
                                            require ext_code.size(stor19)
                                            staticcall stor19.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = swapThreshold - (0 / stor7 / 2)
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor19)
                                            call stor19.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args swapThreshold - (0 / stor7 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            mem[160] = stor18
                                            require ext_code.size(stor19)
                                            staticcall stor19.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = swapThreshold - (0 / stor7 / 2)
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 420
                                            while idx < 3:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor19)
                                            call stor19.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args swapThreshold - (0 / stor7 / 2), 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 'NH{q', 17
                                        if stor7 < 0:
                                            revert with 'NH{q', 17
                                        if not stor7:
                                            revert with 'NH{q', 18
                                        if False and stor8 > 0:
                                            revert with 'NH{q', 17
                                        if not stor7:
                                            revert with 'NH{q', 18
                                        if False and stor10 > 0:
                                            revert with 'NH{q', 17
                                        if not stor7:
                                            revert with 'NH{q', 18
                                        require ext_code.size(stor22)
                                        call stor22.deposit() with:
                                           value 0 / stor7 wei
                                             gas gas_remaining wei
                                        call marketingFeeReceiverAddress with:
                                           value 0 / stor7 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if 0 / stor7 / 2 > 0:
                                            require ext_code.size(stor19)
                                            call stor19.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / stor7 / 2 wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, 0 / stor7), 0, 0, address(stor11.field_0), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_call.return_data[64] == ext_call.return_data[64]
                                            emit AutoLiquify(Mask(255, 1, 0 / stor7), 0 / stor7 / 2);
                                    else:
                                        if swapThreshold and uint256(stor9.field_0) > -1 / swapThreshold:
                                            revert with 'NH{q', 17
                                        if not stor7:
                                            revert with 'NH{q', 18
                                        if swapThreshold < swapThreshold * uint256(stor9.field_0) / stor7 / 2:
                                            revert with 'NH{q', 17
                                        mem[128] = this.address
                                        if not stor18:
                                            require ext_code.size(stor19)
                                            staticcall stor19.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = swapThreshold - (swapThreshold * uint256(stor9.field_0) / stor7 / 2)
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor19)
                                            call stor19.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args swapThreshold - (swapThreshold * uint256(stor9.field_0) / stor7 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            mem[160] = stor18
                                            require ext_code.size(stor19)
                                            staticcall stor19.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = swapThreshold - (swapThreshold * uint256(stor9.field_0) / stor7 / 2)
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 420
                                            while idx < 3:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor19)
                                            call stor19.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args swapThreshold - (swapThreshold * uint256(stor9.field_0) / stor7 / 2), 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 'NH{q', 17
                                        if stor7 < uint255(stor9.field_1):
                                            revert with 'NH{q', 17
                                        if False and uint256(stor9.field_0) > 0:
                                            revert with 'NH{q', 17
                                        if not stor7 - uint255(stor9.field_1):
                                            revert with 'NH{q', 18
                                        if False and stor8 > 0:
                                            revert with 'NH{q', 17
                                        if not stor7 - uint255(stor9.field_1):
                                            revert with 'NH{q', 18
                                        if False and stor10 > 0:
                                            revert with 'NH{q', 17
                                        if not stor7 - uint255(stor9.field_1):
                                            revert with 'NH{q', 18
                                        require ext_code.size(stor22)
                                        call stor22.deposit() with:
                                           value 0 / stor7 - uint255(stor9.field_1) wei
                                             gas gas_remaining wei
                                        call marketingFeeReceiverAddress with:
                                           value 0 / stor7 - uint255(stor9.field_1) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if swapThreshold * uint256(stor9.field_0) / stor7 / 2 > 0:
                                            require ext_code.size(stor19)
                                            call stor19.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / stor7 - uint255(stor9.field_1) / 2 wei
                                                 gas gas_remaining wei
                                                args address(this.address), Mask(255, 1, swapThreshold * uint256(stor9.field_0) / stor7), 0, 0, address(stor11.field_0), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                            require ext_call.return_data[64] == ext_call.return_data[64]
                                            emit AutoLiquify(Mask(255, 1, 0 / stor7 - uint255(stor9.field_1)), swapThreshold * uint256(stor9.field_0) / stor7 / 2);
                                    stor25 = 0
                                    if not uint8(stor11.field_0):
                                        if sub_bb6c6d31:
                                            require ext_code.size(stor22)
                                            if not stor15[address(msg.sender)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor15[address(arg1)]:
                                                call stor22.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call stor22.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor24
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor13[address(msg.sender)]:
                                            if sub_bb6c6d31:
                                                require ext_code.size(stor22)
                                                if not stor15[address(msg.sender)]:
                                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor15[address(arg1)]:
                                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call stor22.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args stor24
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and stor7 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * stor7 / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * stor7 / 100
                                            if balanceOf[address(this.address)] > -(arg2 * stor7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg2 * stor7 / 100
                                            emit Transfer((arg2 * stor7 / 100), msg.sender, this.address);
                                            if arg2 < arg2 * stor7 / 100:
                                                revert with 'NH{q', 17
                                            if sub_bb6c6d31:
                                                require ext_code.size(stor22)
                                                if not stor15[address(msg.sender)]:
                                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor15[address(arg1)]:
                                                    call stor22.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call stor22.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args stor24
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * stor7 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor7 / 100)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * stor7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor7 / 100)
                                            emit Transfer((arg2 - (arg2 * stor7 / 100)), msg.sender, arg1);
    return 1
}



}
