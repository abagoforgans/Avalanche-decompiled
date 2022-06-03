contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'Hedcoin2', 0

const totalSupply = 1000000000000000 * 10^18

const decimals = 18

const symbol = 'HED2', 0


address owner;
mapping of uint8 stor1;
address WAVAXAddress;
address routerAddress;
uint256 _maxTxAmount;
uint256 _maxWallet;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor12; offset 1
uint256 liquidityFee;
uint256 buybackFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 totalFee;
uint256 feeDenominator;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address routerAddress;
address pairAddress;
uint256 stor22;
uint256 stor23;
address distributorAddress;
address distributorAddress;
uint256 stor26;
uint256 swapThreshold;
uint8 stor28;

function swapThreshold() {
    return swapThreshold
}

function feeDenominator() {
    return feeDenominator
}

function totalFee() {
    return totalFee
}

function routerAddress() {
    return routerAddress
}

function buybackFee() {
    return buybackFee
}

function marketingFee() {
    return marketingFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function WAVAX() {
    return WAVAXAddress
}

function _maxTxAmount() {
    return _maxTxAmount
}

function _maxWallet() {
    return _maxWallet
}

function reflectionFee() {
    return reflectionFee
}

function getOwner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
}

function distributorAddress() {
    return distributorAddress
}

function pair() {
    return pairAddress
}

function distributor() {
    return distributorAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function sub_cfb5c78d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    return bool(stor9[address(arg1)])
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

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == owner)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor26 = arg1
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= 1000000000000 * 10^18
    _maxTxAmount = arg1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= 1000000000000 * 10^18
    _maxWallet = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sub_bb74c1a2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor9[address(arg1)] = uint8(bool(arg2))
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = 1000000000000000 * 10^18
    emit Approval(1000000000000000 * 10^18, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor6[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor7[address(arg1)] = uint8(arg2)
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[stor21] and 2 > -1 / balanceOf[stor21]:
        revert with 'NH{q', 17
    if arg1 and 2 * balanceOf[stor21] > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * 2 * balanceOf[stor21] / 1000000000000000 * 10^18)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[stor21] and 2 > -1 / balanceOf[stor21]:
        revert with 'NH{q', 17
    if arg2 and 2 * balanceOf[stor21] > -1 / arg2:
        revert with 'NH{q', 17
    return (arg2 * 2 * balanceOf[stor21] / 1000000000000000 * 10^18 > arg1)
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor8[address(arg1)] = uint8(arg2)
    require ext_code.size(distributorAddress)
    if not arg2:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor28:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if arg2 > _maxTxAmount:
            if not stor7[address(msg.sender)]:
                revert with 0, 'TX Limit Exceeded'
        if arg1 == pairAddress:
            if arg1 == pairAddress:
                if pairAddress != msg.sender:
                    if not stor28:
                        if balanceOf[address(this.address)] >= swapThreshold:
                            stor28 = 1
                            if balanceOf[stor21] and 2 > -1 / balanceOf[stor21]:
                                revert with 'NH{q', 17
                            if stor23 and 2 * balanceOf[stor21] > -1 / stor23:
                                revert with 'NH{q', 17
                            if stor23 * 2 * balanceOf[stor21] / 1000000000000000 * 10^18 > stor22:
                                if balanceOf[address(this.address)] and 0 > -1 / balanceOf[address(this.address)]:
                                    revert with 'NH{q', 17
                                if not totalFee:
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)] < 0 / totalFee / 2:
                                    revert with 'NH{q', 17
                                mem[128] = this.address
                                mem[160] = WAVAXAddress
                                mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[196] = balanceOf[address(this.address)] - (0 / totalFee / 2)
                                idx = 0
                                s = 128
                                t = 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)] - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if totalFee < liquidityFee:
                                    revert with 'NH{q', 17
                                if totalFee - liquidityFee > -1:
                                    revert with 'NH{q', 17
                                if False and reflectionFee > 0:
                                    revert with 'NH{q', 17
                                if not totalFee - liquidityFee:
                                    revert with 'NH{q', 18
                                require ext_code.size(distributorAddress)
                                call distributorAddress.deposit() with:
                                   value 0 / totalFee - liquidityFee wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if False and marketingFee > 0:
                                    revert with 'NH{q', 17
                                if not totalFee - liquidityFee:
                                    revert with 'NH{q', 18
                                call marketingFeeReceiverAddress with:
                                   value 0 / totalFee - liquidityFee wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalFee - liquidityFee:
                                    revert with 'NH{q', 18
                                if 0 / totalFee / 2 > 0:
                                    if block.timestamp > -2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / totalFee - liquidityFee wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, 0 / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    emit AutoLiquify(0 / totalFee - liquidityFee, 0 / totalFee / 2);
                            else:
                                if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                                    revert with 'NH{q', 17
                                if not totalFee:
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)] * liquidityFee / totalFee / 2:
                                    revert with 'NH{q', 17
                                mem[128] = this.address
                                mem[160] = WAVAXAddress
                                mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[196] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * liquidityFee / totalFee / 2)
                                idx = 0
                                s = 128
                                t = 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * liquidityFee / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if totalFee < liquidityFee:
                                    revert with 'NH{q', 17
                                if totalFee - liquidityFee > -stor12 - 1:
                                    revert with 'NH{q', 17
                                if False and reflectionFee > 0:
                                    revert with 'NH{q', 17
                                if not totalFee - liquidityFee + stor12:
                                    revert with 'NH{q', 18
                                require ext_code.size(distributorAddress)
                                call distributorAddress.deposit() with:
                                   value 0 / totalFee - liquidityFee + stor12 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if False and marketingFee > 0:
                                    revert with 'NH{q', 17
                                if not totalFee - liquidityFee + stor12:
                                    revert with 'NH{q', 18
                                call marketingFeeReceiverAddress with:
                                   value 0 / totalFee - liquidityFee + stor12 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if False and liquidityFee > 0:
                                    revert with 'NH{q', 17
                                if not totalFee - liquidityFee + stor12:
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)] * liquidityFee / totalFee / 2 > 0:
                                    if block.timestamp > -2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / totalFee - liquidityFee + stor12 wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    emit AutoLiquify(0 / totalFee - liquidityFee + stor12, balanceOf[address(this.address)] * liquidityFee / totalFee / 2);
                            stor28 = 0
            else:
                if not stor9[address(arg1)]:
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 >= _maxWallet:
                        revert with 0, 'Max wallet has been triggered'
                if arg1 == pairAddress:
                    if pairAddress != msg.sender:
                        if not stor28:
                            if balanceOf[address(this.address)] >= swapThreshold:
                                stor28 = 1
                                if balanceOf[stor21] and 2 > -1 / balanceOf[stor21]:
                                    revert with 'NH{q', 17
                                if stor23 and 2 * balanceOf[stor21] > -1 / stor23:
                                    revert with 'NH{q', 17
                                if stor23 * 2 * balanceOf[stor21] / 1000000000000000 * 10^18 > stor22:
                                    if balanceOf[address(this.address)] and 0 > -1 / balanceOf[address(this.address)]:
                                        revert with 'NH{q', 17
                                    if not totalFee:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] < 0 / totalFee / 2:
                                        revert with 'NH{q', 17
                                    mem[128] = this.address
                                    mem[160] = WAVAXAddress
                                    mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[196] = balanceOf[address(this.address)] - (0 / totalFee / 2)
                                    idx = 0
                                    s = 128
                                    t = 388
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 'NH{q', 17
                                    if totalFee < liquidityFee:
                                        revert with 'NH{q', 17
                                    if totalFee - liquidityFee > -1:
                                        revert with 'NH{q', 17
                                    if False and reflectionFee > 0:
                                        revert with 'NH{q', 17
                                    if not totalFee - liquidityFee:
                                        revert with 'NH{q', 18
                                    require ext_code.size(distributorAddress)
                                    call distributorAddress.deposit() with:
                                       value 0 / totalFee - liquidityFee wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if False and marketingFee > 0:
                                        revert with 'NH{q', 17
                                    if not totalFee - liquidityFee:
                                        revert with 'NH{q', 18
                                    call marketingFeeReceiverAddress with:
                                       value 0 / totalFee - liquidityFee wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalFee - liquidityFee:
                                        revert with 'NH{q', 18
                                    if 0 / totalFee / 2 > 0:
                                        if block.timestamp > -2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / totalFee - liquidityFee wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, 0 / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(0 / totalFee - liquidityFee, 0 / totalFee / 2);
                                else:
                                    if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                                        revert with 'NH{q', 17
                                    if not totalFee:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)] * liquidityFee / totalFee / 2:
                                        revert with 'NH{q', 17
                                    mem[128] = this.address
                                    mem[160] = WAVAXAddress
                                    mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[196] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * liquidityFee / totalFee / 2)
                                    idx = 0
                                    s = 128
                                    t = 388
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * liquidityFee / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 'NH{q', 17
                                    if totalFee < liquidityFee:
                                        revert with 'NH{q', 17
                                    if totalFee - liquidityFee > -stor12 - 1:
                                        revert with 'NH{q', 17
                                    if False and reflectionFee > 0:
                                        revert with 'NH{q', 17
                                    if not totalFee - liquidityFee + stor12:
                                        revert with 'NH{q', 18
                                    require ext_code.size(distributorAddress)
                                    call distributorAddress.deposit() with:
                                       value 0 / totalFee - liquidityFee + stor12 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if False and marketingFee > 0:
                                        revert with 'NH{q', 17
                                    if not totalFee - liquidityFee + stor12:
                                        revert with 'NH{q', 18
                                    call marketingFeeReceiverAddress with:
                                       value 0 / totalFee - liquidityFee + stor12 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if False and liquidityFee > 0:
                                        revert with 'NH{q', 17
                                    if not totalFee - liquidityFee + stor12:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] * liquidityFee / totalFee / 2 > 0:
                                        if block.timestamp > -2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / totalFee - liquidityFee + stor12 wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(0 / totalFee - liquidityFee + stor12, balanceOf[address(this.address)] * liquidityFee / totalFee / 2);
                                stor28 = 0
        else:
            if arg1 == routerAddress:
                if pairAddress != msg.sender:
                    if not stor28:
                        if balanceOf[address(this.address)] >= swapThreshold:
                            stor28 = 1
                            if balanceOf[stor21] and 2 > -1 / balanceOf[stor21]:
                                revert with 'NH{q', 17
                            if stor23 and 2 * balanceOf[stor21] > -1 / stor23:
                                revert with 'NH{q', 17
                            if stor23 * 2 * balanceOf[stor21] / 1000000000000000 * 10^18 > stor22:
                                if balanceOf[address(this.address)] and 0 > -1 / balanceOf[address(this.address)]:
                                    revert with 'NH{q', 17
                                if not totalFee:
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)] < 0 / totalFee / 2:
                                    revert with 'NH{q', 17
                                mem[128] = this.address
                                mem[160] = WAVAXAddress
                                mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[196] = balanceOf[address(this.address)] - (0 / totalFee / 2)
                                idx = 0
                                s = 128
                                t = 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)] - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if totalFee < liquidityFee:
                                    revert with 'NH{q', 17
                                if totalFee - liquidityFee > -1:
                                    revert with 'NH{q', 17
                                if False and reflectionFee > 0:
                                    revert with 'NH{q', 17
                                if not totalFee - liquidityFee:
                                    revert with 'NH{q', 18
                                require ext_code.size(distributorAddress)
                                call distributorAddress.deposit() with:
                                   value 0 / totalFee - liquidityFee wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if False and marketingFee > 0:
                                    revert with 'NH{q', 17
                                if not totalFee - liquidityFee:
                                    revert with 'NH{q', 18
                                call marketingFeeReceiverAddress with:
                                   value 0 / totalFee - liquidityFee wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalFee - liquidityFee:
                                    revert with 'NH{q', 18
                                if 0 / totalFee / 2 > 0:
                                    if block.timestamp > -2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / totalFee - liquidityFee wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, 0 / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    emit AutoLiquify(0 / totalFee - liquidityFee, 0 / totalFee / 2);
                            else:
                                if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                                    revert with 'NH{q', 17
                                if not totalFee:
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)] * liquidityFee / totalFee / 2:
                                    revert with 'NH{q', 17
                                mem[128] = this.address
                                mem[160] = WAVAXAddress
                                mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[196] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * liquidityFee / totalFee / 2)
                                idx = 0
                                s = 128
                                t = 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * liquidityFee / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if totalFee < liquidityFee:
                                    revert with 'NH{q', 17
                                if totalFee - liquidityFee > -stor12 - 1:
                                    revert with 'NH{q', 17
                                if False and reflectionFee > 0:
                                    revert with 'NH{q', 17
                                if not totalFee - liquidityFee + stor12:
                                    revert with 'NH{q', 18
                                require ext_code.size(distributorAddress)
                                call distributorAddress.deposit() with:
                                   value 0 / totalFee - liquidityFee + stor12 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if False and marketingFee > 0:
                                    revert with 'NH{q', 17
                                if not totalFee - liquidityFee + stor12:
                                    revert with 'NH{q', 18
                                call marketingFeeReceiverAddress with:
                                   value 0 / totalFee - liquidityFee + stor12 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if False and liquidityFee > 0:
                                    revert with 'NH{q', 17
                                if not totalFee - liquidityFee + stor12:
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)] * liquidityFee / totalFee / 2 > 0:
                                    if block.timestamp > -2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / totalFee - liquidityFee + stor12 wei
                                         gas gas_remaining wei
                                        args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp + 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    emit AutoLiquify(0 / totalFee - liquidityFee + stor12, balanceOf[address(this.address)] * liquidityFee / totalFee / 2);
                            stor28 = 0
            else:
                if not stor9[address(arg1)]:
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 >= _maxWallet:
                        revert with 0, 'Max wallet has been triggered'
                if arg1 == routerAddress:
                    if pairAddress != msg.sender:
                        if not stor28:
                            if balanceOf[address(this.address)] >= swapThreshold:
                                stor28 = 1
                                if balanceOf[stor21] and 2 > -1 / balanceOf[stor21]:
                                    revert with 'NH{q', 17
                                if stor23 and 2 * balanceOf[stor21] > -1 / stor23:
                                    revert with 'NH{q', 17
                                if stor23 * 2 * balanceOf[stor21] / 1000000000000000 * 10^18 > stor22:
                                    if balanceOf[address(this.address)] and 0 > -1 / balanceOf[address(this.address)]:
                                        revert with 'NH{q', 17
                                    if not totalFee:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] < 0 / totalFee / 2:
                                        revert with 'NH{q', 17
                                    mem[128] = this.address
                                    mem[160] = WAVAXAddress
                                    mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[196] = balanceOf[address(this.address)] - (0 / totalFee / 2)
                                    idx = 0
                                    s = 128
                                    t = 388
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 'NH{q', 17
                                    if totalFee < liquidityFee:
                                        revert with 'NH{q', 17
                                    if totalFee - liquidityFee > -1:
                                        revert with 'NH{q', 17
                                    if False and reflectionFee > 0:
                                        revert with 'NH{q', 17
                                    if not totalFee - liquidityFee:
                                        revert with 'NH{q', 18
                                    require ext_code.size(distributorAddress)
                                    call distributorAddress.deposit() with:
                                       value 0 / totalFee - liquidityFee wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if False and marketingFee > 0:
                                        revert with 'NH{q', 17
                                    if not totalFee - liquidityFee:
                                        revert with 'NH{q', 18
                                    call marketingFeeReceiverAddress with:
                                       value 0 / totalFee - liquidityFee wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalFee - liquidityFee:
                                        revert with 'NH{q', 18
                                    if 0 / totalFee / 2 > 0:
                                        if block.timestamp > -2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / totalFee - liquidityFee wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, 0 / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(0 / totalFee - liquidityFee, 0 / totalFee / 2);
                                else:
                                    if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                                        revert with 'NH{q', 17
                                    if not totalFee:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)] * liquidityFee / totalFee / 2:
                                        revert with 'NH{q', 17
                                    mem[128] = this.address
                                    mem[160] = WAVAXAddress
                                    mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[196] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * liquidityFee / totalFee / 2)
                                    idx = 0
                                    s = 128
                                    t = 388
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * liquidityFee / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 'NH{q', 17
                                    if totalFee < liquidityFee:
                                        revert with 'NH{q', 17
                                    if totalFee - liquidityFee > -stor12 - 1:
                                        revert with 'NH{q', 17
                                    if False and reflectionFee > 0:
                                        revert with 'NH{q', 17
                                    if not totalFee - liquidityFee + stor12:
                                        revert with 'NH{q', 18
                                    require ext_code.size(distributorAddress)
                                    call distributorAddress.deposit() with:
                                       value 0 / totalFee - liquidityFee + stor12 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if False and marketingFee > 0:
                                        revert with 'NH{q', 17
                                    if not totalFee - liquidityFee + stor12:
                                        revert with 'NH{q', 18
                                    call marketingFeeReceiverAddress with:
                                       value 0 / totalFee - liquidityFee + stor12 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if False and liquidityFee > 0:
                                        revert with 'NH{q', 17
                                    if not totalFee - liquidityFee + stor12:
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)] * liquidityFee / totalFee / 2 > 0:
                                        if block.timestamp > -2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / totalFee - liquidityFee + stor12 wei
                                             gas gas_remaining wei
                                            args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp + 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                        require ext_call.return_data[64] == ext_call.return_data[64]
                                        emit AutoLiquify(0 / totalFee - liquidityFee + stor12, balanceOf[address(this.address)] * liquidityFee / totalFee / 2);
                                stor28 = 0
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        balanceOf[address(msg.sender)] -= arg2
        if stor6[address(msg.sender)]:
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            require ext_code.size(distributorAddress)
            if not stor8[address(msg.sender)]:
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
            if not stor8[address(arg1)]:
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), balanceOf[address(arg1)]
            call distributorAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args stor26
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if arg2 and totalFee > -1 / arg2:
                revert with 'NH{q', 17
            if not feeDenominator:
                revert with 'NH{q', 18
            if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
            if arg2 < arg2 * totalFee / feeDenominator:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
            require ext_code.size(distributorAddress)
            if not stor8[address(msg.sender)]:
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
            if not stor8[address(arg1)]:
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), balanceOf[address(arg1)]
            call distributorAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args stor26
            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
    return 1
}



}
