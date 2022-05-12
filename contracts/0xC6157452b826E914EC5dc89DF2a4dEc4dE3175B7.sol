contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'DEGEN', 0

const decimals = 9

const symbol = 'DDD', 0

const MASK = test266151307()


address owner;
mapping of uint8 stor1;
address WAVAXAddress;
address stor3;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWallet;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 multipliedFee;
uint256 stor18; offset 2
uint256 stor18;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor21;
uint256 stor22;
address routerAddress;
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
address sub_009e09bbAddress;
address stor41;
address sub_98397823Address;
uint256 stor43;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor46;

function sub_009e09bb(?) {
    return sub_009e09bbAddress
}

function swapThreshold() {
    return swapThreshold
}

function checkFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    return bool(stor12[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function _isFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function routerAddress() {
    return routerAddress
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

function _maxWallet() {
    return _maxWallet
}

function getOwner() {
    return owner
}

function sub_98397823(?) {
    return sub_98397823Address
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
    stor12[address(arg1)] = 1
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
    stor12[address(arg1)] = 0
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function sub_ca682a7b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor39 = address(arg1)
}

function sub_f78a74da(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor41 = address(arg1)
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
    stor43 = arg1
}

function launch() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if launchedAt:
        revert with 0, 'Already launched boi'
    launchedAt = block.number
    launchedAtTimestamp = block.timestamp
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= totalSupply / 1000
    _maxTxAmount = arg1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= totalSupply / 1000
    _maxWallet = arg1
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor3] < balanceOf[stor3]:
        revert with 'NH{q', 17
    return (totalSupply - (2 * balanceOf[stor3]))
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
    stor9[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor21 = arg1
    stor22 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor10[address(arg1)] = uint8(arg2)
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

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor3] < balanceOf[stor3]:
        revert with 'NH{q', 17
    if balanceOf[stor25] and 2 > -1 / balanceOf[stor25]:
        revert with 'NH{q', 17
    if arg1 and 2 * balanceOf[stor25] > -1 / arg1:
        revert with 'NH{q', 17
    if not totalSupply - (2 * balanceOf[stor3]):
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[stor25] / totalSupply - (2 * balanceOf[stor3]))
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor3] < balanceOf[stor3]:
        revert with 'NH{q', 17
    if balanceOf[stor25] and 2 > -1 / balanceOf[stor25]:
        revert with 'NH{q', 17
    if arg2 and 2 * balanceOf[stor25] > -1 / arg2:
        revert with 'NH{q', 17
    if not totalSupply - (2 * balanceOf[stor3]):
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[stor25] / totalSupply - (2 * balanceOf[stor3]) > arg1)
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
    require ext_code.size(stor41)
    call stor41.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    stor13 = arg1
    stor14 = arg2
    stor15 = arg3
    stor16 = arg4
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    multipliedFee = arg1 + arg2 + arg3 + arg4
    uint256(stor18.field_0) = arg5
    require multipliedFee < Mask(254, 0, stor18.field_2)
}

function triggerZeusBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor46 = 1
    mem[128] = WAVAXAddress
    mem[160] = this.address
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
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
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, stor3, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor46 = 0
    if arg2:
        stor30 = block.timestamp
        emit BuybackMultiplierActive(stor31);
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor11[address(arg1)] = uint8(arg2)
    require ext_code.size(stor39)
    if not arg2:
        call stor39.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor41)
        call stor41.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor39.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor41)
        call stor41.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
