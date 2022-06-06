contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'FTMPay', 0

const decimals = 9

const symbol = 'FTMP', 0

const MASK = test266151307()


address owner;
mapping of uint8 stor1;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor5;
address stor6;
address sub_b10abe44Address;
address WFTMAddress;
address routerAddress;
address routerAddress;
address pairAddress;
address stor12;
address distributorAddress;
uint256 stor14;
uint256 totalFee;
uint256 stor16; offset 2
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor21;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address sub_2119fd5aAddress;
uint256 stor25;
uint256 stor26;
uint256 _maxTxAmount;
uint256 _maxWallet;
mapping of uint8 stor29;
mapping of uint8 stor30;
mapping of uint8 stor31;
mapping of uint8 stor32;
uint256 launchedAt;
uint256 launchedAtTimestamp;
uint256 stor35;
uint256 stor36;
uint256 stor37;
uint256 stor38;
uint8 autoBuybackEnabled;
uint256 stor41;
uint256 stor42;
uint256 stor43;
uint256 stor44;
uint256 stor45;
uint8 swapEnabled;
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function checkFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor32[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function sub_2119fd5a(?) {
    return sub_2119fd5aAddress
}

function WFTM() {
    return WFTMAddress
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

function getTotalFee() {
    return totalFee
}

function _maxTxAmount() {
    return _maxTxAmount
}

function _maxWallet() {
    return _maxWallet
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

function isFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor32[arg1])
}

function sub_b10abe44(?) {
    return sub_b10abe44Address
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

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor38 = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor32[address(arg1)] = 1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function unSetFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor32[address(arg1)] = 0
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function launch() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if launchedAt:
        revert with 0, 'Already launched'
    launchedAt = block.number
    launchedAtTimestamp = block.timestamp
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor14 = arg1
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor29[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor25 = arg1
    stor26 = arg2
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor5]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor5] < balanceOf[stor6]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[stor5] - balanceOf[stor6])
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor30[address(arg1)] = uint8(arg2)
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

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function Collect() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    stor35 = arg1
    stor36 = arg2
    stor37 = arg3
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    stor1[address(arg1)] = 1
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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
    stor41 = arg2
    stor42 = 0
    stor43 = arg3
    stor44 = arg4
    stor45 = block.number
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor12)
    call stor12.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply < balanceOf[stor5]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor5] < balanceOf[stor6]:
        revert with 'NH{q', 17
    if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
        revert with 'NH{q', 17
    if arg1 and 2 * balanceOf[stor11] > -1 / arg1:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[stor5] - balanceOf[stor6]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor5] - balanceOf[stor6])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if totalSupply < balanceOf[stor5]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor5] < balanceOf[stor6]:
        revert with 'NH{q', 17
    if balanceOf[stor11] and 2 > -1 / balanceOf[stor11]:
        revert with 'NH{q', 17
    if arg2 and 2 * balanceOf[stor11] > -1 / arg2:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[stor5] - balanceOf[stor6]:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[stor11] / totalSupply - balanceOf[stor5] - balanceOf[stor6] > arg1)
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
    stor17 = arg1
    stor21 = arg2
    stor18 = arg3
    stor19 = arg4
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    totalFee = arg1 + arg2 + arg3 + arg4
    uint256(stor16.field_0) = arg5
    require totalFee < Mask(254, 0, stor16.field_2)
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor31[address(arg1)] = uint8(arg2)
    require ext_code.size(stor12)
    if not arg2:
        call stor12.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor12.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
