contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = '', 0

const decimals = 9

const symbol = '', 0


address owner;
uint256 totalSupply;
uint256 maxTxAmount;
uint256 maxWallet;
uint256 swapThreshold;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address routerAddress;
address routerAddress;
address WAVAXAddress;
address pairAddress;
uint256 stor11;
uint8 stor12;
uint256 stor13;
uint256 stor14; offset 1
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint8 swapAndLiquify; offset 160
uint8 stor19; offset 168
uint128 stor19; offset 160
address marketingWalletAddress;
address stor20;
address distributorAddress;
mapping of uint8 stor22;
mapping of uint8 stor23;
mapping of uint8 stor24;
mapping of uint8 stor25;
mapping of uint8 stor26;
mapping of uint8 stor27;
uint256 stor5B8C;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function isExcludedFromDividend(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor24[address(arg1)])
}

function routerAddress() {
    return routerAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor25[address(arg1)])
}

function isExcludedFromMaxTx(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor22[address(arg1)])
}

function isExcludedFromMaxWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor23[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function WAVAX() {
    return WAVAXAddress
}

function marketingWallet() {
    return marketingWalletAddress
}

function maxTxAmount() {
    return maxTxAmount
}

function owner() {
    return owner
}

function distributorAddress() {
    return distributorAddress
}

function pair() {
    return pairAddress
}

function swapAndLiquify() {
    return bool(swapAndLiquify)
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

function maxWallet() {
    return maxWallet
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor27[address(arg1)])
}

function currentFees() {
    return uint256(stor14.field_0), stor13, stor16, 0, 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function launch() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor12:
        revert with 0, 'Already launched'
    stor12 = 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = arg1
}

function sub_1326f357(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTxAmount = arg1
    maxWallet = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_aa7235c5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor27[address(arg1)] = 0
}

function updateWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingWalletAddress = arg1
}

function updateSwapAndLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor19.field_160) = Mask(96, 0, arg1)
}

function sub_e73217f5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor27[address(arg1)] = 1
    emit 0x71ada328: address(arg1)
}

function sub_91c04cfb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor24[address(arg1)] = uint8(bool(arg2))
}

function excludeFromFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor25[address(arg1)] = uint8(arg2)
}

function excludeFromMaxTx(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22[address(arg1)] = uint8(arg2)
}

function excludeFromMaxWallet(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23[address(arg1)] = uint8(arg2)
}

function collect() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function updateFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor14.field_0) = arg1
    stor13 = arg2
    stor16 = arg4
    stor15 = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg4 > !arg3:
        revert with 0, 17
    stor17 = arg1 + arg2 + arg4 + arg3
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if uint8(stor19.field_168):
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    else:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Transfer : You can't transfer more than your balance.'
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        if balanceOf[address(arg1)] + arg2 >= maxWallet:
            if not stor23[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Transfer : You can't exceed the max wallet amount of tokens.'
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer : Amount is null (amount > 0).'
        if arg2 > maxTxAmount:
            if not stor22[address(msg.sender)]:
                revert with 0, 'Transfer : TX Limit Exceeded'
        if swapThreshold <= balanceOf[this.address]:
            if stor26[address(arg1)]:
                uint8(stor19.field_168) = 1
                if 0 or swapAndLiquify:
                    if swapThreshold and 0 > -1 / swapThreshold:
                        revert with 0, 17
                    if not stor17:
                        revert with 0, 18
                    if swapThreshold and stor15 > -1 / swapThreshold:
                        revert with 0, 17
                    if not stor17:
                        revert with 0, 18
                    if 0 / stor17 > !(swapThreshold * stor15 / stor17):
                        revert with 0, 17
                    if swapThreshold < (0 / stor17) + (swapThreshold * stor15 / stor17):
                        revert with 0, 17
                    mem[128] = this.address
                    mem[160] = WAVAXAddress
                    mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[196] = swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17)
                    idx = 0
                    s = 388
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
                        args swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if stor17 < 0:
                        revert with 0, 17
                    if stor17 < stor15:
                        revert with 0, 17
                    if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                        revert with 0, 17
                    balanceOf[this.address] -= swapThreshold * stor15 / stor17
                    if stor5B8C > !(swapThreshold * stor15 / stor17):
                        revert with 0, 17
                    stor5B8C += swapThreshold * stor15 / stor17
                    emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                    if not stor17 - stor15:
                        revert with 0, 18
                    if False and stor13 > 0:
                        revert with 0, 17
                    if not stor17 - stor15:
                        revert with 0, 18
                    if False and stor16 > 0:
                        revert with 0, 17
                    if not stor17 - stor15:
                        revert with 0, 18
                    require ext_code.size(stor20)
                    call stor20.deposit() with:
                       value 0 / stor17 - stor15 wei
                         gas gas_remaining wei
                    call marketingWalletAddress with:
                       value 0 / stor17 - stor15 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / stor17:
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value 0 / stor17 - stor15 wei
                             gas gas_remaining wei
                            args this.address, 0 / stor17, 0, 0, marketingWalletAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit AutoLiquify(0 / stor17 - stor15, 0 / stor17);
                else:
                    if swapThreshold and uint255(stor14.field_1) > -1 / swapThreshold:
                        revert with 0, 17
                    if not stor17:
                        revert with 0, 18
                    if swapThreshold and stor15 > -1 / swapThreshold:
                        revert with 0, 17
                    if not stor17:
                        revert with 0, 18
                    if swapThreshold * uint255(stor14.field_1) / stor17 > !(swapThreshold * stor15 / stor17):
                        revert with 0, 17
                    if swapThreshold < (swapThreshold * uint255(stor14.field_1) / stor17) + (swapThreshold * stor15 / stor17):
                        revert with 0, 17
                    mem[128] = this.address
                    mem[160] = WAVAXAddress
                    mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[196] = swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17)
                    idx = 0
                    s = 388
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
                        args swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if stor17 < uint255(stor14.field_1):
                        revert with 0, 17
                    if stor17 - uint255(stor14.field_1) < stor15:
                        revert with 0, 17
                    if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                        revert with 0, 17
                    balanceOf[this.address] -= swapThreshold * stor15 / stor17
                    if stor5B8C > !(swapThreshold * stor15 / stor17):
                        revert with 0, 17
                    stor5B8C += swapThreshold * stor15 / stor17
                    emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                    if False and uint255(stor14.field_1) > 0:
                        revert with 0, 17
                    if not stor17 - uint255(stor14.field_1) - stor15:
                        revert with 0, 18
                    if False and stor13 > 0:
                        revert with 0, 17
                    if not stor17 - uint255(stor14.field_1) - stor15:
                        revert with 0, 18
                    if False and stor16 > 0:
                        revert with 0, 17
                    if not stor17 - uint255(stor14.field_1) - stor15:
                        revert with 0, 18
                    require ext_code.size(stor20)
                    call stor20.deposit() with:
                       value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                         gas gas_remaining wei
                    call marketingWalletAddress with:
                       value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if swapThreshold * uint255(stor14.field_1) / stor17:
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                             gas gas_remaining wei
                            args this.address, swapThreshold * uint255(stor14.field_1) / stor17, 0, 0, marketingWalletAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit AutoLiquify(0 / stor17 - uint255(stor14.field_1) - stor15, swapThreshold * uint255(stor14.field_1) / stor17);
                uint8(stor19.field_168) = 0
            else:
                if routerAddress == arg1:
                    uint8(stor19.field_168) = 1
                    if 0 or swapAndLiquify:
                        if swapThreshold and 0 > -1 / swapThreshold:
                            revert with 0, 17
                        if not stor17:
                            revert with 0, 18
                        if swapThreshold and stor15 > -1 / swapThreshold:
                            revert with 0, 17
                        if not stor17:
                            revert with 0, 18
                        if 0 / stor17 > !(swapThreshold * stor15 / stor17):
                            revert with 0, 17
                        if swapThreshold < (0 / stor17) + (swapThreshold * stor15 / stor17):
                            revert with 0, 17
                        mem[128] = this.address
                        mem[160] = WAVAXAddress
                        mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[196] = swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17)
                        idx = 0
                        s = 388
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
                            args swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if stor17 < 0:
                            revert with 0, 17
                        if stor17 < stor15:
                            revert with 0, 17
                        if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                            revert with 0, 17
                        balanceOf[this.address] -= swapThreshold * stor15 / stor17
                        if stor5B8C > !(swapThreshold * stor15 / stor17):
                            revert with 0, 17
                        stor5B8C += swapThreshold * stor15 / stor17
                        emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                        if not stor17 - stor15:
                            revert with 0, 18
                        if False and stor13 > 0:
                            revert with 0, 17
                        if not stor17 - stor15:
                            revert with 0, 18
                        if False and stor16 > 0:
                            revert with 0, 17
                        if not stor17 - stor15:
                            revert with 0, 18
                        require ext_code.size(stor20)
                        call stor20.deposit() with:
                           value 0 / stor17 - stor15 wei
                             gas gas_remaining wei
                        call marketingWalletAddress with:
                           value 0 / stor17 - stor15 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / stor17:
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / stor17 - stor15 wei
                                 gas gas_remaining wei
                                args this.address, 0 / stor17, 0, 0, marketingWalletAddress, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit AutoLiquify(0 / stor17 - stor15, 0 / stor17);
                    else:
                        if swapThreshold and uint255(stor14.field_1) > -1 / swapThreshold:
                            revert with 0, 17
                        if not stor17:
                            revert with 0, 18
                        if swapThreshold and stor15 > -1 / swapThreshold:
                            revert with 0, 17
                        if not stor17:
                            revert with 0, 18
                        if swapThreshold * uint255(stor14.field_1) / stor17 > !(swapThreshold * stor15 / stor17):
                            revert with 0, 17
                        if swapThreshold < (swapThreshold * uint255(stor14.field_1) / stor17) + (swapThreshold * stor15 / stor17):
                            revert with 0, 17
                        mem[128] = this.address
                        mem[160] = WAVAXAddress
                        mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[196] = swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17)
                        idx = 0
                        s = 388
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
                            args swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if stor17 < uint255(stor14.field_1):
                            revert with 0, 17
                        if stor17 - uint255(stor14.field_1) < stor15:
                            revert with 0, 17
                        if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                            revert with 0, 17
                        balanceOf[this.address] -= swapThreshold * stor15 / stor17
                        if stor5B8C > !(swapThreshold * stor15 / stor17):
                            revert with 0, 17
                        stor5B8C += swapThreshold * stor15 / stor17
                        emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                        if False and uint255(stor14.field_1) > 0:
                            revert with 0, 17
                        if not stor17 - uint255(stor14.field_1) - stor15:
                            revert with 0, 18
                        if False and stor13 > 0:
                            revert with 0, 17
                        if not stor17 - uint255(stor14.field_1) - stor15:
                            revert with 0, 18
                        if False and stor16 > 0:
                            revert with 0, 17
                        if not stor17 - uint255(stor14.field_1) - stor15:
                            revert with 0, 18
                        require ext_code.size(stor20)
                        call stor20.deposit() with:
                           value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                             gas gas_remaining wei
                        call marketingWalletAddress with:
                           value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if swapThreshold * uint255(stor14.field_1) / stor17:
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                 gas gas_remaining wei
                                args this.address, swapThreshold * uint255(stor14.field_1) / stor17, 0, 0, marketingWalletAddress, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit AutoLiquify(0 / stor17 - uint255(stor14.field_1) - stor15, swapThreshold * uint255(stor14.field_1) / stor17);
                    uint8(stor19.field_168) = 0
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if stor25[address(msg.sender)]:
            if stor25[address(msg.sender)]:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                require ext_code.size(stor20)
                if not stor24[address(msg.sender)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[address(msg.sender)]
                if not stor24[address(arg1)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                call stor20.process(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor11
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg2 and stor17 > -1 / arg2:
                    revert with 0, 17
                if not stor18:
                    revert with 0, 18
                if balanceOf[this.address] > !(arg2 * stor17 / stor18):
                    revert with 0, 17
                balanceOf[this.address] += arg2 * stor17 / stor18
                emit Transfer((arg2 * stor17 / stor18), msg.sender, this.address);
                if arg2 < arg2 * stor17 / stor18:
                    revert with 0, 17
                if balanceOf[address(arg1)] > !(arg2 - (arg2 * stor17 / stor18)):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor17 / stor18)
                require ext_code.size(stor20)
                if not stor24[address(msg.sender)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[address(msg.sender)]
                if not stor24[address(arg1)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                call stor20.process(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor11
                emit Transfer((arg2 - (arg2 * stor17 / stor18)), msg.sender, arg1);
        else:
            if stor25[address(arg1)]:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                require ext_code.size(stor20)
                if not stor24[address(msg.sender)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[address(msg.sender)]
                if not stor24[address(arg1)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                call stor20.process(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor11
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg2 and stor17 > -1 / arg2:
                    revert with 0, 17
                if not stor18:
                    revert with 0, 18
                if balanceOf[this.address] > !(arg2 * stor17 / stor18):
                    revert with 0, 17
                balanceOf[this.address] += arg2 * stor17 / stor18
                emit Transfer((arg2 * stor17 / stor18), msg.sender, this.address);
                if arg2 < arg2 * stor17 / stor18:
                    revert with 0, 17
                if balanceOf[address(arg1)] > !(arg2 - (arg2 * stor17 / stor18)):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor17 / stor18)
                require ext_code.size(stor20)
                if not stor24[address(msg.sender)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[address(msg.sender)]
                if not stor24[address(arg1)]:
                    call stor20.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                call stor20.process(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor11
                emit Transfer((arg2 - (arg2 * stor17 / stor18)), msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xc6616ba1(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe5225381(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe5225381(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if unknown_0xe73217f5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor27[address(arg1)] = 1
                    emit 0x71ada328: address(arg1)
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(arg1)
                    emit OwnershipTransferred(owner, address(arg1));
                if unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return routerAddress
                if unknown_0xf8b45b05(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return maxWallet
                require unknown_0xfe575a87(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                return bool(stor27[address(arg1)])
            if uint32(call.func_hash) >> 224 != unknown_0xc6616ba1(?????):
                if unknown_0xd2fcc001(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor23[address(arg1)] = uint8(bool(arg2))
                else:
                    if unknown_0xd4c989d3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor22[address(arg1)] = uint8(bool(arg2))
                    else:
                        if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            require arg2 == address(arg2)
                            return allowance[address(arg1)][address(arg2)]
                        require unknown_0xdf8408fe(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor25[address(arg1)] = uint8(bool(arg2))
            else:
                require not msg.value
                require calldata.size - 4 >= 128
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                uint256(stor14.field_0) = arg1
                stor13 = arg2
                stor16 = arg4
                stor15 = arg3
                if arg1 > !arg2:
                    revert with 0, 17
                if arg1 + arg2 > !arg4:
                    revert with 0, 17
                if arg1 + arg2 + arg4 > !arg3:
                    revert with 0, 17
                stor17 = arg1 + arg2 + arg4 + arg3
        if unknown_0xa716d661(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0x91c04cfb(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor24[address(arg1)] = uint8(bool(arg2))
            else:
                if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return '', 0
                if uint32(call.func_hash) >> 224 != unknown_0x9d1944f5(?????):
                    require unknown_0xa51af4c5(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return distributorAddress
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor11 = arg1
        if unknown_0xa716d661(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == bool(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            Mask(96, 0, stor19.field_160) = Mask(96, 0, bool(arg1))
        if unknown_0xa8aa1b31(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return pairAddress
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if uint32(call.func_hash) >> 224 != unknown_0xaa7235c5(?????):
                require unknown_0xb29ad50a(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return bool(swapAndLiquify)
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            stor27[address(arg1)] = 0
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if uint8(stor19.field_168):
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
        else:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Transfer : You can't transfer more than your balance.'
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            if balanceOf[address(arg1)] + arg2 >= maxWallet:
                if not stor23[address(arg1)]:
                    revert with 0, 'Transfer : You can't exceed the max wallet amount of tokens.'
            if arg2 <= 0:
                revert with 0, 'Transfer : Amount is null (amount > 0).'
            if arg2 > maxTxAmount:
                if not stor22[address(msg.sender)]:
                    revert with 0, 'Transfer : TX Limit Exceeded'
            if swapThreshold <= balanceOf[this.address]:
                if stor26[address(arg1)]:
                    uint8(stor19.field_168) = 1
                    if 0 or swapAndLiquify:
                        if swapThreshold and 0 > -1 / swapThreshold:
                            revert with 0, 17
                        if not stor17:
                            revert with 0, 18
                        if swapThreshold and stor15 > -1 / swapThreshold:
                            revert with 0, 17
                        if not stor17:
                            revert with 0, 18
                        if 0 / stor17 > !(swapThreshold * stor15 / stor17):
                            revert with 0, 17
                        if swapThreshold < (0 / stor17) + (swapThreshold * stor15 / stor17):
                            revert with 0, 17
                        mem[160] = this.address
                        mem[192] = WAVAXAddress
                        mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[228] = swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17)
                        idx = 0
                        s = 420
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
                            args swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if stor17 < 0:
                            revert with 0, 17
                        if stor17 < stor15:
                            revert with 0, 17
                        if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                            revert with 0, 17
                        balanceOf[this.address] -= swapThreshold * stor15 / stor17
                        if stor5B8C > !(swapThreshold * stor15 / stor17):
                            revert with 0, 17
                        stor5B8C += swapThreshold * stor15 / stor17
                        emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                        if not stor17 - stor15:
                            revert with 0, 18
                        if False and stor13 > 0:
                            revert with 0, 17
                        if not stor17 - stor15:
                            revert with 0, 18
                        if False and stor16 > 0:
                            revert with 0, 17
                        if not stor17 - stor15:
                            revert with 0, 18
                        require ext_code.size(stor20)
                        call stor20.deposit() with:
                           value 0 / stor17 - stor15 wei
                             gas gas_remaining wei
                        call marketingWalletAddress with:
                           value 0 / stor17 - stor15 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / stor17:
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / stor17 - stor15 wei
                                 gas gas_remaining wei
                                args this.address, 0 / stor17, 0, 0, marketingWalletAddress, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit AutoLiquify(0 / stor17 - stor15, 0 / stor17);
                    else:
                        if swapThreshold and uint255(stor14.field_1) > -1 / swapThreshold:
                            revert with 0, 17
                        if not stor17:
                            revert with 0, 18
                        if swapThreshold and stor15 > -1 / swapThreshold:
                            revert with 0, 17
                        if not stor17:
                            revert with 0, 18
                        if swapThreshold * uint255(stor14.field_1) / stor17 > !(swapThreshold * stor15 / stor17):
                            revert with 0, 17
                        if swapThreshold < (swapThreshold * uint255(stor14.field_1) / stor17) + (swapThreshold * stor15 / stor17):
                            revert with 0, 17
                        mem[160] = this.address
                        mem[192] = WAVAXAddress
                        mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[228] = swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17)
                        idx = 0
                        s = 420
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
                            args swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if stor17 < uint255(stor14.field_1):
                            revert with 0, 17
                        if stor17 - uint255(stor14.field_1) < stor15:
                            revert with 0, 17
                        if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                            revert with 0, 17
                        balanceOf[this.address] -= swapThreshold * stor15 / stor17
                        if stor5B8C > !(swapThreshold * stor15 / stor17):
                            revert with 0, 17
                        stor5B8C += swapThreshold * stor15 / stor17
                        emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                        if False and uint255(stor14.field_1) > 0:
                            revert with 0, 17
                        if not stor17 - uint255(stor14.field_1) - stor15:
                            revert with 0, 18
                        if False and stor13 > 0:
                            revert with 0, 17
                        if not stor17 - uint255(stor14.field_1) - stor15:
                            revert with 0, 18
                        if False and stor16 > 0:
                            revert with 0, 17
                        if not stor17 - uint255(stor14.field_1) - stor15:
                            revert with 0, 18
                        require ext_code.size(stor20)
                        call stor20.deposit() with:
                           value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                             gas gas_remaining wei
                        call marketingWalletAddress with:
                           value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if swapThreshold * uint255(stor14.field_1) / stor17:
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                 gas gas_remaining wei
                                args this.address, swapThreshold * uint255(stor14.field_1) / stor17, 0, 0, marketingWalletAddress, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit AutoLiquify(0 / stor17 - uint255(stor14.field_1) - stor15, swapThreshold * uint255(stor14.field_1) / stor17);
                    uint8(stor19.field_168) = 0
                else:
                    if routerAddress == address(arg1):
                        uint8(stor19.field_168) = 1
                        if 0 or swapAndLiquify:
                            if swapThreshold and 0 > -1 / swapThreshold:
                                revert with 0, 17
                            if not stor17:
                                revert with 0, 18
                            if swapThreshold and stor15 > -1 / swapThreshold:
                                revert with 0, 17
                            if not stor17:
                                revert with 0, 18
                            if 0 / stor17 > !(swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            if swapThreshold < (0 / stor17) + (swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            mem[160] = this.address
                            mem[192] = WAVAXAddress
                            mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[228] = swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17)
                            idx = 0
                            s = 420
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
                                args swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if stor17 < 0:
                                revert with 0, 17
                            if stor17 < stor15:
                                revert with 0, 17
                            if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                                revert with 0, 17
                            balanceOf[this.address] -= swapThreshold * stor15 / stor17
                            if stor5B8C > !(swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            stor5B8C += swapThreshold * stor15 / stor17
                            emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                            if not stor17 - stor15:
                                revert with 0, 18
                            if False and stor13 > 0:
                                revert with 0, 17
                            if not stor17 - stor15:
                                revert with 0, 18
                            if False and stor16 > 0:
                                revert with 0, 17
                            if not stor17 - stor15:
                                revert with 0, 18
                            require ext_code.size(stor20)
                            call stor20.deposit() with:
                               value 0 / stor17 - stor15 wei
                                 gas gas_remaining wei
                            call marketingWalletAddress with:
                               value 0 / stor17 - stor15 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / stor17:
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor17 - stor15 wei
                                     gas gas_remaining wei
                                    args this.address, 0 / stor17, 0, 0, marketingWalletAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit AutoLiquify(0 / stor17 - stor15, 0 / stor17);
                        else:
                            if swapThreshold and uint255(stor14.field_1) > -1 / swapThreshold:
                                revert with 0, 17
                            if not stor17:
                                revert with 0, 18
                            if swapThreshold and stor15 > -1 / swapThreshold:
                                revert with 0, 17
                            if not stor17:
                                revert with 0, 18
                            if swapThreshold * uint255(stor14.field_1) / stor17 > !(swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            if swapThreshold < (swapThreshold * uint255(stor14.field_1) / stor17) + (swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            mem[160] = this.address
                            mem[192] = WAVAXAddress
                            mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[228] = swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17)
                            idx = 0
                            s = 420
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
                                args swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if stor17 < uint255(stor14.field_1):
                                revert with 0, 17
                            if stor17 - uint255(stor14.field_1) < stor15:
                                revert with 0, 17
                            if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                                revert with 0, 17
                            balanceOf[this.address] -= swapThreshold * stor15 / stor17
                            if stor5B8C > !(swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            stor5B8C += swapThreshold * stor15 / stor17
                            emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                            if False and uint255(stor14.field_1) > 0:
                                revert with 0, 17
                            if not stor17 - uint255(stor14.field_1) - stor15:
                                revert with 0, 18
                            if False and stor13 > 0:
                                revert with 0, 17
                            if not stor17 - uint255(stor14.field_1) - stor15:
                                revert with 0, 18
                            if False and stor16 > 0:
                                revert with 0, 17
                            if not stor17 - uint255(stor14.field_1) - stor15:
                                revert with 0, 18
                            require ext_code.size(stor20)
                            call stor20.deposit() with:
                               value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                 gas gas_remaining wei
                            call marketingWalletAddress with:
                               value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if swapThreshold * uint255(stor14.field_1) / stor17:
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                     gas gas_remaining wei
                                    args this.address, swapThreshold * uint255(stor14.field_1) / stor17, 0, 0, marketingWalletAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit AutoLiquify(0 / stor17 - uint255(stor14.field_1) - stor15, swapThreshold * uint255(stor14.field_1) / stor17);
                        uint8(stor19.field_168) = 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if stor25[address(msg.sender)]:
                if stor25[address(msg.sender)]:
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    require ext_code.size(stor20)
                    if not stor24[address(msg.sender)]:
                        call stor20.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                    if not stor24[address(arg1)]:
                        call stor20.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    call stor20.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args stor11
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if arg2 and stor17 > -1 / arg2:
                        revert with 0, 17
                    if not stor18:
                        revert with 0, 18
                    if balanceOf[this.address] > !(arg2 * stor17 / stor18):
                        revert with 0, 17
                    balanceOf[this.address] += arg2 * stor17 / stor18
                    emit Transfer((arg2 * stor17 / stor18), msg.sender, this.address);
                    if arg2 < arg2 * stor17 / stor18:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * stor17 / stor18)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor17 / stor18)
                    require ext_code.size(stor20)
                    if not stor24[address(msg.sender)]:
                        call stor20.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                    if not stor24[address(arg1)]:
                        call stor20.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    call stor20.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args stor11
                    emit Transfer((arg2 - (arg2 * stor17 / stor18)), msg.sender, address(arg1));
            else:
                if stor25[address(arg1)]:
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    require ext_code.size(stor20)
                    if not stor24[address(msg.sender)]:
                        call stor20.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                    if not stor24[address(arg1)]:
                        call stor20.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    call stor20.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args stor11
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if arg2 and stor17 > -1 / arg2:
                        revert with 0, 17
                    if not stor18:
                        revert with 0, 18
                    if balanceOf[this.address] > !(arg2 * stor17 / stor18):
                        revert with 0, 17
                    balanceOf[this.address] += arg2 * stor17 / stor18
                    emit Transfer((arg2 * stor17 / stor18), msg.sender, this.address);
                    if arg2 < arg2 * stor17 / stor18:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * stor17 / stor18)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * stor17 / stor18)
                    require ext_code.size(stor20)
                    if not stor24[address(msg.sender)]:
                        call stor20.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                    if not stor24[address(arg1)]:
                        call stor20.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    call stor20.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args stor11
                    emit Transfer((arg2 - (arg2 * stor17 / stor18)), msg.sender, address(arg1));
    else:
        if unknown_0x5342acb4(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x715018a6(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x5342acb4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    return bool(stor25[address(arg1)])
                if unknown_0x5d9644c4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return uint256(stor14.field_0), stor13, stor16, 0, 0
                if unknown_0x658c27a9(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    return bool(stor22[address(arg1)])
                if unknown_0x6dd3d39f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    return bool(stor23[address(arg1)])
                require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return balanceOf[address(arg1)]
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                if unknown_0x73b295c2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return WAVAXAddress
                if unknown_0x75f0a874(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return marketingWalletAddress
                if uint32(call.func_hash) >> 224 != unknown_0x848b86e3(?????):
                    require unknown_0x8c0b5e22(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return maxTxAmount
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                marketingWalletAddress = address(arg1)
        if unknown_0x18160ddd(?????) > uint32(call.func_hash) >> 224:
            if launch() == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if stor12:
                    revert with 0, 'Already launched'
                stor12 = 1
            else:
                if swapThreshold() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return swapThreshold
                if name() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return '', 0
                if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    allowance[msg.sender][address(arg1)] = arg2
                    emit Approval(arg2, msg.sender, address(arg1));
                    return 1
                require unknown_0x1326f357(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                maxTxAmount = arg1
                maxWallet = arg2
        if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return totalSupply
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if uint32(call.func_hash) >> 224 != unknown_0x2fc402b9(?????):
                if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 9
                require unknown_0x3268cc56(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return routerAddress
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            return bool(stor24[address(arg1)])
        require not msg.value
        require calldata.size - 4 >= 96
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        if totalSupply == allowance[address(arg1)][msg.sender]:
            if uint8(stor19.field_168):
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
            else:
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'Transfer : You can't transfer more than your balance.'
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                if balanceOf[address(arg2)] + arg3 >= maxWallet:
                    if not stor23[address(arg2)]:
                        revert with 0, 'Transfer : You can't exceed the max wallet amount of tokens.'
                if arg3 <= 0:
                    revert with 0, 'Transfer : Amount is null (amount > 0).'
                if arg3 > maxTxAmount:
                    if not stor22[address(arg1)]:
                        revert with 0, 'Transfer : TX Limit Exceeded'
                if swapThreshold <= balanceOf[this.address]:
                    if stor26[address(arg2)]:
                        uint8(stor19.field_168) = 1
                        if 0 or swapAndLiquify:
                            if swapThreshold and 0 > -1 / swapThreshold:
                                revert with 0, 17
                            if not stor17:
                                revert with 0, 18
                            if swapThreshold and stor15 > -1 / swapThreshold:
                                revert with 0, 17
                            if not stor17:
                                revert with 0, 18
                            if 0 / stor17 > !(swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            if swapThreshold < (0 / stor17) + (swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            mem[160] = this.address
                            mem[192] = WAVAXAddress
                            mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[228] = swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17)
                            idx = 0
                            s = 420
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
                                args swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if stor17 < 0:
                                revert with 0, 17
                            if stor17 < stor15:
                                revert with 0, 17
                            if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                                revert with 0, 17
                            balanceOf[this.address] -= swapThreshold * stor15 / stor17
                            if stor5B8C > !(swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            stor5B8C += swapThreshold * stor15 / stor17
                            emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                            if not stor17 - stor15:
                                revert with 0, 18
                            if False and stor13 > 0:
                                revert with 0, 17
                            if not stor17 - stor15:
                                revert with 0, 18
                            if False and stor16 > 0:
                                revert with 0, 17
                            if not stor17 - stor15:
                                revert with 0, 18
                            require ext_code.size(stor20)
                            call stor20.deposit() with:
                               value 0 / stor17 - stor15 wei
                                 gas gas_remaining wei
                            call marketingWalletAddress with:
                               value 0 / stor17 - stor15 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / stor17:
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor17 - stor15 wei
                                     gas gas_remaining wei
                                    args this.address, 0 / stor17, 0, 0, marketingWalletAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit AutoLiquify(0 / stor17 - stor15, 0 / stor17);
                        else:
                            if swapThreshold and uint255(stor14.field_1) > -1 / swapThreshold:
                                revert with 0, 17
                            if not stor17:
                                revert with 0, 18
                            if swapThreshold and stor15 > -1 / swapThreshold:
                                revert with 0, 17
                            if not stor17:
                                revert with 0, 18
                            if swapThreshold * uint255(stor14.field_1) / stor17 > !(swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            if swapThreshold < (swapThreshold * uint255(stor14.field_1) / stor17) + (swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            mem[160] = this.address
                            mem[192] = WAVAXAddress
                            mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[228] = swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17)
                            idx = 0
                            s = 420
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
                                args swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if stor17 < uint255(stor14.field_1):
                                revert with 0, 17
                            if stor17 - uint255(stor14.field_1) < stor15:
                                revert with 0, 17
                            if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                                revert with 0, 17
                            balanceOf[this.address] -= swapThreshold * stor15 / stor17
                            if stor5B8C > !(swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            stor5B8C += swapThreshold * stor15 / stor17
                            emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                            if False and uint255(stor14.field_1) > 0:
                                revert with 0, 17
                            if not stor17 - uint255(stor14.field_1) - stor15:
                                revert with 0, 18
                            if False and stor13 > 0:
                                revert with 0, 17
                            if not stor17 - uint255(stor14.field_1) - stor15:
                                revert with 0, 18
                            if False and stor16 > 0:
                                revert with 0, 17
                            if not stor17 - uint255(stor14.field_1) - stor15:
                                revert with 0, 18
                            require ext_code.size(stor20)
                            call stor20.deposit() with:
                               value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                 gas gas_remaining wei
                            call marketingWalletAddress with:
                               value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if swapThreshold * uint255(stor14.field_1) / stor17:
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                     gas gas_remaining wei
                                    args this.address, swapThreshold * uint255(stor14.field_1) / stor17, 0, 0, marketingWalletAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit AutoLiquify(0 / stor17 - uint255(stor14.field_1) - stor15, swapThreshold * uint255(stor14.field_1) / stor17);
                        uint8(stor19.field_168) = 0
                    else:
                        if routerAddress == address(arg2):
                            uint8(stor19.field_168) = 1
                            if 0 or swapAndLiquify:
                                if swapThreshold and 0 > -1 / swapThreshold:
                                    revert with 0, 17
                                if not stor17:
                                    revert with 0, 18
                                if swapThreshold and stor15 > -1 / swapThreshold:
                                    revert with 0, 17
                                if not stor17:
                                    revert with 0, 18
                                if 0 / stor17 > !(swapThreshold * stor15 / stor17):
                                    revert with 0, 17
                                if swapThreshold < (0 / stor17) + (swapThreshold * stor15 / stor17):
                                    revert with 0, 17
                                mem[160] = this.address
                                mem[192] = WAVAXAddress
                                mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[228] = swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17)
                                idx = 0
                                s = 420
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
                                    args swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if stor17 < 0:
                                    revert with 0, 17
                                if stor17 < stor15:
                                    revert with 0, 17
                                if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                                    revert with 0, 17
                                balanceOf[this.address] -= swapThreshold * stor15 / stor17
                                if stor5B8C > !(swapThreshold * stor15 / stor17):
                                    revert with 0, 17
                                stor5B8C += swapThreshold * stor15 / stor17
                                emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                                if not stor17 - stor15:
                                    revert with 0, 18
                                if False and stor13 > 0:
                                    revert with 0, 17
                                if not stor17 - stor15:
                                    revert with 0, 18
                                if False and stor16 > 0:
                                    revert with 0, 17
                                if not stor17 - stor15:
                                    revert with 0, 18
                                require ext_code.size(stor20)
                                call stor20.deposit() with:
                                   value 0 / stor17 - stor15 wei
                                     gas gas_remaining wei
                                call marketingWalletAddress with:
                                   value 0 / stor17 - stor15 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / stor17:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / stor17 - stor15 wei
                                         gas gas_remaining wei
                                        args this.address, 0 / stor17, 0, 0, marketingWalletAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit AutoLiquify(0 / stor17 - stor15, 0 / stor17);
                            else:
                                if swapThreshold and uint255(stor14.field_1) > -1 / swapThreshold:
                                    revert with 0, 17
                                if not stor17:
                                    revert with 0, 18
                                if swapThreshold and stor15 > -1 / swapThreshold:
                                    revert with 0, 17
                                if not stor17:
                                    revert with 0, 18
                                if swapThreshold * uint255(stor14.field_1) / stor17 > !(swapThreshold * stor15 / stor17):
                                    revert with 0, 17
                                if swapThreshold < (swapThreshold * uint255(stor14.field_1) / stor17) + (swapThreshold * stor15 / stor17):
                                    revert with 0, 17
                                mem[160] = this.address
                                mem[192] = WAVAXAddress
                                mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[228] = swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17)
                                idx = 0
                                s = 420
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
                                    args swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if stor17 < uint255(stor14.field_1):
                                    revert with 0, 17
                                if stor17 - uint255(stor14.field_1) < stor15:
                                    revert with 0, 17
                                if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                                    revert with 0, 17
                                balanceOf[this.address] -= swapThreshold * stor15 / stor17
                                if stor5B8C > !(swapThreshold * stor15 / stor17):
                                    revert with 0, 17
                                stor5B8C += swapThreshold * stor15 / stor17
                                emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                                if False and uint255(stor14.field_1) > 0:
                                    revert with 0, 17
                                if not stor17 - uint255(stor14.field_1) - stor15:
                                    revert with 0, 18
                                if False and stor13 > 0:
                                    revert with 0, 17
                                if not stor17 - uint255(stor14.field_1) - stor15:
                                    revert with 0, 18
                                if False and stor16 > 0:
                                    revert with 0, 17
                                if not stor17 - uint255(stor14.field_1) - stor15:
                                    revert with 0, 18
                                require ext_code.size(stor20)
                                call stor20.deposit() with:
                                   value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                     gas gas_remaining wei
                                call marketingWalletAddress with:
                                   value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if swapThreshold * uint255(stor14.field_1) / stor17:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                         gas gas_remaining wei
                                        args this.address, swapThreshold * uint255(stor14.field_1) / stor17, 0, 0, marketingWalletAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit AutoLiquify(0 / stor17 - uint255(stor14.field_1) - stor15, swapThreshold * uint255(stor14.field_1) / stor17);
                            uint8(stor19.field_168) = 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if stor25[address(arg1)]:
                    if stor25[address(arg1)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        require ext_code.size(stor20)
                        if not stor24[address(arg1)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        if not stor24[address(arg2)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), balanceOf[address(arg2)]
                        call stor20.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor11
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if arg3 and stor17 > -1 / arg3:
                            revert with 0, 17
                        if not stor18:
                            revert with 0, 18
                        if balanceOf[this.address] > !(arg3 * stor17 / stor18):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * stor17 / stor18
                        emit Transfer((arg3 * stor17 / stor18), address(arg1), this.address);
                        if arg3 < arg3 * stor17 / stor18:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * stor17 / stor18)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor17 / stor18)
                        require ext_code.size(stor20)
                        if not stor24[address(arg1)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        if not stor24[address(arg2)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), balanceOf[address(arg2)]
                        call stor20.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor11
                        emit Transfer((arg3 - (arg3 * stor17 / stor18)), address(arg1), address(arg2));
                else:
                    if stor25[address(arg2)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        require ext_code.size(stor20)
                        if not stor24[address(arg1)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        if not stor24[address(arg2)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), balanceOf[address(arg2)]
                        call stor20.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor11
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if arg3 and stor17 > -1 / arg3:
                            revert with 0, 17
                        if not stor18:
                            revert with 0, 18
                        if balanceOf[this.address] > !(arg3 * stor17 / stor18):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * stor17 / stor18
                        emit Transfer((arg3 * stor17 / stor18), address(arg1), this.address);
                        if arg3 < arg3 * stor17 / stor18:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * stor17 / stor18)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor17 / stor18)
                        require ext_code.size(stor20)
                        if not stor24[address(arg1)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        if not stor24[address(arg2)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), balanceOf[address(arg2)]
                        call stor20.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor11
                        emit Transfer((arg3 - (arg3 * stor17 / stor18)), address(arg1), address(arg2));
        else:
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 'Insufficient Allowance', 0
            allowance[address(arg1)][msg.sender] -= arg3
            if uint8(stor19.field_168):
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
            else:
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'Transfer : You can't transfer more than your balance.'
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                if balanceOf[address(arg2)] + arg3 >= maxWallet:
                    if not stor23[address(arg2)]:
                        revert with 0, 'Transfer : You can't exceed the max wallet amount of tokens.'
                if arg3 <= 0:
                    revert with 0, 'Transfer : Amount is null (amount > 0).'
                if arg3 > maxTxAmount:
                    if not stor22[address(arg1)]:
                        revert with 0, 'Transfer : TX Limit Exceeded'
                if swapThreshold <= balanceOf[this.address]:
                    if stor26[address(arg2)]:
                        uint8(stor19.field_168) = 1
                        if 0 or swapAndLiquify:
                            if swapThreshold and 0 > -1 / swapThreshold:
                                revert with 0, 17
                            if not stor17:
                                revert with 0, 18
                            if swapThreshold and stor15 > -1 / swapThreshold:
                                revert with 0, 17
                            if not stor17:
                                revert with 0, 18
                            if 0 / stor17 > !(swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            if swapThreshold < (0 / stor17) + (swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            mem[224] = this.address
                            mem[256] = WAVAXAddress
                            mem[288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[292] = swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17)
                            idx = 0
                            s = 484
                            t = 224
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[484 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if stor17 < 0:
                                revert with 0, 17
                            if stor17 < stor15:
                                revert with 0, 17
                            if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                                revert with 0, 17
                            balanceOf[this.address] -= swapThreshold * stor15 / stor17
                            if stor5B8C > !(swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            stor5B8C += swapThreshold * stor15 / stor17
                            emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                            if not stor17 - stor15:
                                revert with 0, 18
                            if False and stor13 > 0:
                                revert with 0, 17
                            if not stor17 - stor15:
                                revert with 0, 18
                            if False and stor16 > 0:
                                revert with 0, 17
                            if not stor17 - stor15:
                                revert with 0, 18
                            require ext_code.size(stor20)
                            call stor20.deposit() with:
                               value 0 / stor17 - stor15 wei
                                 gas gas_remaining wei
                            call marketingWalletAddress with:
                               value 0 / stor17 - stor15 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / stor17:
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor17 - stor15 wei
                                     gas gas_remaining wei
                                    args this.address, 0 / stor17, 0, 0, marketingWalletAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit AutoLiquify(0 / stor17 - stor15, 0 / stor17);
                        else:
                            if swapThreshold and uint255(stor14.field_1) > -1 / swapThreshold:
                                revert with 0, 17
                            if not stor17:
                                revert with 0, 18
                            if swapThreshold and stor15 > -1 / swapThreshold:
                                revert with 0, 17
                            if not stor17:
                                revert with 0, 18
                            if swapThreshold * uint255(stor14.field_1) / stor17 > !(swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            if swapThreshold < (swapThreshold * uint255(stor14.field_1) / stor17) + (swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            mem[224] = this.address
                            mem[256] = WAVAXAddress
                            mem[288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[292] = swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17)
                            idx = 0
                            s = 484
                            t = 224
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[484 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if stor17 < uint255(stor14.field_1):
                                revert with 0, 17
                            if stor17 - uint255(stor14.field_1) < stor15:
                                revert with 0, 17
                            if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                                revert with 0, 17
                            balanceOf[this.address] -= swapThreshold * stor15 / stor17
                            if stor5B8C > !(swapThreshold * stor15 / stor17):
                                revert with 0, 17
                            stor5B8C += swapThreshold * stor15 / stor17
                            emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                            if False and uint255(stor14.field_1) > 0:
                                revert with 0, 17
                            if not stor17 - uint255(stor14.field_1) - stor15:
                                revert with 0, 18
                            if False and stor13 > 0:
                                revert with 0, 17
                            if not stor17 - uint255(stor14.field_1) - stor15:
                                revert with 0, 18
                            if False and stor16 > 0:
                                revert with 0, 17
                            if not stor17 - uint255(stor14.field_1) - stor15:
                                revert with 0, 18
                            require ext_code.size(stor20)
                            call stor20.deposit() with:
                               value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                 gas gas_remaining wei
                            call marketingWalletAddress with:
                               value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if swapThreshold * uint255(stor14.field_1) / stor17:
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                     gas gas_remaining wei
                                    args this.address, swapThreshold * uint255(stor14.field_1) / stor17, 0, 0, marketingWalletAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit AutoLiquify(0 / stor17 - uint255(stor14.field_1) - stor15, swapThreshold * uint255(stor14.field_1) / stor17);
                        uint8(stor19.field_168) = 0
                    else:
                        if routerAddress == address(arg2):
                            uint8(stor19.field_168) = 1
                            if 0 or swapAndLiquify:
                                if swapThreshold and 0 > -1 / swapThreshold:
                                    revert with 0, 17
                                if not stor17:
                                    revert with 0, 18
                                if swapThreshold and stor15 > -1 / swapThreshold:
                                    revert with 0, 17
                                if not stor17:
                                    revert with 0, 18
                                if 0 / stor17 > !(swapThreshold * stor15 / stor17):
                                    revert with 0, 17
                                if swapThreshold < (0 / stor17) + (swapThreshold * stor15 / stor17):
                                    revert with 0, 17
                                mem[224] = this.address
                                mem[256] = WAVAXAddress
                                mem[288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[292] = swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17)
                                idx = 0
                                s = 484
                                t = 224
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args swapThreshold - (0 / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[484 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if stor17 < 0:
                                    revert with 0, 17
                                if stor17 < stor15:
                                    revert with 0, 17
                                if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                                    revert with 0, 17
                                balanceOf[this.address] -= swapThreshold * stor15 / stor17
                                if stor5B8C > !(swapThreshold * stor15 / stor17):
                                    revert with 0, 17
                                stor5B8C += swapThreshold * stor15 / stor17
                                emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                                if not stor17 - stor15:
                                    revert with 0, 18
                                if False and stor13 > 0:
                                    revert with 0, 17
                                if not stor17 - stor15:
                                    revert with 0, 18
                                if False and stor16 > 0:
                                    revert with 0, 17
                                if not stor17 - stor15:
                                    revert with 0, 18
                                require ext_code.size(stor20)
                                call stor20.deposit() with:
                                   value 0 / stor17 - stor15 wei
                                     gas gas_remaining wei
                                call marketingWalletAddress with:
                                   value 0 / stor17 - stor15 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / stor17:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / stor17 - stor15 wei
                                         gas gas_remaining wei
                                        args this.address, 0 / stor17, 0, 0, marketingWalletAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit AutoLiquify(0 / stor17 - stor15, 0 / stor17);
                            else:
                                if swapThreshold and uint255(stor14.field_1) > -1 / swapThreshold:
                                    revert with 0, 17
                                if not stor17:
                                    revert with 0, 18
                                if swapThreshold and stor15 > -1 / swapThreshold:
                                    revert with 0, 17
                                if not stor17:
                                    revert with 0, 18
                                if swapThreshold * uint255(stor14.field_1) / stor17 > !(swapThreshold * stor15 / stor17):
                                    revert with 0, 17
                                if swapThreshold < (swapThreshold * uint255(stor14.field_1) / stor17) + (swapThreshold * stor15 / stor17):
                                    revert with 0, 17
                                mem[224] = this.address
                                mem[256] = WAVAXAddress
                                mem[288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[292] = swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17)
                                idx = 0
                                s = 484
                                t = 224
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args swapThreshold - (swapThreshold * uint255(stor14.field_1) / stor17) - (swapThreshold * stor15 / stor17), 0, 160, address(this.address), block.timestamp, 2, mem[484 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if stor17 < uint255(stor14.field_1):
                                    revert with 0, 17
                                if stor17 - uint255(stor14.field_1) < stor15:
                                    revert with 0, 17
                                if balanceOf[this.address] < swapThreshold * stor15 / stor17:
                                    revert with 0, 17
                                balanceOf[this.address] -= swapThreshold * stor15 / stor17
                                if stor5B8C > !(swapThreshold * stor15 / stor17):
                                    revert with 0, 17
                                stor5B8C += swapThreshold * stor15 / stor17
                                emit Transfer((swapThreshold * stor15 / stor17), this.address, 0);
                                if False and uint255(stor14.field_1) > 0:
                                    revert with 0, 17
                                if not stor17 - uint255(stor14.field_1) - stor15:
                                    revert with 0, 18
                                if False and stor13 > 0:
                                    revert with 0, 17
                                if not stor17 - uint255(stor14.field_1) - stor15:
                                    revert with 0, 18
                                if False and stor16 > 0:
                                    revert with 0, 17
                                if not stor17 - uint255(stor14.field_1) - stor15:
                                    revert with 0, 18
                                require ext_code.size(stor20)
                                call stor20.deposit() with:
                                   value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                     gas gas_remaining wei
                                call marketingWalletAddress with:
                                   value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if swapThreshold * uint255(stor14.field_1) / stor17:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / stor17 - uint255(stor14.field_1) - stor15 wei
                                         gas gas_remaining wei
                                        args this.address, swapThreshold * uint255(stor14.field_1) / stor17, 0, 0, marketingWalletAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit AutoLiquify(0 / stor17 - uint255(stor14.field_1) - stor15, swapThreshold * uint255(stor14.field_1) / stor17);
                            uint8(stor19.field_168) = 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if stor25[address(arg1)]:
                    if stor25[address(arg1)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        require ext_code.size(stor20)
                        if not stor24[address(arg1)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        if not stor24[address(arg2)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), balanceOf[address(arg2)]
                        call stor20.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor11
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if arg3 and stor17 > -1 / arg3:
                            revert with 0, 17
                        if not stor18:
                            revert with 0, 18
                        if balanceOf[this.address] > !(arg3 * stor17 / stor18):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * stor17 / stor18
                        emit Transfer((arg3 * stor17 / stor18), address(arg1), this.address);
                        if arg3 < arg3 * stor17 / stor18:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * stor17 / stor18)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor17 / stor18)
                        require ext_code.size(stor20)
                        if not stor24[address(arg1)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        if not stor24[address(arg2)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), balanceOf[address(arg2)]
                        call stor20.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor11
                        emit Transfer((arg3 - (arg3 * stor17 / stor18)), address(arg1), address(arg2));
                else:
                    if stor25[address(arg2)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        require ext_code.size(stor20)
                        if not stor24[address(arg1)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        if not stor24[address(arg2)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), balanceOf[address(arg2)]
                        call stor20.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor11
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if arg3 and stor17 > -1 / arg3:
                            revert with 0, 17
                        if not stor18:
                            revert with 0, 18
                        if balanceOf[this.address] > !(arg3 * stor17 / stor18):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * stor17 / stor18
                        emit Transfer((arg3 * stor17 / stor18), address(arg1), this.address);
                        if arg3 < arg3 * stor17 / stor18:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * stor17 / stor18)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * stor17 / stor18)
                        require ext_code.size(stor20)
                        if not stor24[address(arg1)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        if not stor24[address(arg2)]:
                            call stor20.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), balanceOf[address(arg2)]
                        call stor20.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args stor11
                        emit Transfer((arg3 - (arg3 * stor17 / stor18)), address(arg1), address(arg2));
    return 1
}



}
