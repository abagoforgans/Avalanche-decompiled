contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = '', 0

const decimals = 18

const symbol = '', 0


address owner;
address stor1;
uint256 unlockTime;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint256 totalSupply;
uint256 _maxWalletSize;
uint256 stor9;
address stor10;
address routerAddress;
uint8 stor12; offset 160
uint128 stor12; offset 160
address pairAddress;
uint256 swapThreshold;
uint8 stor14;
uint256 coef;
uint256 period;
uint256 startDate;
uint256 sub_15c63984;

function swapThreshold() {
    return swapThreshold
}

function startDate() {
    return startDate
}

function sub_15c63984(?) {
    return sub_15c63984
}

function totalSupply() {
    return totalSupply
}

function coef() {
    return coef
}

function getUnlockTime() {
    return unlockTime
}

function swapEnabled() {
    return bool(uint8(stor12.field_160))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function _maxWalletSize() {
    return _maxWalletSize
}

function pair() {
    return pairAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function period() {
    return period
}

function router() {
    return routerAddress
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor10 = arg1
}

function sub_d35c6c52(?) {
    require calldata.size - 4 >= 96
    if arg1:
        coef = arg1
    if arg2:
        period = arg2
    if arg3:
        startDate = block.timestamp
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor5[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor6[address(arg1)] = uint8(arg2)
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 < totalSupply / 100:
        revert with 0, 'Can't set MaxWallet below 1%'
    _maxWalletSize = arg1
}

function ClearStuckBalance() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call stor10 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 > 33:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total fees must be equal or below 33%'
    stor9 = arg1
}

function sub_a4e13071(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    unlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2 < 1:
        revert with 0, 'Can't set SwapThreshold to ZERO'
    Mask(96, 0, stor12.field_160) = Mask(96, 0, arg1)
    swapThreshold = arg2
}

function sub_f7baf3c5(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function swapBack() {
    stor14 = 1
    mem[128] = this.address
    require ext_code.size(routerAddress)
    staticcall routerAddress.0x73b295c2 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
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
    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor10 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    stor14 = 0
}

function sub_816e5934(?) {
    if 0 == sub_15c63984:
        if period > -1:
            revert with 0, 17
        if block.timestamp < startDate:
            revert with 0, 17
        if not period:
            revert with 0, 18
        if 1 > !(block.timestamp - startDate / period):
            revert with 0, 17
        if coef < 1:
            revert with 0, 17
        if not (block.timestamp - startDate / period) + 1:
            revert with 0, 18
        if 1000 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
            revert with 0, 17
    if 1 == sub_15c63984:
        if period > -1:
            revert with 0, 17
        if block.timestamp < startDate:
            revert with 0, 17
        if not period:
            revert with 0, 18
        if 1 > !(block.timestamp - startDate / period):
            revert with 0, 17
        if coef < 1:
            revert with 0, 17
        if not (block.timestamp - startDate / period) + 1:
            revert with 0, 18
        if 1 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
            revert with 0, 17
    if 2 == sub_15c63984:
        if coef < 1:
            revert with 0, 17
        if coef - 1 and sha3(block.timestamp, msg.sender) % 1000 > -1 / coef - 1:
            revert with 0, 17
        if 1000 > !(-(sha3(block.timestamp, msg.sender) % 1000) + (coef * sha3(block.timestamp, msg.sender) % 1000)):
            revert with 0, 17
    if block.timestamp < startDate:
        revert with 0, 17
    if period > -1:
        revert with 0, 17
    if block.timestamp < startDate:
        revert with 0, 17
    if not period:
        revert with 0, 18
    if period > -1:
        revert with 0, 17
    if block.timestamp < startDate:
        revert with 0, 17
    if not period:
        revert with 0, 18
    if 1 > !(block.timestamp - startDate / period):
        revert with 0, 17
    if coef < 1000:
        revert with 0, 17
    if not (block.timestamp - startDate / period) + 1:
        revert with 0, 18
    if period > -1:
        revert with 0, 17
    if block.timestamp < startDate:
        revert with 0, 17
    if not period:
        revert with 0, 18
    if 1 > !(block.timestamp - startDate / period):
        revert with 0, 17
    if coef < 1000:
        revert with 0, 17
    if not (block.timestamp - startDate / period) + 1:
        revert with 0, 18
    if 1000 > !(coef - 1000 / (block.timestamp - startDate / period) + 1):
        revert with 0, 17
    return block.timestamp - startDate, 
           block.timestamp - startDate / period,
           coef - 1000 / (block.timestamp - startDate / period) + 1,
           (coef - 1000 / (block.timestamp - startDate / period) + 1) + 1000
}

function sub_17e33f15(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if pairAddress != address(arg1):
        if arg2 / 100 and stor9 > -1 / arg2 / 100:
            revert with 0, 17
        if arg2 / 100 * stor9 and 1000 > -1 / arg2 / 100 * stor9:
            revert with 0, 17
        return (1000 * arg2 / 100 * stor9 / 1000)
    if 0 == sub_15c63984:
        if period > -1:
            revert with 0, 17
        if block.timestamp < startDate:
            revert with 0, 17
        if not period:
            revert with 0, 18
        if 1 > !(block.timestamp - startDate / period):
            revert with 0, 17
        if coef < 1:
            revert with 0, 17
        if not (block.timestamp - startDate / period) + 1:
            revert with 0, 18
        if 1000 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
            revert with 0, 17
    if 1 == sub_15c63984:
        if period > -1:
            revert with 0, 17
        if block.timestamp < startDate:
            revert with 0, 17
        if not period:
            revert with 0, 18
        if 1 > !(block.timestamp - startDate / period):
            revert with 0, 17
        if coef < 1:
            revert with 0, 17
        if not (block.timestamp - startDate / period) + 1:
            revert with 0, 18
        if 1 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
            revert with 0, 17
    if 2 == sub_15c63984:
        if coef < 1:
            revert with 0, 17
        if coef - 1 and sha3(block.timestamp, msg.sender) % 1000 > -1 / coef - 1:
            revert with 0, 17
        if 1000 > !(-(sha3(block.timestamp, msg.sender) % 1000) + (coef * sha3(block.timestamp, msg.sender) % 1000)):
            revert with 0, 17
    if block.timestamp < startDate:
        revert with 0, 17
    if period > -1:
        revert with 0, 17
    if block.timestamp < startDate:
        revert with 0, 17
    if not period:
        revert with 0, 18
    if period > -1:
        revert with 0, 17
    if block.timestamp < startDate:
        revert with 0, 17
    if not period:
        revert with 0, 18
    if 1 > !(block.timestamp - startDate / period):
        revert with 0, 17
    if coef < 1000:
        revert with 0, 17
    if not (block.timestamp - startDate / period) + 1:
        revert with 0, 18
    if period > -1:
        revert with 0, 17
    if block.timestamp < startDate:
        revert with 0, 17
    if not period:
        revert with 0, 18
    if 1 > !(block.timestamp - startDate / period):
        revert with 0, 17
    if coef < 1000:
        revert with 0, 17
    if not (block.timestamp - startDate / period) + 1:
        revert with 0, 18
    if 1000 > !(coef - 1000 / (block.timestamp - startDate / period) + 1):
        revert with 0, 17
    if arg2 / 100 and stor9 > -1 / arg2 / 100:
        revert with 0, 17
    if arg2 / 100 * stor9 and (coef - 1000 / (block.timestamp - startDate / period) + 1) + 1000 > -1 / arg2 / 100 * stor9:
        revert with 0, 17
    return ((1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor14:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if owner != msg.sender:
            if owner != arg1:
                if arg1 != 57005:
                    if pairAddress != arg1:
                        if not stor6[address(arg1)]:
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 > _maxWalletSize:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the MaxWallet size.'
        if pairAddress != msg.sender:
            if not stor14:
                if uint8(stor12.field_160):
                    if balanceOf[this.address] >= swapThreshold:
                        stor14 = 1
                        mem[128] = this.address
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[160] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
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
                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor10 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        stor14 = 0
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if stor5[address(msg.sender)]:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor5[address(arg1)]:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if pairAddress != arg1:
                    if arg2 / 100 and stor9 > -1 / arg2 / 100:
                        revert with 0, 17
                    if arg2 / 100 * stor9 and 1000 > -1 / arg2 / 100 * stor9:
                        revert with 0, 17
                    if balanceOf[this.address] > !(1000 * arg2 / 100 * stor9 / 1000):
                        revert with 0, 17
                    balanceOf[this.address] += 1000 * arg2 / 100 * stor9 / 1000
                    emit Transfer((1000 * arg2 / 100 * stor9 / 1000), msg.sender, this.address);
                    if arg2 < 1000 * arg2 / 100 * stor9 / 1000:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 - (1000 * arg2 / 100 * stor9 / 1000)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (1000 * arg2 / 100 * stor9 / 1000)
                    emit Transfer((arg2 - (1000 * arg2 / 100 * stor9 / 1000)), msg.sender, arg1);
                else:
                    if 0 == sub_15c63984:
                        if period > -1:
                            revert with 0, 17
                        if block.timestamp < startDate:
                            revert with 0, 17
                        if not period:
                            revert with 0, 18
                        if 1 > !(block.timestamp - startDate / period):
                            revert with 0, 17
                        if coef < 1:
                            revert with 0, 17
                        if not (block.timestamp - startDate / period) + 1:
                            revert with 0, 18
                        if 1000 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
                            revert with 0, 17
                    if 1 == sub_15c63984:
                        if period > -1:
                            revert with 0, 17
                        if block.timestamp < startDate:
                            revert with 0, 17
                        if not period:
                            revert with 0, 18
                        if 1 > !(block.timestamp - startDate / period):
                            revert with 0, 17
                        if coef < 1:
                            revert with 0, 17
                        if not (block.timestamp - startDate / period) + 1:
                            revert with 0, 18
                        if 1 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
                            revert with 0, 17
                    if 2 == sub_15c63984:
                        if coef < 1:
                            revert with 0, 17
                        if coef - 1 and sha3(block.timestamp, msg.sender) % 1000 > -1 / coef - 1:
                            revert with 0, 17
                        if 1000 > !(-(sha3(block.timestamp, msg.sender) % 1000) + (coef * sha3(block.timestamp, msg.sender) % 1000)):
                            revert with 0, 17
                    if block.timestamp < startDate:
                        revert with 0, 17
                    if period > -1:
                        revert with 0, 17
                    if block.timestamp < startDate:
                        revert with 0, 17
                    if not period:
                        revert with 0, 18
                    if period > -1:
                        revert with 0, 17
                    if block.timestamp < startDate:
                        revert with 0, 17
                    if not period:
                        revert with 0, 18
                    if 1 > !(block.timestamp - startDate / period):
                        revert with 0, 17
                    if coef < 1000:
                        revert with 0, 17
                    if not (block.timestamp - startDate / period) + 1:
                        revert with 0, 18
                    if period > -1:
                        revert with 0, 17
                    if block.timestamp < startDate:
                        revert with 0, 17
                    if not period:
                        revert with 0, 18
                    if 1 > !(block.timestamp - startDate / period):
                        revert with 0, 17
                    if coef < 1000:
                        revert with 0, 17
                    if not (block.timestamp - startDate / period) + 1:
                        revert with 0, 18
                    if 1000 > !(coef - 1000 / (block.timestamp - startDate / period) + 1):
                        revert with 0, 17
                    if arg2 / 100 and stor9 > -1 / arg2 / 100:
                        revert with 0, 17
                    if arg2 / 100 * stor9 and (coef - 1000 / (block.timestamp - startDate / period) + 1) + 1000 > -1 / arg2 / 100 * stor9:
                        revert with 0, 17
                    if balanceOf[this.address] > !((1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000):
                        revert with 0, 17
                    balanceOf[this.address] += (1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000
                    emit Transfer(((1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000), msg.sender, this.address);
                    if arg2 < (1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 - ((1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000)
                    emit Transfer((arg2 - ((1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000)), msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x6ddd1713(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xd35c6c52(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xefdcd974(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xd35c6c52(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    if arg1:
                        coef = arg1
                    if arg2:
                        period = arg2
                    if arg3:
                        startDate = block.timestamp
                else:
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        return allowance[address(arg1)][address(arg2)]
                    if uint32(call.func_hash) >> 224 != unknown_0xdf20fd49(?????):
                        require unknown_0xef78d4fd(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return period
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == bool(arg1)
                    if owner != msg.sender:
                        revert with 0, '!OWNER'
                    if arg2 < 1:
                        revert with 0, 'Can't set SwapThreshold to ZERO'
                    Mask(96, 0, stor12.field_160) = Mask(96, 0, bool(arg1))
                    swapThreshold = arg2
            else:
                if unknown_0xefdcd974(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, '!OWNER'
                    stor10 = address(arg1)
                else:
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, '!OWNER'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, address(arg1));
                        owner = address(arg1)
                    else:
                        if unknown_0xf7baf3c5(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if stor1 != msg.sender:
                                revert with 0, 'You don't have permission to unlock'
                            if block.timestamp <= unlockTime:
                                revert with 0, 'Contract is locked until 7 days'
                            emit OwnershipTransferred(owner, stor1);
                            owner = stor1
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0xf84ba65d(?????):
                                require unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return routerAddress
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            require arg2 == bool(arg2)
                            if owner != msg.sender:
                                revert with 0, '!OWNER'
                            stor6[address(arg1)] = uint8(bool(arg2))
        if unknown_0x8f9a55c0(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x6ddd1713(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(uint8(stor12.field_160))
            if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return balanceOf[address(arg1)]
            if uint32(call.func_hash) >> 224 != unknown_0x816e5934(?????):
                require unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return owner
            require not msg.value
            if 0 == sub_15c63984:
                if period > -1:
                    revert with 0, 17
                if block.timestamp < startDate:
                    revert with 0, 17
                if not period:
                    revert with 0, 18
                if 1 > !(block.timestamp - startDate / period):
                    revert with 0, 17
                if coef < 1:
                    revert with 0, 17
                if not (block.timestamp - startDate / period) + 1:
                    revert with 0, 18
                if 1000 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
                    revert with 0, 17
            if 1 == sub_15c63984:
                if period > -1:
                    revert with 0, 17
                if block.timestamp < startDate:
                    revert with 0, 17
                if not period:
                    revert with 0, 18
                if 1 > !(block.timestamp - startDate / period):
                    revert with 0, 17
                if coef < 1:
                    revert with 0, 17
                if not (block.timestamp - startDate / period) + 1:
                    revert with 0, 18
                if 1 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
                    revert with 0, 17
            if 2 == sub_15c63984:
                if coef < 1:
                    revert with 0, 17
                if coef - 1 and sha3(block.timestamp, msg.sender) % 1000 > -1 / coef - 1:
                    revert with 0, 17
                if 1000 > !(-(sha3(block.timestamp, msg.sender) % 1000) + (coef * sha3(block.timestamp, msg.sender) % 1000)):
                    revert with 0, 17
            if block.timestamp < startDate:
                revert with 0, 17
            if period > -1:
                revert with 0, 17
            if block.timestamp < startDate:
                revert with 0, 17
            if not period:
                revert with 0, 18
            if period > -1:
                revert with 0, 17
            if block.timestamp < startDate:
                revert with 0, 17
            if not period:
                revert with 0, 18
            if 1 > !(block.timestamp - startDate / period):
                revert with 0, 17
            if coef < 1000:
                revert with 0, 17
            if not (block.timestamp - startDate / period) + 1:
                revert with 0, 18
            if period > -1:
                revert with 0, 17
            if block.timestamp < startDate:
                revert with 0, 17
            if not period:
                revert with 0, 18
            if 1 > !(block.timestamp - startDate / period):
                revert with 0, 17
            if coef < 1000:
                revert with 0, 17
            if not (block.timestamp - startDate / period) + 1:
                revert with 0, 18
            if 1000 > !(coef - 1000 / (block.timestamp - startDate / period) + 1):
                revert with 0, 17
            return block.timestamp - startDate, 
                   block.timestamp - startDate / period,
                   coef - 1000 / (block.timestamp - startDate / period) + 1,
                   (coef - 1000 / (block.timestamp - startDate / period) + 1) + 1000
        if unknown_0x8f9a55c0(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return _maxWalletSize
        if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return '', 0
        if unknown_0xa4e13071(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            if owner != msg.sender:
                revert with 0, '!OWNER'
            stor1 = owner
            owner = 0
            if block.timestamp > !arg1:
                revert with 0, 17
            unlockTime = block.timestamp + arg1
            emit OwnershipTransferred(owner, 0);
        if unknown_0xa8aa1b31(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return pairAddress
        require unknown_0xa9059cbb(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if stor14:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, address(arg1));
        else:
            if owner != msg.sender:
                if owner != address(arg1):
                    if address(arg1) != 57005:
                        if pairAddress != address(arg1):
                            if not stor6[address(arg1)]:
                                if balanceOf[address(arg1)] > !arg2:
                                    revert with 0, 17
                                if balanceOf[address(arg1)] + arg2 > _maxWalletSize:
                                    revert with 0, 'Transfer amount exceeds the MaxWallet size.'
            if pairAddress != msg.sender:
                if not stor14:
                    if uint8(stor12.field_160):
                        if balanceOf[this.address] >= swapThreshold:
                            stor14 = 1
                            mem[160] = this.address
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                            idx = 0
                            s = ceil32(return_data.size) + 420
                            t = 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor10 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            stor14 = 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if stor5[address(msg.sender)]:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, address(arg1));
            else:
                if stor5[address(arg1)]:
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if pairAddress != address(arg1):
                        if arg2 / 100 and stor9 > -1 / arg2 / 100:
                            revert with 0, 17
                        if arg2 / 100 * stor9 and 1000 > -1 / arg2 / 100 * stor9:
                            revert with 0, 17
                        if balanceOf[this.address] > !(1000 * arg2 / 100 * stor9 / 1000):
                            revert with 0, 17
                        balanceOf[this.address] += 1000 * arg2 / 100 * stor9 / 1000
                        emit Transfer((1000 * arg2 / 100 * stor9 / 1000), msg.sender, this.address);
                        if arg2 < 1000 * arg2 / 100 * stor9 / 1000:
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !(arg2 - (1000 * arg2 / 100 * stor9 / 1000)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (1000 * arg2 / 100 * stor9 / 1000)
                        emit Transfer((arg2 - (1000 * arg2 / 100 * stor9 / 1000)), msg.sender, address(arg1));
                    else:
                        if 0 == sub_15c63984:
                            if period > -1:
                                revert with 0, 17
                            if block.timestamp < startDate:
                                revert with 0, 17
                            if not period:
                                revert with 0, 18
                            if 1 > !(block.timestamp - startDate / period):
                                revert with 0, 17
                            if coef < 1:
                                revert with 0, 17
                            if not (block.timestamp - startDate / period) + 1:
                                revert with 0, 18
                            if 1000 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
                                revert with 0, 17
                        if 1 == sub_15c63984:
                            if period > -1:
                                revert with 0, 17
                            if block.timestamp < startDate:
                                revert with 0, 17
                            if not period:
                                revert with 0, 18
                            if 1 > !(block.timestamp - startDate / period):
                                revert with 0, 17
                            if coef < 1:
                                revert with 0, 17
                            if not (block.timestamp - startDate / period) + 1:
                                revert with 0, 18
                            if 1 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
                                revert with 0, 17
                        if 2 == sub_15c63984:
                            if coef < 1:
                                revert with 0, 17
                            if coef - 1 and sha3(block.timestamp, msg.sender) % 1000 > -1 / coef - 1:
                                revert with 0, 17
                            if 1000 > !(-(sha3(block.timestamp, msg.sender) % 1000) + (coef * sha3(block.timestamp, msg.sender) % 1000)):
                                revert with 0, 17
                        if block.timestamp < startDate:
                            revert with 0, 17
                        if period > -1:
                            revert with 0, 17
                        if block.timestamp < startDate:
                            revert with 0, 17
                        if not period:
                            revert with 0, 18
                        if period > -1:
                            revert with 0, 17
                        if block.timestamp < startDate:
                            revert with 0, 17
                        if not period:
                            revert with 0, 18
                        if 1 > !(block.timestamp - startDate / period):
                            revert with 0, 17
                        if coef < 1000:
                            revert with 0, 17
                        if not (block.timestamp - startDate / period) + 1:
                            revert with 0, 18
                        if period > -1:
                            revert with 0, 17
                        if block.timestamp < startDate:
                            revert with 0, 17
                        if not period:
                            revert with 0, 18
                        if 1 > !(block.timestamp - startDate / period):
                            revert with 0, 17
                        if coef < 1000:
                            revert with 0, 17
                        if not (block.timestamp - startDate / period) + 1:
                            revert with 0, 18
                        if 1000 > !(coef - 1000 / (block.timestamp - startDate / period) + 1):
                            revert with 0, 17
                        if arg2 / 100 and stor9 > -1 / arg2 / 100:
                            revert with 0, 17
                        if arg2 / 100 * stor9 and (coef - 1000 / (block.timestamp - startDate / period) + 1) + 1000 > -1 / arg2 / 100 * stor9:
                            revert with 0, 17
                        if balanceOf[this.address] > !((1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000):
                            revert with 0, 17
                        balanceOf[this.address] += (1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000
                        emit Transfer(((1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000), msg.sender, this.address);
                        if arg2 < (1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000:
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !(arg2 - ((1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000)
                        emit Transfer((arg2 - ((1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000)), msg.sender, address(arg1));
    else:
        if unknown_0x2f54bf6e(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x571ac8b0(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x2f54bf6e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return (owner == address(arg1))
                if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 18
                if unknown_0x3afd4b5e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return coef
                require unknown_0x3d18678e(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, '!OWNER'
                if arg1 > 33:
                    revert with 0, 'Total fees must be equal or below 33%'
                stor9 = arg1
            else:
                if unknown_0x571ac8b0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    allowance[msg.sender][address(arg1)] = -1
                    emit Approval(-1, msg.sender, address(arg1));
                    return 1
                if unknown_0x5d0044ca(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, '!OWNER'
                    if arg1 < totalSupply / 100:
                        revert with 0, 'Can't set MaxWallet below 1%'
                    _maxWalletSize = arg1
                else:
                    if unknown_0x602bc62b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return unlockTime
                    if unknown_0x658d4b7f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if owner != msg.sender:
                            revert with 0, '!OWNER'
                        stor5[address(arg1)] = uint8(bool(arg2))
                    else:
                        require unknown_0x6ac5eeee(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        stor14 = 1
                        mem[160] = this.address
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.0x73b295c2 with:
                                gas gas_remaining wei
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                        idx = 0
                        s = ceil32(return_data.size) + 420
                        t = 160
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor10 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        stor14 = 0
        if unknown_0x15c63984(?????) > uint32(call.func_hash) >> 224:
            if swapThreshold() == uint32(call.func_hash) >> 224:
                require not msg.value
                return swapThreshold
            if name() == uint32(call.func_hash) >> 224:
                require not msg.value
                return '', 0
            if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                require startDate() == uint32(call.func_hash) >> 224
                require not msg.value
                return startDate
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            allowance[msg.sender][address(arg1)] = arg2
            emit Approval(arg2, msg.sender, address(arg1));
        else:
            if unknown_0x15c63984(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_15c63984
            if unknown_0x17e33f15(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if pairAddress != address(arg1):
                    if arg2 / 100 and stor9 > -1 / arg2 / 100:
                        revert with 0, 17
                    if arg2 / 100 * stor9 and 1000 > -1 / arg2 / 100 * stor9:
                        revert with 0, 17
                    return (1000 * arg2 / 100 * stor9 / 1000)
                if 0 == sub_15c63984:
                    if period > -1:
                        revert with 0, 17
                    if block.timestamp < startDate:
                        revert with 0, 17
                    if not period:
                        revert with 0, 18
                    if 1 > !(block.timestamp - startDate / period):
                        revert with 0, 17
                    if coef < 1:
                        revert with 0, 17
                    if not (block.timestamp - startDate / period) + 1:
                        revert with 0, 18
                    if 1000 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
                        revert with 0, 17
                if 1 == sub_15c63984:
                    if period > -1:
                        revert with 0, 17
                    if block.timestamp < startDate:
                        revert with 0, 17
                    if not period:
                        revert with 0, 18
                    if 1 > !(block.timestamp - startDate / period):
                        revert with 0, 17
                    if coef < 1:
                        revert with 0, 17
                    if not (block.timestamp - startDate / period) + 1:
                        revert with 0, 18
                    if 1 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
                        revert with 0, 17
                if 2 == sub_15c63984:
                    if coef < 1:
                        revert with 0, 17
                    if coef - 1 and sha3(block.timestamp, msg.sender) % 1000 > -1 / coef - 1:
                        revert with 0, 17
                    if 1000 > !(-(sha3(block.timestamp, msg.sender) % 1000) + (coef * sha3(block.timestamp, msg.sender) % 1000)):
                        revert with 0, 17
                if block.timestamp < startDate:
                    revert with 0, 17
                if period > -1:
                    revert with 0, 17
                if block.timestamp < startDate:
                    revert with 0, 17
                if not period:
                    revert with 0, 18
                if period > -1:
                    revert with 0, 17
                if block.timestamp < startDate:
                    revert with 0, 17
                if not period:
                    revert with 0, 18
                if 1 > !(block.timestamp - startDate / period):
                    revert with 0, 17
                if coef < 1000:
                    revert with 0, 17
                if not (block.timestamp - startDate / period) + 1:
                    revert with 0, 18
                if period > -1:
                    revert with 0, 17
                if block.timestamp < startDate:
                    revert with 0, 17
                if not period:
                    revert with 0, 18
                if 1 > !(block.timestamp - startDate / period):
                    revert with 0, 17
                if coef < 1000:
                    revert with 0, 17
                if not (block.timestamp - startDate / period) + 1:
                    revert with 0, 18
                if 1000 > !(coef - 1000 / (block.timestamp - startDate / period) + 1):
                    revert with 0, 17
                if arg2 / 100 and stor9 > -1 / arg2 / 100:
                    revert with 0, 17
                if arg2 / 100 * stor9 and (coef - 1000 / (block.timestamp - startDate / period) + 1) + 1000 > -1 / arg2 / 100 * stor9:
                    revert with 0, 17
                return ((1000 * arg2 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg2 / 100 * stor9) / 1000)
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalSupply
            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                require unknown_0x25348b05(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, '!OWNER'
                call stor10 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if allowance[address(arg1)][msg.sender] != -1:
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 17
                allowance[address(arg1)][msg.sender] -= arg3
            if stor14:
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if owner != address(arg1):
                    if owner != address(arg2):
                        if address(arg2) != 57005:
                            if pairAddress != address(arg2):
                                if not stor6[address(arg2)]:
                                    if balanceOf[address(arg2)] > !arg3:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] + arg3 > _maxWalletSize:
                                        revert with 0, 'Transfer amount exceeds the MaxWallet size.'
                if pairAddress != msg.sender:
                    if not stor14:
                        if uint8(stor12.field_160):
                            if balanceOf[this.address] >= swapThreshold:
                                stor14 = 1
                                mem[160] = this.address
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                idx = 0
                                s = ceil32(return_data.size) + 420
                                t = 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call stor10 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                stor14 = 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if stor5[address(arg1)]:
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, address(arg1), address(arg2));
                else:
                    if stor5[address(arg2)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if pairAddress != address(arg2):
                            if arg3 / 100 and stor9 > -1 / arg3 / 100:
                                revert with 0, 17
                            if arg3 / 100 * stor9 and 1000 > -1 / arg3 / 100 * stor9:
                                revert with 0, 17
                            if balanceOf[this.address] > !(1000 * arg3 / 100 * stor9 / 1000):
                                revert with 0, 17
                            balanceOf[this.address] += 1000 * arg3 / 100 * stor9 / 1000
                            emit Transfer((1000 * arg3 / 100 * stor9 / 1000), address(arg1), this.address);
                            if arg3 < 1000 * arg3 / 100 * stor9 / 1000:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (1000 * arg3 / 100 * stor9 / 1000)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (1000 * arg3 / 100 * stor9 / 1000)
                            emit Transfer((arg3 - (1000 * arg3 / 100 * stor9 / 1000)), address(arg1), address(arg2));
                        else:
                            if 0 == sub_15c63984:
                                if period > -1:
                                    revert with 0, 17
                                if block.timestamp < startDate:
                                    revert with 0, 17
                                if not period:
                                    revert with 0, 18
                                if 1 > !(block.timestamp - startDate / period):
                                    revert with 0, 17
                                if coef < 1:
                                    revert with 0, 17
                                if not (block.timestamp - startDate / period) + 1:
                                    revert with 0, 18
                                if 1000 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
                                    revert with 0, 17
                            if 1 == sub_15c63984:
                                if period > -1:
                                    revert with 0, 17
                                if block.timestamp < startDate:
                                    revert with 0, 17
                                if not period:
                                    revert with 0, 18
                                if 1 > !(block.timestamp - startDate / period):
                                    revert with 0, 17
                                if coef < 1:
                                    revert with 0, 17
                                if not (block.timestamp - startDate / period) + 1:
                                    revert with 0, 18
                                if 1 > !(coef - 1 / (block.timestamp - startDate / period) + 1):
                                    revert with 0, 17
                            if 2 == sub_15c63984:
                                if coef < 1:
                                    revert with 0, 17
                                if coef - 1 and sha3(block.timestamp, msg.sender) % 1000 > -1 / coef - 1:
                                    revert with 0, 17
                                if 1000 > !(-(sha3(block.timestamp, msg.sender) % 1000) + (coef * sha3(block.timestamp, msg.sender) % 1000)):
                                    revert with 0, 17
                            if block.timestamp < startDate:
                                revert with 0, 17
                            if period > -1:
                                revert with 0, 17
                            if block.timestamp < startDate:
                                revert with 0, 17
                            if not period:
                                revert with 0, 18
                            if period > -1:
                                revert with 0, 17
                            if block.timestamp < startDate:
                                revert with 0, 17
                            if not period:
                                revert with 0, 18
                            if 1 > !(block.timestamp - startDate / period):
                                revert with 0, 17
                            if coef < 1000:
                                revert with 0, 17
                            if not (block.timestamp - startDate / period) + 1:
                                revert with 0, 18
                            if period > -1:
                                revert with 0, 17
                            if block.timestamp < startDate:
                                revert with 0, 17
                            if not period:
                                revert with 0, 18
                            if 1 > !(block.timestamp - startDate / period):
                                revert with 0, 17
                            if coef < 1000:
                                revert with 0, 17
                            if not (block.timestamp - startDate / period) + 1:
                                revert with 0, 18
                            if 1000 > !(coef - 1000 / (block.timestamp - startDate / period) + 1):
                                revert with 0, 17
                            if arg3 / 100 and stor9 > -1 / arg3 / 100:
                                revert with 0, 17
                            if arg3 / 100 * stor9 and (coef - 1000 / (block.timestamp - startDate / period) + 1) + 1000 > -1 / arg3 / 100 * stor9:
                                revert with 0, 17
                            if balanceOf[this.address] > !((1000 * arg3 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg3 / 100 * stor9) / 1000):
                                revert with 0, 17
                            balanceOf[this.address] += (1000 * arg3 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg3 / 100 * stor9) / 1000
                            emit Transfer(((1000 * arg3 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg3 / 100 * stor9) / 1000), address(arg1), this.address);
                            if arg3 < (1000 * arg3 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg3 / 100 * stor9) / 1000:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - ((1000 * arg3 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg3 / 100 * stor9) / 1000)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((1000 * arg3 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg3 / 100 * stor9) / 1000)
                            emit Transfer((arg3 - ((1000 * arg3 / 100 * stor9) + (coef - 1000 / (block.timestamp - startDate / period) + 1 * arg3 / 100 * stor9) / 1000)), address(arg1), address(arg2));
    return 1
}



}
