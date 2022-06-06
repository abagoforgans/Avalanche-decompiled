contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const decimals = 18


mapping of uint256 allowance;
array of struct stor3;
array of struct stor4;
address owner;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 totalFee;
uint256 sub_488981c8;
uint256 stor18;
uint256 stor19; offset 8
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
address stor25;
address stor26;
address stor28;
uint256 totalSupply;
uint256 _totalBurned;
uint256 totalRewardsDistributed;
address stor32;
uint8 stor33; offset 160
uint8 stor33; offset 168
uint8 stor33; offset 176
uint128 stor33; offset 176
address stor33;
uint256 stor34;
address stor35;
address stor36;
mapping of uint256 balanceOf;
mapping of uint8 stor38;
mapping of uint8 stor39;
mapping of uint8 stor40;
mapping of uint256 stor42;

function totalSupply() {
    return totalSupply
}

function isBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor40[address(arg1)])
}

function sub_488981c8(?) {
    return sub_488981c8
}

function isTaxExcluded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor39[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getTotalFee() {
    return totalFee
}

function owner() {
    return owner
}

function sub_9045be58(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor38[address(arg1)])
}

function sub_bc9c3b77(?) {
    return totalRewardsDistributed
}

function totalBurned() {
    return _totalBurned
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function totalRewardsDistributed() {
    return totalRewardsDistributed
}

function _totalBurned() {
    return _totalBurned
}

function sub_4e6be544(?) payable {
    if stor20 > !msg.value:
        revert with 0, 17
    stor20 += msg.value
}

function sub_586509cf(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMaxTransfer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
}

function setSwapFees(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = Mask(248, 0, arg1)
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 >= totalSupply / 1000
    stor7 = arg1
}

function setMaxTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 >= totalSupply / 1000
    stor6 = arg1
}

function setTradingActive(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor33.field_176) = Mask(80, 0, arg1)
}

function sub_4fb0b7e7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor39[address(arg1)]:
        revert with 0, 'Account must not be excluded'
    stor39[address(arg1)] = 1
}

function sub_5196aadb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor38[address(arg1)]:
        revert with 0, 'Account must not be excluded'
    stor38[address(arg1)] = 1
}

function sub_9daa30e3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor38[address(arg1)]:
        revert with 0, 'Account must be excluded'
    stor38[address(arg1)] = 0
}

function sub_b41356c9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor39[address(arg1)]:
        revert with 0, 'Account must not be excluded'
    stor39[address(arg1)] = 0
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

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit 0xfeddf252: arg2, 0, arg1
}

function pendingRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor20 < stor42[address(arg1)]:
        revert with 0, 17
    if stor20 - stor42[address(arg1)] and balanceOf[address(arg1)] > -1 / stor20 - stor42[address(arg1)]:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return ((stor20 * balanceOf[address(arg1)]) - (stor42[address(arg1)] * balanceOf[address(arg1)]) / totalSupply)
}

function removeBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor40[address(arg1)]:
        revert with 0, 'Account must be flagged'
    stor40[address(arg1)] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor38[address(arg1)]:
        revert with 0, 'Account must be excluded'
    stor38[address(arg1)] = 0
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

function withdrawAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor25 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address) / 2:
        revert with 0, 17
    call stor26 with:
       value eth.balance(this.address) - (eth.balance(this.address) / 2) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function updateSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
    stor10 = arg2
    stor13 = arg3
    stor14 = arg4
    stor12 = arg5
    stor11 = arg6
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !stor9:
        revert with 0, 17
    totalFee = arg1 + arg2 + stor9
    if stor11 > !stor12:
        revert with 0, 17
    if stor11 + stor12 > !stor10:
        revert with 0, 17
    sub_488981c8 = stor11 + stor12 + stor10
    if 25 < totalFee:
        revert with 0, 'Must keep fees at 25% or less'
    if sub_488981c8 > 25:
        revert with 0, 'Must keep fees at 25% or less'
}

function launch(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor33.field_168) = 1
    if totalSupply > !arg1:
        revert with 0, 17
    totalSupply += arg1
    if balanceOf[address(this.address)] > !arg1:
        revert with 0, 17
    balanceOf[address(this.address)] += arg1
    emit 0xfeddf252: arg1, 0, this.address
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not stor32:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor32] = arg1
    emit Approval(arg1, this.address, stor32);
    call stor32.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 0, arg1, 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not uint8(stor33.field_176):
        uint8(stor33.field_176) = 1
        stor34 = block.number
    uint8(stor33.field_168) = 0
}

function airdrop(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = ceil32(32 * arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length != arg2.length:
        revert with 0, 'array lengths must match'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _57 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        _59 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        if totalSupply > !mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
            revert with 0, 17
        totalSupply += mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        if balanceOf[mem[(32 * idx) + 140 len 20]] > !mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
            revert with 0, 17
        mem[32] = 37
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        mem[0] = address(_57)
        emit 0xfeddf252: _59, 0, address(_57)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function claimReflection() {
    if address(stor33.field_0) != msg.sender:
        if stor32 != msg.sender:
            staticcall stor35.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor20 < stor42[address(msg.sender)]:
                revert with 0, 17
            if stor20 - stor42[address(msg.sender)] and balanceOf[address(msg.sender)] > -1 / stor20 - stor42[address(msg.sender)]:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if not stor42[address(msg.sender)]:
                stor42[address(msg.sender)] = stor20
            if (stor20 * balanceOf[address(msg.sender)]) - (stor42[address(msg.sender)] * balanceOf[address(msg.sender)]) / totalSupply:
                if eth.balance(this.address):
                    mem[ceil32(return_data.size) + 128] = stor36
                    mem[ceil32(return_data.size) + 160] = stor35
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not stor32:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor32] = (stor20 * balanceOf[address(msg.sender)]) - (stor42[address(msg.sender)] * balanceOf[address(msg.sender)]) / totalSupply
                    emit Approval(((stor20 * balanceOf[address(msg.sender)]) - (stor42[address(msg.sender)] * balanceOf[address(msg.sender)]) / totalSupply), this.address, stor32);
                    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = 0
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = ceil32(return_data.size) + 356
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor32)
                    call stor32.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value (stor20 * balanceOf[address(msg.sender)]) - (stor42[address(msg.sender)] * balanceOf[address(msg.sender)]) / totalSupply wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    staticcall stor35.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    call stor35.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if totalRewardsDistributed > !0:
                        revert with 0, 17
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

function swapAll() {
    if totalSupply and stor6 > -1 / totalSupply:
        revert with 0, 17
    if balanceOf[address(this.address)] < totalSupply * stor6 / 1000:
        if not uint8(stor33.field_160):
            uint8(stor33.field_160) = 1
            mem[128] = this.address
            mem[160] = stor36
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not stor32:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor32] = balanceOf[address(this.address)]
            emit Approval(balanceOf[address(this.address)], this.address, stor32);
            mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[196] = balanceOf[address(this.address)]
            idx = 0
            s = 128
            t = 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor32)
            call stor32.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if stor21 > !stor23:
                revert with 0, 17
            if stor21 + stor23 > !stor22:
                revert with 0, 17
            if stor21 + stor23 + stor22 > !stor24:
                revert with 0, 17
            if balanceOf[address(this.address)] and stor23 > -1 / balanceOf[address(this.address)]:
                revert with 0, 17
            if not stor21 + stor23 + stor22 + stor24:
                revert with 0, 18
            if stor21 > !stor23:
                revert with 0, 17
            if stor21 + stor23 > !stor22:
                revert with 0, 17
            if stor21 + stor23 + stor22 > !stor24:
                revert with 0, 17
            if balanceOf[address(this.address)] and stor24 > -1 / balanceOf[address(this.address)]:
                revert with 0, 17
            if not stor21 + stor23 + stor22 + stor24:
                revert with 0, 18
            if balanceOf[address(this.address)] * stor23 / stor21 + stor23 + stor22 + stor24 > -1:
                revert with 0, 17
            if balanceOf[address(this.address)] * stor23 / stor21 + stor23 + stor22 + stor24 > !(balanceOf[address(this.address)] * stor24 / stor21 + stor23 + stor22 + stor24):
                revert with 0, 17
            if balanceOf[address(this.address)] < (balanceOf[address(this.address)] * stor23 / stor21 + stor23 + stor22 + stor24) + (balanceOf[address(this.address)] * stor24 / stor21 + stor23 + stor22 + stor24):
                revert with 0, 17
            if stor21 > !stor23:
                revert with 0, 17
            if stor21 + stor23 > !stor22:
                revert with 0, 17
            if stor21 + stor23 + stor22 > !stor24:
                revert with 0, 17
            if False and stor23 > 0:
                revert with 0, 17
            if not stor21 + stor23 + stor22 + stor24:
                revert with 0, 18
            if stor21 > !stor23:
                revert with 0, 17
            if stor21 + stor23 > !stor22:
                revert with 0, 17
            if stor21 + stor23 + stor22 > !stor24:
                revert with 0, 17
            if False and stor24 > 0:
                revert with 0, 17
            if not stor21 + stor23 + stor22 + stor24:
                revert with 0, 18
            if 0 / stor21 + stor23 + stor22 + stor24 > -1:
                revert with 0, 17
            if 0 / stor21 + stor23 + stor22 + stor24 > !(0 / stor21 + stor23 + stor22 + stor24):
                revert with 0, 17
            if 0 < 2 * 0 / stor21 + stor23 + stor22 + stor24:
                revert with 0, 17
            if 0 / stor21 + stor23 + stor22 + stor24:
                call stor28 with:
                   value 0 / stor21 + stor23 + stor22 + stor24 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor25 with:
                   value 0 / stor21 + stor23 + stor22 + stor24 wei
                     gas 2300 * is_zero(value) wei
                call stor26 with:
                     gas 2300 wei
            if stor23 < balanceOf[address(this.address)] * stor23 / stor21 + stor23 + stor22 + stor24:
                revert with 0, 17
            stor23 -= balanceOf[address(this.address)] * stor23 / stor21 + stor23 + stor22 + stor24
            if stor22 < 0:
                revert with 0, 17
            if stor24 < balanceOf[address(this.address)] * stor24 / stor21 + stor23 + stor22 + stor24:
                revert with 0, 17
            stor24 -= balanceOf[address(this.address)] * stor24 / stor21 + stor23 + stor22 + stor24
            if stor21 < balanceOf[address(this.address)] - (balanceOf[address(this.address)] * stor23 / stor21 + stor23 + stor22 + stor24) - (balanceOf[address(this.address)] * stor24 / stor21 + stor23 + stor22 + stor24):
                revert with 0, 17
            stor21 = stor21 - balanceOf[address(this.address)] + (balanceOf[address(this.address)] * stor23 / stor21 + stor23 + stor22 + stor24) + (balanceOf[address(this.address)] * stor24 / stor21 + stor23 + stor22 + stor24)
            if stor20 > !-(2 * 0 / stor21 + stor23 + stor22 + stor24):
                revert with 0, 17
            stor20 -= 2 * 0 / stor21 + stor23 + stor22 + stor24
            uint8(stor33.field_160) = 0
    else:
        if not uint8(stor33.field_160):
            uint8(stor33.field_160) = 1
            mem[128] = this.address
            mem[160] = stor36
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not stor32:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor32] = totalSupply * stor6 / 1000
            emit Approval((totalSupply * stor6 / 1000), this.address, stor32);
            mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[196] = totalSupply * stor6 / 1000
            idx = 0
            s = 128
            t = 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor32)
            call stor32.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args totalSupply * stor6 / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if stor21 > !stor23:
                revert with 0, 17
            if stor21 + stor23 > !stor22:
                revert with 0, 17
            if stor21 + stor23 + stor22 > !stor24:
                revert with 0, 17
            if totalSupply * stor6 / 1000 and stor23 > -1 / totalSupply * stor6 / 1000:
                revert with 0, 17
            if not stor21 + stor23 + stor22 + stor24:
                revert with 0, 18
            if stor21 > !stor23:
                revert with 0, 17
            if stor21 + stor23 > !stor22:
                revert with 0, 17
            if stor21 + stor23 + stor22 > !stor24:
                revert with 0, 17
            if totalSupply * stor6 / 1000 and stor24 > -1 / totalSupply * stor6 / 1000:
                revert with 0, 17
            if not stor21 + stor23 + stor22 + stor24:
                revert with 0, 18
            if totalSupply * stor6 / 1000 * stor23 / stor21 + stor23 + stor22 + stor24 > -1:
                revert with 0, 17
            if totalSupply * stor6 / 1000 * stor23 / stor21 + stor23 + stor22 + stor24 > !(totalSupply * stor6 / 1000 * stor24 / stor21 + stor23 + stor22 + stor24):
                revert with 0, 17
            if totalSupply * stor6 / 1000 < (totalSupply * stor6 / 1000 * stor23 / stor21 + stor23 + stor22 + stor24) + (totalSupply * stor6 / 1000 * stor24 / stor21 + stor23 + stor22 + stor24):
                revert with 0, 17
            if stor21 > !stor23:
                revert with 0, 17
            if stor21 + stor23 > !stor22:
                revert with 0, 17
            if stor21 + stor23 + stor22 > !stor24:
                revert with 0, 17
            if False and stor23 > 0:
                revert with 0, 17
            if not stor21 + stor23 + stor22 + stor24:
                revert with 0, 18
            if stor21 > !stor23:
                revert with 0, 17
            if stor21 + stor23 > !stor22:
                revert with 0, 17
            if stor21 + stor23 + stor22 > !stor24:
                revert with 0, 17
            if False and stor24 > 0:
                revert with 0, 17
            if not stor21 + stor23 + stor22 + stor24:
                revert with 0, 18
            if 0 / stor21 + stor23 + stor22 + stor24 > -1:
                revert with 0, 17
            if 0 / stor21 + stor23 + stor22 + stor24 > !(0 / stor21 + stor23 + stor22 + stor24):
                revert with 0, 17
            if 0 < 2 * 0 / stor21 + stor23 + stor22 + stor24:
                revert with 0, 17
            if 0 / stor21 + stor23 + stor22 + stor24:
                call stor28 with:
                   value 0 / stor21 + stor23 + stor22 + stor24 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor25 with:
                   value 0 / stor21 + stor23 + stor22 + stor24 wei
                     gas 2300 * is_zero(value) wei
                call stor26 with:
                     gas 2300 wei
            if stor23 < totalSupply * stor6 / 1000 * stor23 / stor21 + stor23 + stor22 + stor24:
                revert with 0, 17
            stor23 -= totalSupply * stor6 / 1000 * stor23 / stor21 + stor23 + stor22 + stor24
            if stor22 < 0:
                revert with 0, 17
            if stor24 < totalSupply * stor6 / 1000 * stor24 / stor21 + stor23 + stor22 + stor24:
                revert with 0, 17
            stor24 -= totalSupply * stor6 / 1000 * stor24 / stor21 + stor23 + stor22 + stor24
            if stor21 < (totalSupply * stor6 / 1000) - (totalSupply * stor6 / 1000 * stor23 / stor21 + stor23 + stor22 + stor24) - (totalSupply * stor6 / 1000 * stor24 / stor21 + stor23 + stor22 + stor24):
                revert with 0, 17
            stor21 = stor21 - (totalSupply * stor6 / 1000) + (totalSupply * stor6 / 1000 * stor23 / stor21 + stor23 + stor22 + stor24) + (totalSupply * stor6 / 1000 * stor24 / stor21 + stor23 + stor22 + stor24)
            if stor20 > !-(2 * 0 / stor21 + stor23 + stor22 + stor24):
                revert with 0, 17
            stor20 -= 2 * 0 / stor21 + stor23 + stor22 + stor24
            uint8(stor33.field_160) = 0
}



}
