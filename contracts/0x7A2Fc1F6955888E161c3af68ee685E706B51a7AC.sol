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
address sub_91446c40Address;
address sub_f97b2da0Address;
address sub_72460e7fAddress;
address stor9;
uint256 _totalSupply;
uint256 _maxTxAmount;
uint256 _maxWallet;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor15;
mapping of uint8 stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;
uint8 transferEnabled;
uint256 burnFee;
uint256 sub_2fb83e9f;
uint256 marketingFee;
uint256 liquidityFee;
uint256 totalFee;
uint256 sub_15674e8e;
uint256 sub_b22cead3;
uint256 sub_8fabfda9;
uint256 sub_ea19e4a8;
uint256 totalBuyFee;
uint256 sub_7ea3c73c;
uint256 sub_b8fcaa5c;
uint256 sub_55555210;
uint256 sub_610d6283;
uint256 totalTransferFee;
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
    if owner != msg.sender:
        revert with 0, '!OWNER'
    return bool(stor18[address(arg1)])
}

function totalTransferFee() {
    return totalTransferFee
}

function sub_15674e8e(?) {
    return sub_15674e8e
}

function totalSupply() {
    return _totalSupply
}

function sub_1afc2b3a(?) {
    return sub_1afc2b3a
}

function totalFee() {
    return totalFee
}

function _isFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[arg1])
}

function sub_2fb83e9f(?) {
    return sub_2fb83e9f
}

function _totalSupply() {
    return _totalSupply
}

function sub_42fcef56(?) {
    return sub_72460e7fAddress
}

function sub_55555210(?) {
    return sub_55555210
}

function totalBuyFee() {
    return totalBuyFee
}

function sub_610d6283(?) {
    return sub_610d6283
}

function marketingFee() {
    return marketingFee
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_72460e7f(?) {
    return sub_72460e7fAddress
}

function WAVAX() {
    return WAVAXAddress
}

function TransferEnabled() {
    return bool(transferEnabled)
}

function _maxTxAmount() {
    return _maxTxAmount
}

function sub_7ea3c73c(?) {
    return sub_7ea3c73c
}

function _maxWallet() {
    return _maxWallet
}

function getOwner() {
    return owner
}

function sub_8fabfda9(?) {
    return sub_8fabfda9
}

function sub_91446c40(?) {
    return sub_91446c40Address
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

function sub_b22cead3(?) {
    return sub_b22cead3
}

function sub_b8fcaa5c(?) {
    return sub_b8fcaa5c
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

function sub_ea19e4a8(?) {
    return sub_ea19e4a8
}

function router() {
    return routerAddress
}

function sub_f97b2da0(?) {
    return sub_f97b2da0Address
}

function burnFee() {
    return burnFee
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

function setFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor18[address(arg1)] = 1
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
    stor18[address(arg1)] = 0
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function setTransferEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    transferEnabled = uint8(arg1)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 850000
    stor46 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor38 = arg1
    stor39 = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= _totalSupply / 1000
    _maxTxAmount = arg1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= _totalSupply / 1000
    _maxWallet = arg1
}

function sub_94055caf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    distributorAddress = address(arg1)
}

function sub_8e0b9ea3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_91446c40Address = address(arg1)
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
    allowance[msg.sender][address(arg1)] = _totalSupply
    emit Approval(_totalSupply, msg.sender, arg1);
    return 1
}

function launch() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if launchedAt:
        revert with 0, 'Already launched Ser'
    launchedAt = block.number
    launchedAtTimestamp = block.timestamp
}

function sub_3c997e25(?) {
    require calldata.size - 4 >= 32
    if arg1 and sub_c9e8a11e > -1 / arg1:
        revert with 0, 17
    if arg1 * sub_c9e8a11e / 100 > sub_1afc2b3a:
        return sub_1afc2b3a
    return (arg1 * sub_c9e8a11e / 100)
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

function getCirculatingSupply() {
    if _totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if _totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    return (_totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16[address(arg1)] = uint8(arg2)
}

function sub_1e15df09(?) {
    staticcall stor44.0x1e15df09 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ad5a2589(?) {
    staticcall stor44.0xad5a2589 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    sub_c9e8a11e = arg2
    sub_1afc2b3a = arg3
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
    if 1 > !launchedAt:
        revert with 0, 17
    else:
        if launchedAt + 1 < block.number:
            if not arg1:
                return totalFee
            else:
                return totalFee
        else:
            return totalFee
}

function sub_36393da3(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    create contract with 0 wei
                    code: code.data[12743 len 2960], stor9
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor44 = address(create.new_address)
    distributorAddress = address(create.new_address)
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

function sub_f3047945(?) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_7ea3c73c = arg1
    sub_b8fcaa5c = arg2
    sub_55555210 = arg3
    sub_610d6283 = arg4
    if arg4 > !arg1:
        revert with 0, 17
    if arg4 + arg1 > !arg3:
        revert with 0, 17
    totalTransferFee = arg4 + arg1 + arg3
    require totalTransferFee < stor35 / 3
}

function setSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    burnFee = arg1
    sub_2fb83e9f = arg2
    marketingFee = arg3
    liquidityFee = arg4
    if arg4 > !arg2:
        revert with 0, 17
    if arg4 + arg2 > !arg3:
        revert with 0, 17
    totalFee = arg4 + arg2 + arg3
    require totalFee < stor35 / 3
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_15674e8e = arg1
    sub_b22cead3 = arg2
    sub_8fabfda9 = arg3
    sub_ea19e4a8 = arg4
    if arg4 > !arg2:
        revert with 0, 17
    if arg4 + arg2 > !arg3:
        revert with 0, 17
    totalBuyFee = arg4 + arg2 + arg3
    require totalBuyFee < stor35 / 3
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if _totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor41] and 2 > -1 / balanceOf[stor41]:
        revert with 0, 17
    if arg1 and 2 * balanceOf[stor41] > -1 / arg1:
        revert with 0, 17
    if not _totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 18
    return (arg1 * 2 * balanceOf[stor41] / _totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if _totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if _totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor41] and 2 > -1 / balanceOf[stor41]:
        revert with 0, 17
    if arg2 and 2 * balanceOf[stor41] > -1 / arg2:
        revert with 0, 17
    if not _totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 18
    return (arg2 * 2 * balanceOf[stor41] / _totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor17[address(arg1)] = uint8(arg2)
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

function sub_bd446daf(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 <= balanceOf[this.address]:
        mem[128] = this.address
        mem[160] = WAVAXAddress
        mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
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
            args arg1, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        require ext_code.size(stor44)
        call stor44.deposit() with:
             gas gas_remaining wei
}



}
