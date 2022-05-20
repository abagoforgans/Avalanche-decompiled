contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const decimals = 6

const symbol = '', 0

const MASK = test266151307()


address owner;
mapping of uint8 stor1;
address WAVAXAddress;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWallet;
mapping of uint256 balanceOf;
mapping of uint256 sub_7f2feddc;
mapping of uint256 allowance;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 multipliedFee;
uint256 stor21;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor25;
uint256 stor26;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 launchedAtTimestamp;
uint8 sub_cc2ffdc6;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 sub_9cd36f0d;
uint8 autoBuybackEnabled;
uint256 stor39;
uint256 stor40;
uint256 stor41;
uint256 stor42;
uint256 stor43;
address stor44;
address distributorAddress;
uint256 stor46;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor49;

function swapThreshold() {
    return swapThreshold
}

function checkFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    return bool(stor15[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function _isFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
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

function _maxTxAmount() {
    return _maxTxAmount
}

function sub_7f2feddc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7f2feddc[arg1]
}

function _maxWallet() {
    return _maxWallet
}

function getOwner() {
    return owner
}

function sub_9a31ab6d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7f2feddc[address(arg1)]
}

function sub_9cd36f0d(?) {
    return sub_9cd36f0d
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

function sub_cc2ffdc6(?) {
    return bool(sub_cc2ffdc6)
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

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor34 = 0
}

function setFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor15[address(arg1)] = 1
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
    stor15[address(arg1)] = 0
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
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor46 = arg1
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

function sub_97c5a4a9(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_cc2ffdc6 = uint8(bool(arg1))
    sub_9cd36f0d = arg2
}

function launch() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if launchedAt:
        revert with 0, 'Already launched boi'
    launchedAt = block.number
    launchedAtTimestamp = block.timestamp
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
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
    stor12[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
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

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        revert with 0, 18
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor32 = arg1
    stor33 = arg2
    stor35 = arg3
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoBuybackEnabled = uint8(arg1)
    stor39 = arg2
    stor40 = 0
    stor41 = arg3
    stor42 = arg4
    stor43 = block.number
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1 > !launchedAt:
        revert with 0, 17
    else:
        if launchedAt + 1 < block.number:
            if not arg1:
                return multipliedFee
            else:
                return multipliedFee
        else:
            return multipliedFee
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor44)
    call stor44.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor28] and 2 > -1 / balanceOf[stor28]:
        revert with 0, 17
    if arg1 and 2 * balanceOf[stor28] > -1 / arg1:
        revert with 0, 17
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 18
    return (arg1 * 2 * balanceOf[stor28] / totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor28] and 2 > -1 / balanceOf[stor28]:
        revert with 0, 17
    if arg2 and 2 * balanceOf[stor28] > -1 / arg2:
        revert with 0, 17
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 18
    return (arg2 * 2 * balanceOf[stor28] / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16 = arg1
    stor17 = arg2
    stor18 = arg3
    stor19 = arg4
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 > !arg6:
        revert with 0, 17
    multipliedFee = arg1 + arg2 + arg3 + arg4 + arg6
    stor21 = arg5
    require multipliedFee < arg5 / 4
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor14[address(arg1)] = uint8(arg2)
    require ext_code.size(stor44)
    if not arg2:
        call stor44.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor44.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function triggerZeusBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor49 = 1
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
        args 0, 128, stor3, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor49 = 0
    if arg2:
        stor34 = block.timestamp
        emit BuybackMultiplierActive(stor35);
}



}
