contract main {




// =====================  Runtime code  =====================


const name = 'Shiba Printer', 0

const decimals = 6

const symbol = 'SHIBP', 0

const MASK = test266151307()


address owner;
mapping of uint8 stor1;
address WAVAXAddress;
address stor4;
address stor5;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 multipliedFee;
uint256 stor19; offset 2
uint256 stor19;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor22;
uint256 stor23;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 launchedAtTimestamp;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint8 autoBuybackEnabled;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 stor37;
uint256 stor38;
address stor39;
address distributorAddress;
uint256 stor41;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor44;

function swapThreshold() {
    return swapThreshold
}

function checkFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    return bool(stor13[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function _isFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
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

function getOwner() {
    return owner
}

function distributorAddress() {
    return distributorAddress
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function launchedAtTimestamp() {
    return launchedAtTimestamp
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

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor30 = 0
}

function setFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor13[address(arg1)] = 1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unSetFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor13[address(arg1)] = 0
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor41 = arg1
}

function launch() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if launchedAt:
        revert with 0, 'Already launched boi'
    launchedAt = block.number
    launchedAtTimestamp = block.timestamp
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

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor10[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor22 = arg1
    stor23 = arg2
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor11[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function Sweep() {
    if owner != msg.sender:
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
    marketingFeeReceiverAddress = arg2
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if launchedAt > -2:
        revert with 'NH{q', 17
    else:
        if launchedAt + 1 < block.number:
            if not arg1:
                return multipliedFee
            else:
                return multipliedFee
        else:
            return multipliedFee
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        revert with 'NH{q', 18
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor28 = arg1
    stor29 = arg2
    stor31 = arg3
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoBuybackEnabled = uint8(arg1)
    stor34 = arg2
    stor35 = 0
    stor36 = arg3
    stor37 = arg4
    stor38 = block.number
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor39)
    call stor39.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    if balanceOf[stor25] and 2 > -1 / balanceOf[stor25]:
        revert with 'NH{q', 17
    if arg1 and 2 * balanceOf[stor25] > -1 / arg1:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[stor25] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    if balanceOf[stor25] and 2 > -1 / balanceOf[stor25]:
        revert with 'NH{q', 17
    if arg2 and 2 * balanceOf[stor25] > -1 / arg2:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[stor25] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14 = arg1
    stor15 = arg2
    stor16 = arg3
    stor17 = arg4
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    multipliedFee = arg1 + arg2 + arg3 + arg4
    uint256(stor19.field_0) = arg5
    require multipliedFee < Mask(254, 0, stor19.field_2)
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor12[address(arg1)] = uint8(arg2)
    require ext_code.size(stor39)
    if not arg2:
        call stor39.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor39.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function triggerZeusBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor44 = 1
    mem[128] = WAVAXAddress
    mem[160] = this.address
    mem[192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, stor4, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor44 = 0
    if arg2:
        stor30 = block.timestamp
        emit BuybackMultiplierActive(stor31);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor44:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        else:
            balanceOf[address(msg.sender)] -= arg2
            if not stor10[address(msg.sender)]:
                if launchedAt > -2:
                    revert with 'NH{q', 17
                else:
                    if launchedAt + 1 < block.number:
                        if arg1 != pairAddress:
                            if arg2 and multipliedFee > -1 / arg2:
                                revert with 'NH{q', 17
                            else:
                                if not uint256(stor19.field_0):
                                    revert with 'NH{q', 18
                                else:
                                    if balanceOf[address(this.address)] > -(arg2 * multipliedFee / uint256(stor19.field_0)) - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(this.address)] += arg2 * multipliedFee / uint256(stor19.field_0)
                                        emit Transfer((arg2 * multipliedFee / uint256(stor19.field_0)), msg.sender, this.address);
                                        if arg2 < arg2 * multipliedFee / uint256(stor19.field_0):
                                            revert with 'NH{q', 17
                                        else:
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * multipliedFee / uint256(stor19.field_0)) - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))
                                                if stor12[address(msg.sender)]:
                                                    if stor12[address(arg1)]:
                                                        require ext_code.size(stor39)
                                                        call stor39.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args stor41
                                                        if not ext_call.success:
                                                            emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                            return 1
                                                    else:
                                                        require ext_code.size(stor39)
                                                        call stor39.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                        if not ext_call.success:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                else:
                                                    require ext_code.size(stor39)
                                                    call stor39.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                    if not ext_call.success:
                                                        if stor12[address(arg1)]:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                            if not ext_call.success:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                    else:
                                                        if stor12[address(arg1)]:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                            if not ext_call.success:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                        else:
                            if arg2 and multipliedFee > -1 / arg2:
                                revert with 'NH{q', 17
                            else:
                                if not uint256(stor19.field_0):
                                    revert with 'NH{q', 18
                                else:
                                    if balanceOf[address(this.address)] > -(arg2 * multipliedFee / uint256(stor19.field_0)) - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(this.address)] += arg2 * multipliedFee / uint256(stor19.field_0)
                                        emit Transfer((arg2 * multipliedFee / uint256(stor19.field_0)), msg.sender, this.address);
                                        if arg2 < arg2 * multipliedFee / uint256(stor19.field_0):
                                            revert with 'NH{q', 17
                                        else:
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * multipliedFee / uint256(stor19.field_0)) - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))
                                                if stor12[address(msg.sender)]:
                                                    if stor12[address(arg1)]:
                                                        require ext_code.size(stor39)
                                                        call stor39.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args stor41
                                                        if not ext_call.success:
                                                            emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                            return 1
                                                    else:
                                                        require ext_code.size(stor39)
                                                        call stor39.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                        if not ext_call.success:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                else:
                                                    require ext_code.size(stor39)
                                                    call stor39.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                    if not ext_call.success:
                                                        if stor12[address(arg1)]:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                            if not ext_call.success:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                    else:
                                                        if stor12[address(arg1)]:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                            if not ext_call.success:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                    return 1
                    else:
                        if arg2 and multipliedFee > -1 / arg2:
                            revert with 'NH{q', 17
                        else:
                            if not uint256(stor19.field_0):
                                revert with 'NH{q', 18
                            else:
                                if balanceOf[address(this.address)] > -(arg2 * multipliedFee / uint256(stor19.field_0)) - 1:
                                    revert with 'NH{q', 17
                                else:
                                    balanceOf[address(this.address)] += arg2 * multipliedFee / uint256(stor19.field_0)
                                    emit Transfer((arg2 * multipliedFee / uint256(stor19.field_0)), msg.sender, this.address);
                                    if arg2 < arg2 * multipliedFee / uint256(stor19.field_0):
                                        revert with 'NH{q', 17
                                    else:
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * multipliedFee / uint256(stor19.field_0)) - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))
                                            if stor12[address(msg.sender)]:
                                                if stor12[address(arg1)]:
                                                    require ext_code.size(stor39)
                                                    call stor39.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args stor41
                                                    if not ext_call.success:
                                                        emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                        return 1
                                                else:
                                                    require ext_code.size(stor39)
                                                    call stor39.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                    if not ext_call.success:
                                                        require ext_code.size(stor39)
                                                        call stor39.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args stor41
                                                        if not ext_call.success:
                                                            emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                            return 1
                                                    else:
                                                        require ext_code.size(stor39)
                                                        call stor39.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args stor41
                                                        if not ext_call.success:
                                                            emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                            return 1
                                            else:
                                                require ext_code.size(stor39)
                                                call stor39.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                if not ext_call.success:
                                                    if stor12[address(arg1)]:
                                                        require ext_code.size(stor39)
                                                        call stor39.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args stor41
                                                        if not ext_call.success:
                                                            emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                            return 1
                                                    else:
                                                        require ext_code.size(stor39)
                                                        call stor39.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                        if not ext_call.success:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                else:
                                                    if stor12[address(arg1)]:
                                                        require ext_code.size(stor39)
                                                        call stor39.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args stor41
                                                        if not ext_call.success:
                                                            emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                            return 1
                                                    else:
                                                        require ext_code.size(stor39)
                                                        call stor39.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                        if not ext_call.success:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg2 - (arg2 * multipliedFee / uint256(stor19.field_0))), msg.sender, arg1);
                                                                return 1
            else:
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                else:
                    balanceOf[address(arg1)] += arg2
                    if stor12[address(msg.sender)]:
                        if stor12[address(arg1)]:
                            require ext_code.size(stor39)
                            call stor39.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args stor41
                            if not ext_call.success:
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                        else:
                            require ext_code.size(stor39)
                            call stor39.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                            if not ext_call.success:
                                require ext_code.size(stor39)
                                call stor39.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor41
                                if not ext_call.success:
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                            else:
                                require ext_code.size(stor39)
                                call stor39.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor41
                                if not ext_call.success:
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                    else:
                        require ext_code.size(stor39)
                        call stor39.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                        if not ext_call.success:
                            if stor12[address(arg1)]:
                                require ext_code.size(stor39)
                                call stor39.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor41
                                if not ext_call.success:
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                            else:
                                require ext_code.size(stor39)
                                call stor39.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                                if not ext_call.success:
                                    require ext_code.size(stor39)
                                    call stor39.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor41
                                    if not ext_call.success:
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                else:
                                    require ext_code.size(stor39)
                                    call stor39.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor41
                                    if not ext_call.success:
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                        else:
                            if stor12[address(arg1)]:
                                require ext_code.size(stor39)
                                call stor39.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor41
                                if not ext_call.success:
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                            else:
                                require ext_code.size(stor39)
                                call stor39.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                                if not ext_call.success:
                                    require ext_code.size(stor39)
                                    call stor39.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor41
                                    if not ext_call.success:
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                else:
                                    require ext_code.size(stor39)
                                    call stor39.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor41
                                    if not ext_call.success:
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
    else:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        else:
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            else:
                balanceOf[address(arg1)] += arg2
                return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] == totalSupply:
        if not stor44:
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'Insufficient Balance', 0
            else:
                balanceOf[address(arg1)] -= arg3
                if not stor10[address(arg1)]:
                    if launchedAt > -2:
                        revert with 'NH{q', 17
                    else:
                        if launchedAt + 1 < block.number:
                            if arg2 != pairAddress:
                                if arg3 and multipliedFee > -1 / arg3:
                                    revert with 'NH{q', 17
                                else:
                                    if not uint256(stor19.field_0):
                                        revert with 'NH{q', 18
                                    else:
                                        if balanceOf[address(this.address)] > -(arg3 * multipliedFee / uint256(stor19.field_0)) - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(this.address)] += arg3 * multipliedFee / uint256(stor19.field_0)
                                            emit Transfer((arg3 * multipliedFee / uint256(stor19.field_0)), arg1, this.address);
                                            if arg3 < arg3 * multipliedFee / uint256(stor19.field_0):
                                                revert with 'NH{q', 17
                                            else:
                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * multipliedFee / uint256(stor19.field_0)) - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))
                                                    if stor12[address(arg1)]:
                                                        if stor12[address(arg2)]:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), balanceOf[address(arg2)]
                                                            if not ext_call.success:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                    else:
                                                        require ext_code.size(stor39)
                                                        call stor39.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                        if not ext_call.success:
                                                            if stor12[address(arg2)]:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), balanceOf[address(arg2)]
                                                                if not ext_call.success:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                else:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                        else:
                                                            if stor12[address(arg2)]:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), balanceOf[address(arg2)]
                                                                if not ext_call.success:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                else:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                            else:
                                if arg3 and multipliedFee > -1 / arg3:
                                    revert with 'NH{q', 17
                                else:
                                    if not uint256(stor19.field_0):
                                        revert with 'NH{q', 18
                                    else:
                                        if balanceOf[address(this.address)] > -(arg3 * multipliedFee / uint256(stor19.field_0)) - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(this.address)] += arg3 * multipliedFee / uint256(stor19.field_0)
                                            emit Transfer((arg3 * multipliedFee / uint256(stor19.field_0)), arg1, this.address);
                                            if arg3 < arg3 * multipliedFee / uint256(stor19.field_0):
                                                revert with 'NH{q', 17
                                            else:
                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * multipliedFee / uint256(stor19.field_0)) - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))
                                                    if stor12[address(arg1)]:
                                                        if stor12[address(arg2)]:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), balanceOf[address(arg2)]
                                                            if not ext_call.success:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                    else:
                                                        require ext_code.size(stor39)
                                                        call stor39.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                        if not ext_call.success:
                                                            if stor12[address(arg2)]:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), balanceOf[address(arg2)]
                                                                if not ext_call.success:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                else:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                        else:
                                                            if stor12[address(arg2)]:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), balanceOf[address(arg2)]
                                                                if not ext_call.success:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                else:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                        else:
                            if arg3 and multipliedFee > -1 / arg3:
                                revert with 'NH{q', 17
                            else:
                                if not uint256(stor19.field_0):
                                    revert with 'NH{q', 18
                                else:
                                    if balanceOf[address(this.address)] > -(arg3 * multipliedFee / uint256(stor19.field_0)) - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        balanceOf[address(this.address)] += arg3 * multipliedFee / uint256(stor19.field_0)
                                        emit Transfer((arg3 * multipliedFee / uint256(stor19.field_0)), arg1, this.address);
                                        if arg3 < arg3 * multipliedFee / uint256(stor19.field_0):
                                            revert with 'NH{q', 17
                                        else:
                                            if balanceOf[address(arg2)] > -arg3 + (arg3 * multipliedFee / uint256(stor19.field_0)) - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))
                                                if stor12[address(arg1)]:
                                                    if stor12[address(arg2)]:
                                                        require ext_code.size(stor39)
                                                        call stor39.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args stor41
                                                        if not ext_call.success:
                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                            return 1
                                                        else:
                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                            return 1
                                                    else:
                                                        require ext_code.size(stor39)
                                                        call stor39.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), balanceOf[address(arg2)]
                                                        if not ext_call.success:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                else:
                                                    require ext_code.size(stor39)
                                                    call stor39.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                    if not ext_call.success:
                                                        if stor12[address(arg2)]:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), balanceOf[address(arg2)]
                                                            if not ext_call.success:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                    else:
                                                        if stor12[address(arg2)]:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), balanceOf[address(arg2)]
                                                            if not ext_call.success:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                else:
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    else:
                        balanceOf[address(arg2)] += arg3
                        if stor12[address(arg1)]:
                            if stor12[address(arg2)]:
                                require ext_code.size(stor39)
                                call stor39.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args stor41
                                if not ext_call.success:
                                    emit Transfer(arg3, arg1, arg2);
                                    return 1
                                else:
                                    emit Transfer(arg3, arg1, arg2);
                                    return 1
                            else:
                                require ext_code.size(stor39)
                                call stor39.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), balanceOf[address(arg2)]
                                if not ext_call.success:
                                    require ext_code.size(stor39)
                                    call stor39.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor41
                                    if not ext_call.success:
                                        emit Transfer(arg3, arg1, arg2);
                                        return 1
                                    else:
                                        emit Transfer(arg3, arg1, arg2);
                                        return 1
                                else:
                                    require ext_code.size(stor39)
                                    call stor39.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor41
                                    if not ext_call.success:
                                        emit Transfer(arg3, arg1, arg2);
                                        return 1
                                    else:
                                        emit Transfer(arg3, arg1, arg2);
                                        return 1
                        else:
                            require ext_code.size(stor39)
                            call stor39.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                            if not ext_call.success:
                                if stor12[address(arg2)]:
                                    require ext_code.size(stor39)
                                    call stor39.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor41
                                    if not ext_call.success:
                                        emit Transfer(arg3, arg1, arg2);
                                        return 1
                                    else:
                                        emit Transfer(arg3, arg1, arg2);
                                        return 1
                                else:
                                    require ext_code.size(stor39)
                                    call stor39.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), balanceOf[address(arg2)]
                                    if not ext_call.success:
                                        require ext_code.size(stor39)
                                        call stor39.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor41
                                        if not ext_call.success:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                        else:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                    else:
                                        require ext_code.size(stor39)
                                        call stor39.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor41
                                        if not ext_call.success:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                        else:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                            else:
                                if stor12[address(arg2)]:
                                    require ext_code.size(stor39)
                                    call stor39.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor41
                                    if not ext_call.success:
                                        emit Transfer(arg3, arg1, arg2);
                                        return 1
                                    else:
                                        emit Transfer(arg3, arg1, arg2);
                                        return 1
                                else:
                                    require ext_code.size(stor39)
                                    call stor39.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), balanceOf[address(arg2)]
                                    if not ext_call.success:
                                        require ext_code.size(stor39)
                                        call stor39.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor41
                                        if not ext_call.success:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                        else:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                    else:
                                        require ext_code.size(stor39)
                                        call stor39.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor41
                                        if not ext_call.success:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                        else:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
        else:
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'Insufficient Balance', 0
            else:
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                else:
                    balanceOf[address(arg2)] += arg3
                    return 1
    else:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'Insufficient Allowance', 0
        else:
            allowance[address(arg1)][address(msg.sender)] -= arg3
            if not stor44:
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'Insufficient Balance', 0
                else:
                    balanceOf[address(arg1)] -= arg3
                    if not stor10[address(arg1)]:
                        if launchedAt > -2:
                            revert with 'NH{q', 17
                        else:
                            if launchedAt + 1 < block.number:
                                if arg2 != pairAddress:
                                    if arg3 and multipliedFee > -1 / arg3:
                                        revert with 'NH{q', 17
                                    else:
                                        if not uint256(stor19.field_0):
                                            revert with 'NH{q', 18
                                        else:
                                            if balanceOf[address(this.address)] > -(arg3 * multipliedFee / uint256(stor19.field_0)) - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(this.address)] += arg3 * multipliedFee / uint256(stor19.field_0)
                                                emit Transfer((arg3 * multipliedFee / uint256(stor19.field_0)), arg1, this.address);
                                                if arg3 < arg3 * multipliedFee / uint256(stor19.field_0):
                                                    revert with 'NH{q', 17
                                                else:
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * multipliedFee / uint256(stor19.field_0)) - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))
                                                        if stor12[address(arg1)]:
                                                            if stor12[address(arg2)]:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), balanceOf[address(arg2)]
                                                                if not ext_call.success:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                else:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                            if not ext_call.success:
                                                                if stor12[address(arg2)]:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                else:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), balanceOf[address(arg2)]
                                                                    if not ext_call.success:
                                                                        require ext_code.size(stor39)
                                                                        call stor39.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args stor41
                                                                        if not ext_call.success:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                                        else:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                                    else:
                                                                        require ext_code.size(stor39)
                                                                        call stor39.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args stor41
                                                                        if not ext_call.success:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                                        else:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                            else:
                                                                if stor12[address(arg2)]:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                else:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), balanceOf[address(arg2)]
                                                                    if not ext_call.success:
                                                                        require ext_code.size(stor39)
                                                                        call stor39.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args stor41
                                                                        if not ext_call.success:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                                        else:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                                    else:
                                                                        require ext_code.size(stor39)
                                                                        call stor39.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args stor41
                                                                        if not ext_call.success:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                                        else:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                else:
                                    if arg3 and multipliedFee > -1 / arg3:
                                        revert with 'NH{q', 17
                                    else:
                                        if not uint256(stor19.field_0):
                                            revert with 'NH{q', 18
                                        else:
                                            if balanceOf[address(this.address)] > -(arg3 * multipliedFee / uint256(stor19.field_0)) - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                balanceOf[address(this.address)] += arg3 * multipliedFee / uint256(stor19.field_0)
                                                emit Transfer((arg3 * multipliedFee / uint256(stor19.field_0)), arg1, this.address);
                                                if arg3 < arg3 * multipliedFee / uint256(stor19.field_0):
                                                    revert with 'NH{q', 17
                                                else:
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * multipliedFee / uint256(stor19.field_0)) - 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))
                                                        if stor12[address(arg1)]:
                                                            if stor12[address(arg2)]:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), balanceOf[address(arg2)]
                                                                if not ext_call.success:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                else:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                            if not ext_call.success:
                                                                if stor12[address(arg2)]:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                else:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), balanceOf[address(arg2)]
                                                                    if not ext_call.success:
                                                                        require ext_code.size(stor39)
                                                                        call stor39.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args stor41
                                                                        if not ext_call.success:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                                        else:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                                    else:
                                                                        require ext_code.size(stor39)
                                                                        call stor39.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args stor41
                                                                        if not ext_call.success:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                                        else:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                            else:
                                                                if stor12[address(arg2)]:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                else:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), balanceOf[address(arg2)]
                                                                    if not ext_call.success:
                                                                        require ext_code.size(stor39)
                                                                        call stor39.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args stor41
                                                                        if not ext_call.success:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                                        else:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                                    else:
                                                                        require ext_code.size(stor39)
                                                                        call stor39.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args stor41
                                                                        if not ext_call.success:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                                                                        else:
                                                                            emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                            return 1
                            else:
                                if arg3 and multipliedFee > -1 / arg3:
                                    revert with 'NH{q', 17
                                else:
                                    if not uint256(stor19.field_0):
                                        revert with 'NH{q', 18
                                    else:
                                        if balanceOf[address(this.address)] > -(arg3 * multipliedFee / uint256(stor19.field_0)) - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            balanceOf[address(this.address)] += arg3 * multipliedFee / uint256(stor19.field_0)
                                            emit Transfer((arg3 * multipliedFee / uint256(stor19.field_0)), arg1, this.address);
                                            if arg3 < arg3 * multipliedFee / uint256(stor19.field_0):
                                                revert with 'NH{q', 17
                                            else:
                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * multipliedFee / uint256(stor19.field_0)) - 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))
                                                    if stor12[address(arg1)]:
                                                        if stor12[address(arg2)]:
                                                            require ext_code.size(stor39)
                                                            call stor39.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args stor41
                                                            if not ext_call.success:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                            else:
                                                                emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                return 1
                                                        else:
                                                            require ext_code.size(stor39)
                                                            call stor39.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), balanceOf[address(arg2)]
                                                            if not ext_call.success:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                    else:
                                                        require ext_code.size(stor39)
                                                        call stor39.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                        if not ext_call.success:
                                                            if stor12[address(arg2)]:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), balanceOf[address(arg2)]
                                                                if not ext_call.success:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                else:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                        else:
                                                            if stor12[address(arg2)]:
                                                                require ext_code.size(stor39)
                                                                call stor39.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args stor41
                                                                if not ext_call.success:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                                else:
                                                                    emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                    return 1
                                                            else:
                                                                require ext_code.size(stor39)
                                                                call stor39.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), balanceOf[address(arg2)]
                                                                if not ext_call.success:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                else:
                                                                    require ext_code.size(stor39)
                                                                    call stor39.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args stor41
                                                                    if not ext_call.success:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                                                                    else:
                                                                        emit Transfer((arg3 - (arg3 * multipliedFee / uint256(stor19.field_0))), arg1, arg2);
                                                                        return 1
                    else:
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        else:
                            balanceOf[address(arg2)] += arg3
                            if stor12[address(arg1)]:
                                if stor12[address(arg2)]:
                                    require ext_code.size(stor39)
                                    call stor39.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args stor41
                                    if not ext_call.success:
                                        emit Transfer(arg3, arg1, arg2);
                                        return 1
                                    else:
                                        emit Transfer(arg3, arg1, arg2);
                                        return 1
                                else:
                                    require ext_code.size(stor39)
                                    call stor39.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), balanceOf[address(arg2)]
                                    if not ext_call.success:
                                        require ext_code.size(stor39)
                                        call stor39.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor41
                                        if not ext_call.success:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                        else:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                    else:
                                        require ext_code.size(stor39)
                                        call stor39.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor41
                                        if not ext_call.success:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                        else:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                            else:
                                require ext_code.size(stor39)
                                call stor39.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                                if not ext_call.success:
                                    if stor12[address(arg2)]:
                                        require ext_code.size(stor39)
                                        call stor39.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor41
                                        if not ext_call.success:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                        else:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                    else:
                                        require ext_code.size(stor39)
                                        call stor39.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), balanceOf[address(arg2)]
                                        if not ext_call.success:
                                            require ext_code.size(stor39)
                                            call stor39.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor41
                                            if not ext_call.success:
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                            else:
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                        else:
                                            require ext_code.size(stor39)
                                            call stor39.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor41
                                            if not ext_call.success:
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                            else:
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                else:
                                    if stor12[address(arg2)]:
                                        require ext_code.size(stor39)
                                        call stor39.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args stor41
                                        if not ext_call.success:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                        else:
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                                    else:
                                        require ext_code.size(stor39)
                                        call stor39.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), balanceOf[address(arg2)]
                                        if not ext_call.success:
                                            require ext_code.size(stor39)
                                            call stor39.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor41
                                            if not ext_call.success:
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                            else:
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                        else:
                                            require ext_code.size(stor39)
                                            call stor39.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args stor41
                                            if not ext_call.success:
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                                            else:
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
            else:
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'Insufficient Balance', 0
                else:
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    else:
                        balanceOf[address(arg2)] += arg3
                        return 1
}



}
