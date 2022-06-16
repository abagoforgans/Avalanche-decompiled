contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - triggerTax()
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
uint8 stor5; offset 168
address owner; offset 8
uint256 initialSupply;
uint256 denominator;
uint256 swapThreshold;
uint256 sub_4a5bf273;
uint256 sub_721e6233;
uint256 sub_0abc8e7b;
uint256 sub_38843d84;
uint256 multiple;
uint8 sub_408323d4;
uint256 maxWalletAmount;
uint8 stor16;
mapping of uint8 stor17;
uint256 maxTxAmount;
uint8 sub_c2df7f67;
mapping of uint8 stor20;
mapping of uint8 stor21;
uint256 sub_55a7b677;
uint256 sub_42d0b0bc;
uint256 sub_248ba7ed;
uint256 sub_03b1b558;
mapping of uint8 stor26;
mapping of uint8 stor27;
mapping of uint256 sub_099aca7d;
mapping of uint256 sub_506e50ec;
mapping of address sub_ab47919a;
uint8 taxStatus;
address uniswapV2Router02Address; offset 8
address uniswapV2FactoryAddress;
address uniswapV2PairAddress;

function sub_03b1b558(?) {
    return sub_03b1b558
}

function swapThreshold() {
    return swapThreshold
}

function sub_099aca7d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_099aca7d[arg1[all]]
}

function sub_0abc8e7b(?) {
    return sub_0abc8e7b
}

function totalSupply() {
    return totalSupply
}

function taxStatus() {
    return bool(taxStatus)
}

function sub_248ba7ed(?) {
    return sub_248ba7ed
}

function excludeList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor27[arg1])
}

function decimals() {
    return decimals
}

function sub_32d20d2f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor17[arg1])
}

function initialSupply() {
    return initialSupply
}

function sub_38843d84(?) {
    return sub_38843d84
}

function sub_408323d4(?) {
    return bool(sub_408323d4)
}

function sub_42d0b0bc(?) {
    return sub_42d0b0bc
}

function multiple() {
    return multiple
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function sub_4a5bf273(?) {
    return sub_4a5bf273
}

function sub_506e50ec(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_506e50ec[arg1[all]]
}

function sub_55a7b677(?) {
    return sub_55a7b677
}

function uniswapV2Factory() {
    return uniswapV2FactoryAddress
}

function paused() {
    return bool(stor5)
}

function sub_607377b3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor20[arg1])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_721e6233(?) {
    return sub_721e6233
}

function maxTxAmount() {
    return maxTxAmount
}

function owner() {
    return owner
}

function denominator() {
    return denominator
}

function uniswapV2Router02() {
    return uniswapV2Router02Address
}

function maxWalletAmount() {
    return maxWalletAmount
}

function sub_ab47919a(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_ab47919a[arg1[all]]
}

function sub_c2df7f67(?) {
    return bool(sub_c2df7f67)
}

function isExcluded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor27[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function isPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[arg1])
}

function sub_f2aa8a58(?) {
    return bool(stor16)
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor26[arg1])
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor26[address(arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMultiple(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    multiple = arg1
}

function setDenominator(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    denominator = arg1
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    maxTxAmount = arg1
}

function setSwapThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    swapThreshold = arg1
}

function setMaxWalletAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    maxWalletAmount = arg1
}

function sub_482099d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    stor16 = uint8(bool(arg1))
}

function sub_c7a566e3(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    sub_408323d4 = uint8(bool(arg1))
}

function sub_dfb1a69c(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    sub_c2df7f67 = uint8(bool(arg1))
}

function setPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    stor21[address(arg1)] = uint8(arg2)
}

function sub_a4a1c0a8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    stor17[address(arg1)] = uint8(bool(arg2))
}

function sub_d035f7eb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    stor20[address(arg1)] = uint8(bool(arg2))
}

function enableTax() {
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    if taxStatus:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoinToken: Tax is already enabled'
    taxStatus = 1
}

function disableTax() {
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    if not taxStatus:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoinToken: Tax is already disabled'
    taxStatus = 0
}

function pause() {
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    if stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoinToken: Contract is already paused'
    stor5 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoinToken: Contract is not paused'
    stor5 = 0
    emit Unpaused(msg.sender);
}

function setBuyTax(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    sub_099aca7d[0] = arg1
    sub_099aca7d['marketing'] = arg2
    sub_099aca7d['liquidity'] = arg3
    sub_099aca7d['charity'] = arg4
}

function setSellTax(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    sub_506e50ec[0] = arg1
    sub_506e50ec['marketing'] = arg2
    sub_506e50ec['liquidity'] = arg3
    sub_506e50ec['charity'] = arg4
}

function exclude(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    if stor27[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoinToken: Account is already excluded'
    stor27[address(arg1)] = 1
}

function removeExclude(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    if not stor27[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoinToken: Account is not excluded'
    stor27[address(arg1)] = 0
}

function enableBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    if stor26[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoinToken: Account is already blacklisted'
    stor26[address(arg1)] = 1
}

function disableBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    if not stor26[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CoinToken: Account is not blacklisted'
    stor26[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setTaxWallets(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    sub_ab47919a[0] = arg1
    sub_ab47919a['marketing'] = arg2
    sub_ab47919a['liquidity'] = arg3
    sub_ab47919a['charity'] = arg4
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

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
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

function withdraw(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        if arg1 > eth.balance(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdraw: eth balance must be larger than amount.'
        call msg.sender with:
           value arg1 wei
             gas gas_remaining wei
    else:
        if eth.balance(this.address) > eth.balance(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdraw: eth balance must be larger than amount.'
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw: transfer error.'
    return 1
}

function sub_a98d1aa3(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == bool(arg3)
    if owner != msg.sender:
        if owner != tx.origin:
            revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'ERC20withdraw: token balance must be larger than amount.'
    require ext_code.size(address(arg1))
    if not arg3:
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
    else:
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
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
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
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
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
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
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}



}
