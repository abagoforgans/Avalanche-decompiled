contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = '', 0

const decimals = 9

const symbol = '', 0

const MASK = test266151307()


address stor0;
mapping of uint8 stor1;
address routerAddress;
address WAVAXAddress;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address sub_5094771dAddress;
address autoLiquidityReceiverAddress;
address pairAddress;
uint256 totalSupply;
uint256 stor13;
uint256 _maxTxAmount;
uint256 _maxWallet;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor18;
mapping of uint8 stor19;
mapping of uint8 stor20;
uint256 stor21;
uint256 stor22; offset 1
uint256 stor22;
uint256 multipliedFee;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor29;

function swapThreshold() {
    return swapThreshold
}

function checkFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    return bool(stor20[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function _isFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[arg1])
}

function sub_5094771d(?) {
    return sub_5094771dAddress
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function WAVAX() {
    return WAVAXAddress
}

function getTotalFee() {
    return multipliedFee
}

function _maxTxAmount() {
    return _maxTxAmount
}

function _maxWallet() {
    return _maxWallet
}

function pair() {
    return pairAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function getMultipliedFee() {
    return multipliedFee
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

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (stor0 == arg1)
}

function setFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor20[address(arg1)] = 1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unSetFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor20[address(arg1)] = 0
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor25 = arg1
    stor26 = arg2
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= totalSupply / 1000
    _maxTxAmount = arg1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= totalSupply / 1000
    _maxWallet = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor18[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor19[address(arg1)] = uint8(arg2)
}

function Sweep() {
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    sub_5094771dAddress = arg2
}

function sub_ab17870c(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor6 != msg.sender:
        revert with 0, 'ERC20: cannot permit dev address'
    stor7 = address(arg2)
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    stor13 = 10^9 * arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    uint256(stor22.field_0) = arg1
    stor21 = arg2
    if arg1 > !arg2:
        revert with 0, 17
    multipliedFee = arg1 + arg2
    stor24 = arg3
    require multipliedFee < arg3 / 4
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
        revert with 0, 17
    if arg1 and 2 * balanceOf[stor11] > -1 / arg1:
        revert with 0, 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 18
    return (arg1 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
        revert with 0, 17
    if arg2 and 2 * balanceOf[stor11] > -1 / arg2:
        revert with 0, 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 18
    return (arg2 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function burnFrom(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: cannot permit zero address'
    if stor6 != msg.sender:
        revert with 0, 'ERC20: cannot permit dev address'
    if totalSupply > !arg1:
        revert with 0, 17
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[msg.sender] > !arg1:
        revert with 0, 17
    if balanceOf[msg.sender] + arg1 < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[msg.sender] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor29:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    else:
        if arg2 > _maxTxAmount:
            if stor19[address(msg.sender)]:
                revert with 0, 'TX Limit Exceeded'
        if stor7 != msg.sender:
            if arg2 >= stor13:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
        if pairAddress == arg1:
            if pairAddress == arg1:
                if pairAddress != msg.sender:
                    if not stor29:
                        if swapEnabled:
                            if balanceOf[this.address] >= swapThreshold:
                                stor29 = 1
                                if totalSupply < balanceOf[stor4]:
                                    revert with 0, 17
                                if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                    revert with 0, 17
                                if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                    revert with 0, 17
                                if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                    revert with 0, 17
                                if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                    revert with 0, 18
                                if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                    if swapThreshold and 0 > -1 / swapThreshold:
                                        revert with 0, 17
                                    if not multipliedFee:
                                        revert with 0, 18
                                    if swapThreshold < 0 / multipliedFee / 2:
                                        revert with 0, 17
                                    mem[128] = this.address
                                    mem[160] = WAVAXAddress
                                    mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[196] = swapThreshold - (0 / multipliedFee / 2)
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
                                        args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if multipliedFee < 0:
                                        revert with 0, 17
                                    if not multipliedFee:
                                        revert with 0, 18
                                    if False and stor21 > 0:
                                        revert with 0, 17
                                    if not multipliedFee:
                                        revert with 0, 18
                                    call sub_5094771dAddress with:
                                       value 0 / multipliedFee wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if Mask(255, 1, 0 / multipliedFee):
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / multipliedFee / 2 wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                else:
                                    if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                        revert with 0, 17
                                    if not multipliedFee:
                                        revert with 0, 18
                                    if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                        revert with 0, 17
                                    mem[128] = this.address
                                    mem[160] = WAVAXAddress
                                    mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[196] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                        args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if multipliedFee < uint255(stor22.field_1):
                                        revert with 0, 17
                                    if False and uint256(stor22.field_0) > 0:
                                        revert with 0, 17
                                    if not multipliedFee - uint255(stor22.field_1):
                                        revert with 0, 18
                                    if False and stor21 > 0:
                                        revert with 0, 17
                                    if not multipliedFee - uint255(stor22.field_1):
                                        revert with 0, 18
                                    call sub_5094771dAddress with:
                                       value 0 / multipliedFee - uint255(stor22.field_1) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                stor29 = 0
            else:
                if not stor20[address(arg1)]:
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    if balanceOf[address(arg1)] + arg2 >= _maxWallet:
                        revert with 0, 'Max wallet has been triggered'
                if pairAddress == arg1:
                    if pairAddress != msg.sender:
                        if not stor29:
                            if swapEnabled:
                                if balanceOf[this.address] >= swapThreshold:
                                    stor29 = 1
                                    if totalSupply < balanceOf[stor4]:
                                        revert with 0, 17
                                    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                        revert with 0, 17
                                    if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                        revert with 0, 17
                                    if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                        revert with 0, 17
                                    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                        revert with 0, 18
                                    if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                        if swapThreshold and 0 > -1 / swapThreshold:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        if swapThreshold < 0 / multipliedFee / 2:
                                            revert with 0, 17
                                        mem[128] = this.address
                                        mem[160] = WAVAXAddress
                                        mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[196] = swapThreshold - (0 / multipliedFee / 2)
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
                                            args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if multipliedFee < 0:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        if False and stor21 > 0:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        call sub_5094771dAddress with:
                                           value 0 / multipliedFee wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if Mask(255, 1, 0 / multipliedFee):
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / multipliedFee / 2 wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                    else:
                                        if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                            revert with 0, 17
                                        mem[128] = this.address
                                        mem[160] = WAVAXAddress
                                        mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[196] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                            args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if multipliedFee < uint255(stor22.field_1):
                                            revert with 0, 17
                                        if False and uint256(stor22.field_0) > 0:
                                            revert with 0, 17
                                        if not multipliedFee - uint255(stor22.field_1):
                                            revert with 0, 18
                                        if False and stor21 > 0:
                                            revert with 0, 17
                                        if not multipliedFee - uint255(stor22.field_1):
                                            revert with 0, 18
                                        call sub_5094771dAddress with:
                                           value 0 / multipliedFee - uint255(stor22.field_1) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                    stor29 = 0
        else:
            if stor8 == arg1:
                if pairAddress != msg.sender:
                    if not stor29:
                        if swapEnabled:
                            if balanceOf[this.address] >= swapThreshold:
                                stor29 = 1
                                if totalSupply < balanceOf[stor4]:
                                    revert with 0, 17
                                if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                    revert with 0, 17
                                if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                    revert with 0, 17
                                if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                    revert with 0, 17
                                if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                    revert with 0, 18
                                if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                    if swapThreshold and 0 > -1 / swapThreshold:
                                        revert with 0, 17
                                    if not multipliedFee:
                                        revert with 0, 18
                                    if swapThreshold < 0 / multipliedFee / 2:
                                        revert with 0, 17
                                    mem[128] = this.address
                                    mem[160] = WAVAXAddress
                                    mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[196] = swapThreshold - (0 / multipliedFee / 2)
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
                                        args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if multipliedFee < 0:
                                        revert with 0, 17
                                    if not multipliedFee:
                                        revert with 0, 18
                                    if False and stor21 > 0:
                                        revert with 0, 17
                                    if not multipliedFee:
                                        revert with 0, 18
                                    call sub_5094771dAddress with:
                                       value 0 / multipliedFee wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if Mask(255, 1, 0 / multipliedFee):
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / multipliedFee / 2 wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                else:
                                    if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                        revert with 0, 17
                                    if not multipliedFee:
                                        revert with 0, 18
                                    if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                        revert with 0, 17
                                    mem[128] = this.address
                                    mem[160] = WAVAXAddress
                                    mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[196] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                        args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if multipliedFee < uint255(stor22.field_1):
                                        revert with 0, 17
                                    if False and uint256(stor22.field_0) > 0:
                                        revert with 0, 17
                                    if not multipliedFee - uint255(stor22.field_1):
                                        revert with 0, 18
                                    if False and stor21 > 0:
                                        revert with 0, 17
                                    if not multipliedFee - uint255(stor22.field_1):
                                        revert with 0, 18
                                    call sub_5094771dAddress with:
                                       value 0 / multipliedFee - uint255(stor22.field_1) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                stor29 = 0
            else:
                if not stor20[address(arg1)]:
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    if balanceOf[address(arg1)] + arg2 >= _maxWallet:
                        revert with 0, 'Max wallet has been triggered'
                if stor8 == arg1:
                    if pairAddress != msg.sender:
                        if not stor29:
                            if swapEnabled:
                                if balanceOf[this.address] >= swapThreshold:
                                    stor29 = 1
                                    if totalSupply < balanceOf[stor4]:
                                        revert with 0, 17
                                    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                        revert with 0, 17
                                    if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                        revert with 0, 17
                                    if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                        revert with 0, 17
                                    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                        revert with 0, 18
                                    if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                        if swapThreshold and 0 > -1 / swapThreshold:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        if swapThreshold < 0 / multipliedFee / 2:
                                            revert with 0, 17
                                        mem[128] = this.address
                                        mem[160] = WAVAXAddress
                                        mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[196] = swapThreshold - (0 / multipliedFee / 2)
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
                                            args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if multipliedFee < 0:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        if False and stor21 > 0:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        call sub_5094771dAddress with:
                                           value 0 / multipliedFee wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if Mask(255, 1, 0 / multipliedFee):
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / multipliedFee / 2 wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                    else:
                                        if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                            revert with 0, 17
                                        mem[128] = this.address
                                        mem[160] = WAVAXAddress
                                        mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[196] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                            args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if multipliedFee < uint255(stor22.field_1):
                                            revert with 0, 17
                                        if False and uint256(stor22.field_0) > 0:
                                            revert with 0, 17
                                        if not multipliedFee - uint255(stor22.field_1):
                                            revert with 0, 18
                                        if False and stor21 > 0:
                                            revert with 0, 17
                                        if not multipliedFee - uint255(stor22.field_1):
                                            revert with 0, 18
                                        call sub_5094771dAddress with:
                                           value 0 / multipliedFee - uint255(stor22.field_1) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                    stor29 = 0
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        balanceOf[address(msg.sender)] -= arg2
        if stor18[address(msg.sender)]:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if arg2 and multipliedFee > -1 / arg2:
                revert with 0, 17
            if not stor24:
                revert with 0, 18
            if balanceOf[this.address] > !(arg2 * multipliedFee / stor24):
                revert with 0, 17
            balanceOf[this.address] += arg2 * multipliedFee / stor24
            emit Transfer((arg2 * multipliedFee / stor24), msg.sender, this.address);
            if arg2 < arg2 * multipliedFee / stor24:
                revert with 0, 17
            if balanceOf[address(arg1)] > !(arg2 - (arg2 * multipliedFee / stor24)):
                revert with 0, 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * multipliedFee / stor24)
            emit Transfer((arg2 - (arg2 * multipliedFee / stor24)), msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x73b295c2(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xca33e64c(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe91f214e(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe91f214e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return test266151307()
                if unknown_0xf0b37c04(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if stor0 != msg.sender:
                        revert with 0, '!OWNER'
                    stor1[address(arg1)] = 0
                else:
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if stor0 != msg.sender:
                            revert with 0, '!OWNER'
                        stor0 = address(arg1)
                        stor1[address(arg1)] = 1
                        emit OwnershipTransferred(address(arg1));
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xf84ba65d(?????):
                            if unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return routerAddress
                            require unknown_0xfe9fbb80(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return bool(stor1[address(arg1)])
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if not stor1[address(msg.sender)]:
                            revert with 0, '!AUTHORIZED'
                        stor19[address(arg1)] = uint8(bool(arg2))
            else:
                if unknown_0xca33e64c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return autoLiquidityReceiverAddress
                if unknown_0xcec10c11(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    if not stor1[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    uint256(stor22.field_0) = arg1
                    stor21 = arg2
                    if arg1 > !arg2:
                        revert with 0, 17
                    multipliedFee = arg1 + arg2
                    stor24 = arg3
                    require multipliedFee < arg3 / 4
                else:
                    if unknown_0xd51ed1c8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if totalSupply < balanceOf[stor4]:
                            revert with 0, 17
                        if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                            revert with 0, 17
                        if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                            revert with 0, 17
                        if arg1 and 2 * balanceOf[stor11] > -1 / arg1:
                            revert with 0, 17
                        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                            revert with 0, 18
                        return (arg1 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
                    if unknown_0xd806d12f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return multipliedFee
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        return allowance[address(arg1)][address(arg2)]
                    require unknown_0xdf20fd49(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == bool(arg1)
                    if not stor1[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    swapEnabled = uint8(bool(arg1))
                    swapThreshold = arg2
        if unknown_0x95d89b41(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x73b295c2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return WAVAXAddress
            if unknown_0x7ae316d0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return multipliedFee
            if unknown_0x7d1db4a5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return _maxTxAmount
            if unknown_0x82247ec0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return _maxWallet
            require unknown_0x89ef69f6(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if stor0 != msg.sender:
                revert with 0, '!OWNER'
            stor20[address(arg1)] = 1
        if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return '', 0
        if unknown_0xa4b45c00(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if not stor1[address(msg.sender)]:
                revert with 0, '!AUTHORIZED'
            autoLiquidityReceiverAddress = address(arg1)
            sub_5094771dAddress = address(arg2)
        if unknown_0xa8aa1b31(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return pairAddress
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if uint32(call.func_hash) >> 224 != unknown_0xab17870c(?????):
                require unknown_0xb6a5d7de(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if stor0 != msg.sender:
                    revert with 0, '!OWNER'
                stor1[address(arg1)] = 1
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg2 == address(arg2)
                if stor6 != msg.sender:
                    revert with 0, 'ERC20: cannot permit dev address'
                stor7 = address(arg2)
                if arg1 and 10^9 > -1 / arg1:
                    revert with 0, 17
                stor13 = 10^9 * arg1
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if stor29:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient Balance', 0
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
        else:
            if arg2 > _maxTxAmount:
                if stor19[address(msg.sender)]:
                    revert with 0, 'TX Limit Exceeded'
            if stor7 != msg.sender:
                if arg2 >= stor13:
                    revert with 0, 'Transfer amount exceeds the maxTxAmount.'
            if pairAddress == address(arg1):
                if pairAddress == address(arg1):
                    if pairAddress != msg.sender:
                        if not stor29:
                            if swapEnabled:
                                if balanceOf[this.address] >= swapThreshold:
                                    stor29 = 1
                                    if totalSupply < balanceOf[stor4]:
                                        revert with 0, 17
                                    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                        revert with 0, 17
                                    if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                        revert with 0, 17
                                    if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                        revert with 0, 17
                                    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                        revert with 0, 18
                                    if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                        if swapThreshold and 0 > -1 / swapThreshold:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        if swapThreshold < 0 / multipliedFee / 2:
                                            revert with 0, 17
                                        mem[160] = this.address
                                        mem[192] = WAVAXAddress
                                        mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[228] = swapThreshold - (0 / multipliedFee / 2)
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
                                            args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if multipliedFee < 0:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        if False and stor21 > 0:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        call sub_5094771dAddress with:
                                           value 0 / multipliedFee wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if Mask(255, 1, 0 / multipliedFee):
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / multipliedFee / 2 wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                    else:
                                        if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                            revert with 0, 17
                                        mem[160] = this.address
                                        mem[192] = WAVAXAddress
                                        mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[228] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                            args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if multipliedFee < uint255(stor22.field_1):
                                            revert with 0, 17
                                        if False and uint256(stor22.field_0) > 0:
                                            revert with 0, 17
                                        if not multipliedFee - uint255(stor22.field_1):
                                            revert with 0, 18
                                        if False and stor21 > 0:
                                            revert with 0, 17
                                        if not multipliedFee - uint255(stor22.field_1):
                                            revert with 0, 18
                                        call sub_5094771dAddress with:
                                           value 0 / multipliedFee - uint255(stor22.field_1) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                    stor29 = 0
                else:
                    if not stor20[address(arg1)]:
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        if balanceOf[address(arg1)] + arg2 >= _maxWallet:
                            revert with 0, 'Max wallet has been triggered'
                    if pairAddress == address(arg1):
                        if pairAddress != msg.sender:
                            if not stor29:
                                if swapEnabled:
                                    if balanceOf[this.address] >= swapThreshold:
                                        stor29 = 1
                                        if totalSupply < balanceOf[stor4]:
                                            revert with 0, 17
                                        if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                            revert with 0, 17
                                        if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                            revert with 0, 17
                                        if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                            revert with 0, 17
                                        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                            revert with 0, 18
                                        if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                            if swapThreshold and 0 > -1 / swapThreshold:
                                                revert with 0, 17
                                            if not multipliedFee:
                                                revert with 0, 18
                                            if swapThreshold < 0 / multipliedFee / 2:
                                                revert with 0, 17
                                            mem[160] = this.address
                                            mem[192] = WAVAXAddress
                                            mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[228] = swapThreshold - (0 / multipliedFee / 2)
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
                                                args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if multipliedFee < 0:
                                                revert with 0, 17
                                            if not multipliedFee:
                                                revert with 0, 18
                                            if False and stor21 > 0:
                                                revert with 0, 17
                                            if not multipliedFee:
                                                revert with 0, 18
                                            call sub_5094771dAddress with:
                                               value 0 / multipliedFee wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if Mask(255, 1, 0 / multipliedFee):
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / multipliedFee / 2 wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                        else:
                                            if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                                revert with 0, 17
                                            if not multipliedFee:
                                                revert with 0, 18
                                            if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                                revert with 0, 17
                                            mem[160] = this.address
                                            mem[192] = WAVAXAddress
                                            mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[228] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                                args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if multipliedFee < uint255(stor22.field_1):
                                                revert with 0, 17
                                            if False and uint256(stor22.field_0) > 0:
                                                revert with 0, 17
                                            if not multipliedFee - uint255(stor22.field_1):
                                                revert with 0, 18
                                            if False and stor21 > 0:
                                                revert with 0, 17
                                            if not multipliedFee - uint255(stor22.field_1):
                                                revert with 0, 18
                                            call sub_5094771dAddress with:
                                               value 0 / multipliedFee - uint255(stor22.field_1) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                        stor29 = 0
            else:
                if stor8 == address(arg1):
                    if pairAddress != msg.sender:
                        if not stor29:
                            if swapEnabled:
                                if balanceOf[this.address] >= swapThreshold:
                                    stor29 = 1
                                    if totalSupply < balanceOf[stor4]:
                                        revert with 0, 17
                                    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                        revert with 0, 17
                                    if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                        revert with 0, 17
                                    if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                        revert with 0, 17
                                    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                        revert with 0, 18
                                    if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                        if swapThreshold and 0 > -1 / swapThreshold:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        if swapThreshold < 0 / multipliedFee / 2:
                                            revert with 0, 17
                                        mem[160] = this.address
                                        mem[192] = WAVAXAddress
                                        mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[228] = swapThreshold - (0 / multipliedFee / 2)
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
                                            args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if multipliedFee < 0:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        if False and stor21 > 0:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        call sub_5094771dAddress with:
                                           value 0 / multipliedFee wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if Mask(255, 1, 0 / multipliedFee):
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / multipliedFee / 2 wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                    else:
                                        if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                            revert with 0, 17
                                        if not multipliedFee:
                                            revert with 0, 18
                                        if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                            revert with 0, 17
                                        mem[160] = this.address
                                        mem[192] = WAVAXAddress
                                        mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[228] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                            args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if multipliedFee < uint255(stor22.field_1):
                                            revert with 0, 17
                                        if False and uint256(stor22.field_0) > 0:
                                            revert with 0, 17
                                        if not multipliedFee - uint255(stor22.field_1):
                                            revert with 0, 18
                                        if False and stor21 > 0:
                                            revert with 0, 17
                                        if not multipliedFee - uint255(stor22.field_1):
                                            revert with 0, 18
                                        call sub_5094771dAddress with:
                                           value 0 / multipliedFee - uint255(stor22.field_1) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                            require ext_code.size(routerAddress)
                                            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                    stor29 = 0
                else:
                    if not stor20[address(arg1)]:
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        if balanceOf[address(arg1)] + arg2 >= _maxWallet:
                            revert with 0, 'Max wallet has been triggered'
                    if stor8 == address(arg1):
                        if pairAddress != msg.sender:
                            if not stor29:
                                if swapEnabled:
                                    if balanceOf[this.address] >= swapThreshold:
                                        stor29 = 1
                                        if totalSupply < balanceOf[stor4]:
                                            revert with 0, 17
                                        if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                            revert with 0, 17
                                        if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                            revert with 0, 17
                                        if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                            revert with 0, 17
                                        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                            revert with 0, 18
                                        if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                            if swapThreshold and 0 > -1 / swapThreshold:
                                                revert with 0, 17
                                            if not multipliedFee:
                                                revert with 0, 18
                                            if swapThreshold < 0 / multipliedFee / 2:
                                                revert with 0, 17
                                            mem[160] = this.address
                                            mem[192] = WAVAXAddress
                                            mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[228] = swapThreshold - (0 / multipliedFee / 2)
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
                                                args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if multipliedFee < 0:
                                                revert with 0, 17
                                            if not multipliedFee:
                                                revert with 0, 18
                                            if False and stor21 > 0:
                                                revert with 0, 17
                                            if not multipliedFee:
                                                revert with 0, 18
                                            call sub_5094771dAddress with:
                                               value 0 / multipliedFee wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if Mask(255, 1, 0 / multipliedFee):
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / multipliedFee / 2 wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                        else:
                                            if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                                revert with 0, 17
                                            if not multipliedFee:
                                                revert with 0, 18
                                            if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                                revert with 0, 17
                                            mem[160] = this.address
                                            mem[192] = WAVAXAddress
                                            mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[228] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                                args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if multipliedFee < uint255(stor22.field_1):
                                                revert with 0, 17
                                            if False and uint256(stor22.field_0) > 0:
                                                revert with 0, 17
                                            if not multipliedFee - uint255(stor22.field_1):
                                                revert with 0, 18
                                            if False and stor21 > 0:
                                                revert with 0, 17
                                            if not multipliedFee - uint255(stor22.field_1):
                                                revert with 0, 18
                                            call sub_5094771dAddress with:
                                               value 0 / multipliedFee - uint255(stor22.field_1) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                                require ext_code.size(routerAddress)
                                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                        stor29 = 0
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient Balance', 0
            balanceOf[address(msg.sender)] -= arg2
            if stor18[address(msg.sender)]:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, address(arg1));
            else:
                if arg2 and multipliedFee > -1 / arg2:
                    revert with 0, 17
                if not stor24:
                    revert with 0, 18
                if balanceOf[this.address] > !(arg2 * multipliedFee / stor24):
                    revert with 0, 17
                balanceOf[this.address] += arg2 * multipliedFee / stor24
                emit Transfer((arg2 * multipliedFee / stor24), msg.sender, this.address);
                if arg2 < arg2 * multipliedFee / stor24:
                    revert with 0, 17
                if balanceOf[address(arg1)] > !(arg2 - (arg2 * multipliedFee / stor24)):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * multipliedFee / stor24)
                emit Transfer((arg2 - (arg2 * multipliedFee / stor24)), msg.sender, address(arg1));
    else:
        if unknown_0x2f54bf6e(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x5c85974f(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x5c85974f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not stor1[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    require arg1 >= totalSupply / 1000
                    _maxTxAmount = arg1
                if unknown_0x5d0044ca(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not stor1[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    require arg1 >= totalSupply / 1000
                    _maxWallet = arg1
                if unknown_0x658d4b7f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if not stor1[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    stor18[address(arg1)] = uint8(bool(arg2))
                if unknown_0x6ddd1713(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(swapEnabled)
                if unknown_0x7088fb7f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if stor0 != msg.sender:
                        revert with 0, '!OWNER'
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return balanceOf[address(arg1)]
            if unknown_0x2f54bf6e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return (stor0 == address(arg1))
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 9
            if unknown_0x3425c001(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if stor0 != msg.sender:
                    revert with 0, '!OWNER'
                stor20[address(arg1)] = 0
            if unknown_0x5094771d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_5094771dAddress
            require unknown_0x571ac8b0(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            allowance[msg.sender][address(arg1)] = totalSupply
            emit Approval(totalSupply, msg.sender, address(arg1));
        else:
            if unknown_0x18160ddd(?????) > uint32(call.func_hash) >> 224:
                if swapThreshold() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return swapThreshold
                if name() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return '', 0
                if checkFree(address arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if stor0 != msg.sender:
                        revert with 0, '!OWNER'
                    return bool(stor20[address(arg1)])
                if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    allowance[msg.sender][address(arg1)] = arg2
                    emit Approval(arg2, msg.sender, address(arg1));
                    return 1
                require unknown_0x1161ae39(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                if totalSupply < balanceOf[stor4]:
                    revert with 0, 17
                if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                    revert with 0, 17
                if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                    revert with 0, 17
                if arg2 and 2 * balanceOf[stor11] > -1 / arg2:
                    revert with 0, 17
                if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                    revert with 0, 18
                return (arg2 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalSupply
            if unknown_0x201e7991(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                if not stor1[address(msg.sender)]:
                    revert with 0, '!AUTHORIZED'
                stor25 = arg1
                stor26 = arg2
            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x274ff7ce(?????):
                    if unknown_0x296020e7(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor20[arg1])
                    require unknown_0x2b112e49(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if totalSupply < balanceOf[stor4]:
                        revert with 0, 17
                    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                        revert with 0, 17
                    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
                require not msg.value
                require calldata.size - 4 >= 32
                if not msg.sender:
                    revert with 0, 'ERC20: cannot permit zero address'
                if stor6 != msg.sender:
                    revert with 0, 'ERC20: cannot permit dev address'
                if totalSupply > !arg1:
                    revert with 0, 17
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[msg.sender] > !arg1:
                    revert with 0, 17
                if balanceOf[msg.sender] + arg1 < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[msg.sender] += arg1
                emit Transfer(arg1, 0, msg.sender);
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if totalSupply == allowance[address(arg1)][msg.sender]:
                if stor29:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Insufficient Balance', 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                else:
                    if arg3 > _maxTxAmount:
                        if stor19[address(arg1)]:
                            revert with 0, 'TX Limit Exceeded'
                    if stor7 != address(arg1):
                        if arg3 >= stor13:
                            revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                    if pairAddress == address(arg2):
                        if pairAddress == address(arg2):
                            if pairAddress != msg.sender:
                                if not stor29:
                                    if swapEnabled:
                                        if balanceOf[this.address] >= swapThreshold:
                                            stor29 = 1
                                            if totalSupply < balanceOf[stor4]:
                                                revert with 0, 17
                                            if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                                revert with 0, 17
                                            if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                                revert with 0, 17
                                            if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                                revert with 0, 17
                                            if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                                revert with 0, 18
                                            if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                                if swapThreshold and 0 > -1 / swapThreshold:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                if swapThreshold < 0 / multipliedFee / 2:
                                                    revert with 0, 17
                                                mem[160] = this.address
                                                mem[192] = WAVAXAddress
                                                mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[228] = swapThreshold - (0 / multipliedFee / 2)
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
                                                    args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if multipliedFee < 0:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                if False and stor21 > 0:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                call sub_5094771dAddress with:
                                                   value 0 / multipliedFee wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if Mask(255, 1, 0 / multipliedFee):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / multipliedFee / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                            else:
                                                if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                                    revert with 0, 17
                                                mem[160] = this.address
                                                mem[192] = WAVAXAddress
                                                mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[228] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                                    args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if multipliedFee < uint255(stor22.field_1):
                                                    revert with 0, 17
                                                if False and uint256(stor22.field_0) > 0:
                                                    revert with 0, 17
                                                if not multipliedFee - uint255(stor22.field_1):
                                                    revert with 0, 18
                                                if False and stor21 > 0:
                                                    revert with 0, 17
                                                if not multipliedFee - uint255(stor22.field_1):
                                                    revert with 0, 18
                                                call sub_5094771dAddress with:
                                                   value 0 / multipliedFee - uint255(stor22.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                            stor29 = 0
                        else:
                            if not stor20[address(arg2)]:
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] + arg3 >= _maxWallet:
                                    revert with 0, 'Max wallet has been triggered'
                            if pairAddress == address(arg2):
                                if pairAddress != msg.sender:
                                    if not stor29:
                                        if swapEnabled:
                                            if balanceOf[this.address] >= swapThreshold:
                                                stor29 = 1
                                                if totalSupply < balanceOf[stor4]:
                                                    revert with 0, 17
                                                if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                                    revert with 0, 17
                                                if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                                    revert with 0, 17
                                                if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                                    revert with 0, 17
                                                if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                                    revert with 0, 18
                                                if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                                    if swapThreshold and 0 > -1 / swapThreshold:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    if swapThreshold < 0 / multipliedFee / 2:
                                                        revert with 0, 17
                                                    mem[160] = this.address
                                                    mem[192] = WAVAXAddress
                                                    mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[228] = swapThreshold - (0 / multipliedFee / 2)
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
                                                        args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if multipliedFee < 0:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    if False and stor21 > 0:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    call sub_5094771dAddress with:
                                                       value 0 / multipliedFee wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if Mask(255, 1, 0 / multipliedFee):
                                                        require ext_code.size(routerAddress)
                                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                           value 0 / multipliedFee / 2 wei
                                                             gas gas_remaining wei
                                                            args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                                else:
                                                    if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                                        revert with 0, 17
                                                    mem[160] = this.address
                                                    mem[192] = WAVAXAddress
                                                    mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[228] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                                        args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if multipliedFee < uint255(stor22.field_1):
                                                        revert with 0, 17
                                                    if False and uint256(stor22.field_0) > 0:
                                                        revert with 0, 17
                                                    if not multipliedFee - uint255(stor22.field_1):
                                                        revert with 0, 18
                                                    if False and stor21 > 0:
                                                        revert with 0, 17
                                                    if not multipliedFee - uint255(stor22.field_1):
                                                        revert with 0, 18
                                                    call sub_5094771dAddress with:
                                                       value 0 / multipliedFee - uint255(stor22.field_1) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                                        require ext_code.size(routerAddress)
                                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                           value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                             gas gas_remaining wei
                                                            args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                                stor29 = 0
                    else:
                        if stor8 == address(arg2):
                            if pairAddress != msg.sender:
                                if not stor29:
                                    if swapEnabled:
                                        if balanceOf[this.address] >= swapThreshold:
                                            stor29 = 1
                                            if totalSupply < balanceOf[stor4]:
                                                revert with 0, 17
                                            if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                                revert with 0, 17
                                            if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                                revert with 0, 17
                                            if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                                revert with 0, 17
                                            if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                                revert with 0, 18
                                            if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                                if swapThreshold and 0 > -1 / swapThreshold:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                if swapThreshold < 0 / multipliedFee / 2:
                                                    revert with 0, 17
                                                mem[160] = this.address
                                                mem[192] = WAVAXAddress
                                                mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[228] = swapThreshold - (0 / multipliedFee / 2)
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
                                                    args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if multipliedFee < 0:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                if False and stor21 > 0:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                call sub_5094771dAddress with:
                                                   value 0 / multipliedFee wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if Mask(255, 1, 0 / multipliedFee):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / multipliedFee / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                            else:
                                                if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                                    revert with 0, 17
                                                mem[160] = this.address
                                                mem[192] = WAVAXAddress
                                                mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[228] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                                    args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if multipliedFee < uint255(stor22.field_1):
                                                    revert with 0, 17
                                                if False and uint256(stor22.field_0) > 0:
                                                    revert with 0, 17
                                                if not multipliedFee - uint255(stor22.field_1):
                                                    revert with 0, 18
                                                if False and stor21 > 0:
                                                    revert with 0, 17
                                                if not multipliedFee - uint255(stor22.field_1):
                                                    revert with 0, 18
                                                call sub_5094771dAddress with:
                                                   value 0 / multipliedFee - uint255(stor22.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                            stor29 = 0
                        else:
                            if not stor20[address(arg2)]:
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] + arg3 >= _maxWallet:
                                    revert with 0, 'Max wallet has been triggered'
                            if stor8 == address(arg2):
                                if pairAddress != msg.sender:
                                    if not stor29:
                                        if swapEnabled:
                                            if balanceOf[this.address] >= swapThreshold:
                                                stor29 = 1
                                                if totalSupply < balanceOf[stor4]:
                                                    revert with 0, 17
                                                if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                                    revert with 0, 17
                                                if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                                    revert with 0, 17
                                                if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                                    revert with 0, 17
                                                if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                                    revert with 0, 18
                                                if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                                    if swapThreshold and 0 > -1 / swapThreshold:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    if swapThreshold < 0 / multipliedFee / 2:
                                                        revert with 0, 17
                                                    mem[160] = this.address
                                                    mem[192] = WAVAXAddress
                                                    mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[228] = swapThreshold - (0 / multipliedFee / 2)
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
                                                        args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if multipliedFee < 0:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    if False and stor21 > 0:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    call sub_5094771dAddress with:
                                                       value 0 / multipliedFee wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if Mask(255, 1, 0 / multipliedFee):
                                                        require ext_code.size(routerAddress)
                                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                           value 0 / multipliedFee / 2 wei
                                                             gas gas_remaining wei
                                                            args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                                else:
                                                    if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                                        revert with 0, 17
                                                    mem[160] = this.address
                                                    mem[192] = WAVAXAddress
                                                    mem[224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[228] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                                        args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if multipliedFee < uint255(stor22.field_1):
                                                        revert with 0, 17
                                                    if False and uint256(stor22.field_0) > 0:
                                                        revert with 0, 17
                                                    if not multipliedFee - uint255(stor22.field_1):
                                                        revert with 0, 18
                                                    if False and stor21 > 0:
                                                        revert with 0, 17
                                                    if not multipliedFee - uint255(stor22.field_1):
                                                        revert with 0, 18
                                                    call sub_5094771dAddress with:
                                                       value 0 / multipliedFee - uint255(stor22.field_1) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                                        require ext_code.size(routerAddress)
                                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                           value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                             gas gas_remaining wei
                                                            args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                                stor29 = 0
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Insufficient Balance', 0
                    balanceOf[address(arg1)] -= arg3
                    if stor18[address(arg1)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if arg3 and multipliedFee > -1 / arg3:
                            revert with 0, 17
                        if not stor24:
                            revert with 0, 18
                        if balanceOf[this.address] > !(arg3 * multipliedFee / stor24):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * multipliedFee / stor24
                        emit Transfer((arg3 * multipliedFee / stor24), address(arg1), this.address);
                        if arg3 < arg3 * multipliedFee / stor24:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * multipliedFee / stor24)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * multipliedFee / stor24)
                        emit Transfer((arg3 - (arg3 * multipliedFee / stor24)), address(arg1), address(arg2));
            else:
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 'Insufficient Allowance', 0
                allowance[address(arg1)][msg.sender] -= arg3
                if stor29:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Insufficient Balance', 0
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                else:
                    if arg3 > _maxTxAmount:
                        if stor19[address(arg1)]:
                            revert with 0, 'TX Limit Exceeded'
                    if stor7 != address(arg1):
                        if arg3 >= stor13:
                            revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                    if pairAddress == address(arg2):
                        if pairAddress == address(arg2):
                            if pairAddress != msg.sender:
                                if not stor29:
                                    if swapEnabled:
                                        if balanceOf[this.address] >= swapThreshold:
                                            stor29 = 1
                                            if totalSupply < balanceOf[stor4]:
                                                revert with 0, 17
                                            if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                                revert with 0, 17
                                            if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                                revert with 0, 17
                                            if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                                revert with 0, 17
                                            if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                                revert with 0, 18
                                            if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                                if swapThreshold and 0 > -1 / swapThreshold:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                if swapThreshold < 0 / multipliedFee / 2:
                                                    revert with 0, 17
                                                mem[224] = this.address
                                                mem[256] = WAVAXAddress
                                                mem[288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[292] = swapThreshold - (0 / multipliedFee / 2)
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
                                                    args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[484 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if multipliedFee < 0:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                if False and stor21 > 0:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                call sub_5094771dAddress with:
                                                   value 0 / multipliedFee wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if Mask(255, 1, 0 / multipliedFee):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / multipliedFee / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                            else:
                                                if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                                    revert with 0, 17
                                                mem[224] = this.address
                                                mem[256] = WAVAXAddress
                                                mem[288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[292] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                                    args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[484 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if multipliedFee < uint255(stor22.field_1):
                                                    revert with 0, 17
                                                if False and uint256(stor22.field_0) > 0:
                                                    revert with 0, 17
                                                if not multipliedFee - uint255(stor22.field_1):
                                                    revert with 0, 18
                                                if False and stor21 > 0:
                                                    revert with 0, 17
                                                if not multipliedFee - uint255(stor22.field_1):
                                                    revert with 0, 18
                                                call sub_5094771dAddress with:
                                                   value 0 / multipliedFee - uint255(stor22.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                            stor29 = 0
                        else:
                            if not stor20[address(arg2)]:
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] + arg3 >= _maxWallet:
                                    revert with 0, 'Max wallet has been triggered'
                            if pairAddress == address(arg2):
                                if pairAddress != msg.sender:
                                    if not stor29:
                                        if swapEnabled:
                                            if balanceOf[this.address] >= swapThreshold:
                                                stor29 = 1
                                                if totalSupply < balanceOf[stor4]:
                                                    revert with 0, 17
                                                if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                                    revert with 0, 17
                                                if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                                    revert with 0, 17
                                                if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                                    revert with 0, 17
                                                if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                                    revert with 0, 18
                                                if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                                    if swapThreshold and 0 > -1 / swapThreshold:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    if swapThreshold < 0 / multipliedFee / 2:
                                                        revert with 0, 17
                                                    mem[224] = this.address
                                                    mem[256] = WAVAXAddress
                                                    mem[288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[292] = swapThreshold - (0 / multipliedFee / 2)
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
                                                        args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[484 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if multipliedFee < 0:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    if False and stor21 > 0:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    call sub_5094771dAddress with:
                                                       value 0 / multipliedFee wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if Mask(255, 1, 0 / multipliedFee):
                                                        require ext_code.size(routerAddress)
                                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                           value 0 / multipliedFee / 2 wei
                                                             gas gas_remaining wei
                                                            args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                                else:
                                                    if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                                        revert with 0, 17
                                                    mem[224] = this.address
                                                    mem[256] = WAVAXAddress
                                                    mem[288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[292] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                                        args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[484 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if multipliedFee < uint255(stor22.field_1):
                                                        revert with 0, 17
                                                    if False and uint256(stor22.field_0) > 0:
                                                        revert with 0, 17
                                                    if not multipliedFee - uint255(stor22.field_1):
                                                        revert with 0, 18
                                                    if False and stor21 > 0:
                                                        revert with 0, 17
                                                    if not multipliedFee - uint255(stor22.field_1):
                                                        revert with 0, 18
                                                    call sub_5094771dAddress with:
                                                       value 0 / multipliedFee - uint255(stor22.field_1) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                                        require ext_code.size(routerAddress)
                                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                           value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                             gas gas_remaining wei
                                                            args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                                stor29 = 0
                    else:
                        if stor8 == address(arg2):
                            if pairAddress != msg.sender:
                                if not stor29:
                                    if swapEnabled:
                                        if balanceOf[this.address] >= swapThreshold:
                                            stor29 = 1
                                            if totalSupply < balanceOf[stor4]:
                                                revert with 0, 17
                                            if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                                revert with 0, 17
                                            if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                                revert with 0, 17
                                            if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                                revert with 0, 17
                                            if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                                revert with 0, 18
                                            if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                                if swapThreshold and 0 > -1 / swapThreshold:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                if swapThreshold < 0 / multipliedFee / 2:
                                                    revert with 0, 17
                                                mem[224] = this.address
                                                mem[256] = WAVAXAddress
                                                mem[288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[292] = swapThreshold - (0 / multipliedFee / 2)
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
                                                    args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[484 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if multipliedFee < 0:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                if False and stor21 > 0:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                call sub_5094771dAddress with:
                                                   value 0 / multipliedFee wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if Mask(255, 1, 0 / multipliedFee):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / multipliedFee / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                            else:
                                                if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                                    revert with 0, 17
                                                if not multipliedFee:
                                                    revert with 0, 18
                                                if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                                    revert with 0, 17
                                                mem[224] = this.address
                                                mem[256] = WAVAXAddress
                                                mem[288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[292] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                                    args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[484 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if multipliedFee < uint255(stor22.field_1):
                                                    revert with 0, 17
                                                if False and uint256(stor22.field_0) > 0:
                                                    revert with 0, 17
                                                if not multipliedFee - uint255(stor22.field_1):
                                                    revert with 0, 18
                                                if False and stor21 > 0:
                                                    revert with 0, 17
                                                if not multipliedFee - uint255(stor22.field_1):
                                                    revert with 0, 18
                                                call sub_5094771dAddress with:
                                                   value 0 / multipliedFee - uint255(stor22.field_1) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                            stor29 = 0
                        else:
                            if not stor20[address(arg2)]:
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] + arg3 >= _maxWallet:
                                    revert with 0, 'Max wallet has been triggered'
                            if stor8 == address(arg2):
                                if pairAddress != msg.sender:
                                    if not stor29:
                                        if swapEnabled:
                                            if balanceOf[this.address] >= swapThreshold:
                                                stor29 = 1
                                                if totalSupply < balanceOf[stor4]:
                                                    revert with 0, 17
                                                if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
                                                    revert with 0, 17
                                                if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
                                                    revert with 0, 17
                                                if stor26 and 2 * balanceOf[stor11] > -1 / stor26:
                                                    revert with 0, 17
                                                if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
                                                    revert with 0, 18
                                                if stor26 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > stor25:
                                                    if swapThreshold and 0 > -1 / swapThreshold:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    if swapThreshold < 0 / multipliedFee / 2:
                                                        revert with 0, 17
                                                    mem[224] = this.address
                                                    mem[256] = WAVAXAddress
                                                    mem[288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[292] = swapThreshold - (0 / multipliedFee / 2)
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
                                                        args swapThreshold - (0 / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[484 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if multipliedFee < 0:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    if False and stor21 > 0:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    call sub_5094771dAddress with:
                                                       value 0 / multipliedFee wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if Mask(255, 1, 0 / multipliedFee):
                                                        require ext_code.size(routerAddress)
                                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                           value 0 / multipliedFee / 2 wei
                                                             gas gas_remaining wei
                                                            args this.address, Mask(255, 1, 0 / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        emit AutoLiquify(Mask(255, 1, 0 / multipliedFee), 0 / multipliedFee / 2);
                                                else:
                                                    if swapThreshold and uint256(stor22.field_0) > -1 / swapThreshold:
                                                        revert with 0, 17
                                                    if not multipliedFee:
                                                        revert with 0, 18
                                                    if swapThreshold < swapThreshold * uint256(stor22.field_0) / multipliedFee / 2:
                                                        revert with 0, 17
                                                    mem[224] = this.address
                                                    mem[256] = WAVAXAddress
                                                    mem[288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[292] = swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2)
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
                                                        args swapThreshold - (swapThreshold * uint256(stor22.field_0) / multipliedFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[484 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if multipliedFee < uint255(stor22.field_1):
                                                        revert with 0, 17
                                                    if False and uint256(stor22.field_0) > 0:
                                                        revert with 0, 17
                                                    if not multipliedFee - uint255(stor22.field_1):
                                                        revert with 0, 18
                                                    if False and stor21 > 0:
                                                        revert with 0, 17
                                                    if not multipliedFee - uint255(stor22.field_1):
                                                        revert with 0, 18
                                                    call sub_5094771dAddress with:
                                                       value 0 / multipliedFee - uint255(stor22.field_1) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee):
                                                        require ext_code.size(routerAddress)
                                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                           value 0 / multipliedFee - uint255(stor22.field_1) / 2 wei
                                                             gas gas_remaining wei
                                                            args this.address, Mask(255, 1, swapThreshold * uint256(stor22.field_0) / multipliedFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                        emit AutoLiquify(Mask(255, 1, 0 / multipliedFee - uint255(stor22.field_1)), swapThreshold * uint256(stor22.field_0) / multipliedFee / 2);
                                                stor29 = 0
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Insufficient Balance', 0
                    balanceOf[address(arg1)] -= arg3
                    if stor18[address(arg1)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if arg3 and multipliedFee > -1 / arg3:
                            revert with 0, 17
                        if not stor24:
                            revert with 0, 18
                        if balanceOf[this.address] > !(arg3 * multipliedFee / stor24):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * multipliedFee / stor24
                        emit Transfer((arg3 * multipliedFee / stor24), address(arg1), this.address);
                        if arg3 < arg3 * multipliedFee / stor24:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * multipliedFee / stor24)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * multipliedFee / stor24)
                        emit Transfer((arg3 - (arg3 * multipliedFee / stor24)), address(arg1), address(arg2));
    return 1
}



}
