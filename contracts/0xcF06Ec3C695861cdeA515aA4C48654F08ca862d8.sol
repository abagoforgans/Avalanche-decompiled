contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_2610eaca(?)
#  - transfer(address arg1, uint256 arg2)
#  - sub_e8a0e3f9(?)
#
const name = 'Ascend', 0

const symbol = 'ASND', 0


address owner;
mapping of uint256 balanceOf;
uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint8 decimals;
uint8 stor8;
uint256 stor8; offset 8
uint256 stor8;
uint256 snipersCaught;
uint8 stor10;
uint256 stor10; offset 8
uint256 stor11;
address currentRouterAddress;
mapping of uint8 stor13;
address lpPairAddress;
address DEADAddress;
uint256 maxTxAmount;
uint256 maxWalletSize;
uint256 swapThreshold;
uint8 tradingEnabled; offset 8
uint8 hasLiqBeenAdded; offset 16
uint8 sub_fe3211f0; offset 24
address sub_5d2e508bAddress; offset 32
uint256 stor20; offset 24
uint256 stor20; offset 16
uint256 stor20; offset 8
address sub_98312906Address;
address sub_f96ebef7Address;
address sub_9c0ba92aAddress;
uint16 stor24;
uint16 stor24; offset 16
uint16 stor24; offset 32
uint16 stor24; offset 48
uint16 stor25;
uint16 stor25; offset 16
uint16 stor25; offset 32
uint16 stor25; offset 48
uint16 stor26;
uint16 stor26; offset 16
uint16 stor26; offset 32
uint16 stor26; offset 48
uint16 stor26; offset 64
uint256 startingSupply;
uint256 totalSupply;
address sub_d188026fAddress;
address stor30;
address stor31;
address stor32;

function hasLiqBeenAdded() {
    return bool(hasLiqBeenAdded)
}

function DEAD() {
    return DEADAddress
}

function swapThreshold() {
    return swapThreshold
}

function isSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function getMaxWallet() {
    return maxWalletSize
}

function currentRouter() {
    return currentRouterAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function startingSupply() {
    return startingSupply
}

function lpPair() {
    return lpPairAddress
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function sub_5d2e508b(?) {
    return sub_5d2e508bAddress
}

function getMaxTX() {
    return maxTxAmount
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function maxTxAmount() {
    return maxTxAmount
}

function owner() {
    return owner
}

function maxWalletSize() {
    return maxWalletSize
}

function sub_98312906(?) {
    return sub_98312906Address
}

function sub_9c0ba92a(?) {
    return sub_9c0ba92aAddress
}

function isFeeExcluded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function sub_d188026f(?) {
    return sub_d188026fAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function snipersCaught() {
    return snipersCaught
}

function sub_f96ebef7(?) {
    return sub_f96ebef7Address
}

function sub_fe3211f0(?) {
    return bool(sub_fe3211f0)
}

function _fallback() payable {
    revert
}

function staticVals() {
    return uint16(stor25.field_0), uint16(stor25.field_0), uint16(stor25.field_0), uint16(stor25.field_48)
}

function sub_069d955f(?) {
    return uint16(stor24.field_0), uint16(stor24.field_0), uint16(stor24.field_0), uint16(stor24.field_48)
}

function _ratios() {
    return uint16(stor26.field_0), uint16(stor26.field_0), uint16(stor26.field_0), uint16(stor26.field_0), uint16(stor26.field_64)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_e630c208(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, address(arg1));
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTransferFeeEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(232, 0, stor20.field_24) = Mask(232, 0, arg1)
}

function getCirculatingSupply() {
    if balanceOf[stor15] > -balanceOf[0] - 1:
        revert with 'NH{q', 17
    if totalSupply < balanceOf[stor15] + balanceOf[0]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[stor15] - balanceOf[0])
}

function changeRouterContingency(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not hasLiqBeenAdded
    currentRouterAddress = arg1
}

function setExcludedFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = uint8(arg2)
}

function setProtectionSettings(bool arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor10.field_8) = Mask(248, 0, arg1)
    uint8(stor10.field_0) = uint8(arg2)
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tradingEnabled:
        revert with 0, 'Trading already enabled!'
    if not hasLiqBeenAdded:
        revert with 0, 'Liquidity must be added.'
    stor11 = block.number
    Mask(248, 0, stor20.field_8) = 1
}

function removeSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is not a recorded sniper.'
    stor5[address(arg1)] = 0
}

function setWallets(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d188026fAddress = arg1
    stor31 = arg2
    stor30 = arg3
    stor32 = arg4
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

function setMaxTxPercent(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    maxTxAmount = totalSupply * arg1 / arg2
}

function setSwapSettings(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    swapThreshold = totalSupply * arg1 / arg2
}

function setMaxWalletSize(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    maxWalletSize = totalSupply * arg1 / arg2
}

function sub_609de7e2(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5d2e508bAddress = address(arg1)
    sub_98312906Address = address(arg2)
    sub_f96ebef7Address = address(arg3)
    sub_9c0ba92aAddress = address(arg4)
}

function sub_0ecc34a7(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor25.field_0) = uint16(arg1)
    uint16(stor25.field_16) = uint16(arg2)
    uint16(stor25.field_32) = uint16(arg3)
    uint16(stor25.field_48) = uint16(arg4)
}

function approveContractContingency() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not currentRouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor12] = -1
    emit Approval(-1, this.address, currentRouterAddress);
    return 1
}

function setTaxes(uint16 arg1, uint16 arg2, uint16 arg3, uint16 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= uint16(stor25.field_0)
    require arg2 <= uint16(stor25.field_16)
    require arg3 <= uint16(stor25.field_32)
    uint16(stor24.field_0) = arg1
    uint16(stor24.field_16) = arg2
    uint16(stor24.field_32) = arg3
    uint16(stor24.field_48) = arg4
}

function setLpPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        if block.timestamp < stor2:
            revert with 'NH{q', 17
        if block.timestamp - stor2 <= 72 * 24 * 3600:
            revert with 0, 'Cannot set a new pair this week!'
    lpPairAddress = arg1
    stor13[address(arg1)] = 1
    stor2 = block.timestamp
    stor11 = block.number
    Mask(240, 0, stor20.field_16) = 1
    emit ContractSwapEnabledUpdated(1);
}

function setStartingProtections(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint256(stor8.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'invalid parameter >5, or liquidity added, '
    if arg1 > 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'invalid parameter >5, or liquidity added, '
    if hasLiqBeenAdded:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'invalid parameter >5, or liquidity added, '
    uint8(stor8.field_0) = arg1
    Mask(248, 0, stor8.field_8) = 0
}

function setRatios(uint16 arg1, uint16 arg2, uint16 arg3, uint16 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > -arg2 + 65535:
        revert with 'NH{q', 17
    if uint16(arg1 + arg2) > -arg3 + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg1 + arg2) + arg3) > -arg4 + 65535:
        revert with 'NH{q', 17
    uint16(stor26.field_0) = arg1
    uint16(stor26.field_16) = arg2
    uint16(stor26.field_32) = arg3
    uint16(stor26.field_48) = arg4
    uint16(stor26.field_64) = uint16(uint16(uint16(arg1 + arg2) + arg3) + arg4)
}

function sub_5e10332b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_5d2e508bAddress)
    staticcall sub_5d2e508bAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        require ext_code.size(sub_98312906Address)
        staticcall sub_98312906Address.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            require ext_code.size(sub_f96ebef7Address)
            staticcall sub_f96ebef7Address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                require ext_code.size(sub_9c0ba92aAddress)
                staticcall sub_9c0ba92aAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    return 0
    return 1
}



}
