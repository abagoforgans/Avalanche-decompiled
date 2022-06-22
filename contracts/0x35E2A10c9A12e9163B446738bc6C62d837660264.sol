contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'ETEST', 0

const decimals = 18

const symbol = 'ETT', 0

const MASK = test266151307()


address owner;
mapping of uint8 stor1;
address WAVAXAddress; offset 8
address sub_f39b6644Address;
address stor4;
address stor5;
address sub_91446c40Address;
address sub_f97b2da0Address;
address sub_ad693453Address;
address sub_0dd0c322Address;
uint128 stor10; offset 160
address sub_99aa1fadAddress;
uint256 stor11;
uint128 stor12; offset 160
address sub_9b69862eAddress;
uint256 stor13;
uint128 stor14; offset 160
address sub_f7b0df10Address;
uint256 stor15;
uint256 stor16;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWallet;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor22;
mapping of uint8 stor23;
mapping of uint8 stor24;
mapping of uint8 stor25;
uint8 transferEnabled;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33; offset 2
uint256 stor33;
uint256 stor34;
uint256 stor35;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor38;
uint256 stor39;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 launchedAtTimestamp;
address stor44;
address distributorAddress;
uint256 stor46;
uint8 swapEnabled;
uint256 sub_c9e8a11e;
uint256 sub_1afc2b3a;

function checkFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    return bool(stor25[address(arg1)])
}

function sub_0dd0c322(?) {
    return sub_0dd0c322Address
}

function totalSupply() {
    return totalSupply
}

function sub_1afc2b3a(?) {
    return sub_1afc2b3a
}

function _isFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor25[arg1])
}

function transferEnabled() {
    return bool(transferEnabled)
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

function sub_91446c40(?) {
    return sub_91446c40Address
}

function sub_99aa1fad(?) {
    return sub_99aa1fadAddress
}

function sub_9b69862e(?) {
    return sub_9b69862eAddress
}

function distributorAddress() {
    return distributorAddress
}

function pair() {
    return pairAddress
}

function sub_a96117ab(?) {
    return sub_f39b6644Address
}

function sub_ad693453(?) {
    return sub_ad693453Address
}

function launchedAt() {
    return launchedAt
}

function launchedAtTimestamp() {
    return launchedAtTimestamp
}

function sub_c9e8a11e(?) {
    return sub_c9e8a11e
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

function sub_f39b6644(?) {
    return sub_f39b6644Address
}

function sub_f7b0df10(?) {
    return sub_f7b0df10Address
}

function router() {
    return routerAddress
}

function sub_f97b2da0(?) {
    return sub_f97b2da0Address
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

function enableTransfer() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    transferEnabled = 1
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

function setFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor25[address(arg1)] = 1
}

function unSetFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor25[address(arg1)] = 0
}

function sub_8e0b9ea3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_91446c40Address = address(arg1)
}

function sub_d7e87a3d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_f39b6644Address = address(arg1)
}

function sub_ea9f4d6f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_f97b2da0Address = address(arg1)
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
    stor46 = arg1
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
    stor22[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor38 = arg1
    stor39 = arg2
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
    stor23[address(arg1)] = uint8(arg2)
}

function sub_3c997e25(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and sub_c9e8a11e > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 * sub_c9e8a11e / 100 > sub_1afc2b3a:
        return sub_1afc2b3a
    return (arg1 * sub_c9e8a11e / 100)
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

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    sub_c9e8a11e = arg2
    sub_1afc2b3a = arg3
}

function sub_1e15df09(?) {
    require ext_code.size(stor44)
    staticcall stor44.0x1e15df09 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_ad5a2589(?) {
    require ext_code.size(stor44)
    staticcall stor44.0xad5a2589 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    require arg1 == arg1
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    if balanceOf[stor41] and 2 > -1 / balanceOf[stor41]:
        revert with 'NH{q', 17
    if arg1 and 2 * balanceOf[stor41] > -1 / arg1:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[stor41] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    if balanceOf[stor41] and 2 > -1 / balanceOf[stor41]:
        revert with 'NH{q', 17
    if arg2 and 2 * balanceOf[stor41] > -1 / arg2:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[stor41] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor27 = arg1
    stor29 = arg2
    stor28 = arg3
    stor34 = arg5
    stor35 = arg6
    stor30 = arg7
    stor31 = arg8
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    stor32 = arg1 + arg2
    uint256(stor33.field_0) = arg4
    require stor32 < Mask(254, 0, stor33.field_2)
}

function sub_6fbaf8fb(?) {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == bool(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == bool(arg6)
    require arg7 == address(arg7)
    require arg8 == arg8
    require arg9 == bool(arg9)
    require arg10 == arg10
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_99aa1fadAddress = address(arg1)
    stor11 = arg2
    stor10 = Mask(96, 0, bool(arg3))
    sub_9b69862eAddress = address(arg4)
    stor13 = arg5
    stor12 = Mask(96, 0, bool(arg6))
    sub_f7b0df10Address = address(arg7)
    stor15 = arg8
    stor14 = Mask(96, 0, bool(arg9))
    stor16 = arg10
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor24[address(arg1)] = uint8(arg2)
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



}
