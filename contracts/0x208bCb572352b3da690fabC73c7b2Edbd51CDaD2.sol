contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_2610eaca(?)
#  - transferOwner(address arg1)
#  - transfer(address arg1, uint256 arg2)
#  - sub_e8a0e3f9(?)
#  - _fallback()
#
const name = 'Platmate', 0

const symbol = 'PLAYMATE', 0


address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
uint256 stor3;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint8 decimals;
uint256 totalSupply;
uint8 stor11;
uint256 stor11; offset 8
uint256 stor11;
uint256 snipersCaught;
uint8 stor13;
uint256 stor13; offset 8
uint256 stor14;
uint16 stor15;
uint16 stor15; offset 16
uint16 stor15; offset 32
uint16 stor16;
uint16 stor16; offset 16
uint16 stor16; offset 32
uint16 stor16; offset 48
uint16 stor16; offset 64
uint16 stor17;
uint16 stor17; offset 16
uint16 stor17; offset 32
uint16 stor17; offset 48
address dexRouterAddress;
address lpPairAddress;
address currentRouterAddress;
address DEADAddress;
address marketingWalletAddress;
address stor26;
uint256 stor27;
uint256 stor28;
uint8 contractSwapEnabled;
uint256 stor30;
uint256 stor31;
uint8 tradingEnabled; offset 16
uint8 _hasLiqBeenAdded; offset 24
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
address stor38;

function DEAD() {
    return DEADAddress
}

function dexRouter() {
    return dexRouterAddress
}

function isSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
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

function lpPair() {
    return lpPairAddress
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function _hasLiqBeenAdded() {
    return bool(_hasLiqBeenAdded)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function marketingWallet() {
    return marketingWalletAddress
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function isFeeExcluded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
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

function contractSwapEnabled() {
    return bool(contractSwapEnabled)
}

function sub_069d955f(?) {
    return uint16(stor15.field_0), uint16(stor15.field_0), uint16(stor15.field_32)
}

function staticVals() {
    return uint16(stor17.field_0), uint16(stor17.field_0), uint16(stor17.field_0), uint16(stor17.field_48)
}

function _ratios() {
    return uint16(stor16.field_0), uint16(stor16.field_0), uint16(stor16.field_0), uint16(stor16.field_0), uint16(stor16.field_64)
}

function sub_e630c208(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, address(arg1));
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getCirculatingSupply() {
    if balanceOf[stor22] > !balanceOf[0]:
        revert with 0, 17
    if totalSupply < balanceOf[stor22] + balanceOf[0]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor22] - balanceOf[0])
}

function sub_96c05089(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor38 = address(arg1)
}

function sub_46b02443(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor33 = arg1
    stor34 = arg2
    stor35 = arg3
    stor36 = arg4
}

function sub_780e1154(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    contractSwapEnabled = uint8(bool(arg1))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor5[stor0] = 0
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function changeRouterContingency(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require not _hasLiqBeenAdded
    currentRouterAddress = arg1
}

function setExcludedFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor5[address(arg1)] = uint8(arg2)
}

function setWallets(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    marketingWalletAddress = arg1
    stor26 = arg2
}

function setProtectionSettings(bool arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    uint8(stor13.field_0) = uint8(arg2)
    Mask(248, 0, stor13.field_8) = Mask(248, 0, arg1)
}

function setStartingProtections(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require not uint256(stor11.field_0)
    require not _hasLiqBeenAdded
    uint8(stor11.field_0) = arg1
    Mask(248, 0, stor11.field_8) = 0
}

function removeSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not stor6[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is not a recorded sniper.'
    stor6[address(arg1)] = 0
}

function setTaxes(uint16 arg1, uint16 arg2, uint16 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require arg1 <= uint16(stor17.field_0)
    require arg2 <= uint16(stor17.field_16)
    require arg3 <= uint16(stor17.field_32)
    uint16(stor15.field_0) = arg1
    uint16(stor15.field_16) = arg2
    uint16(stor15.field_32) = arg3
}

function setSwapSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    stor30 = totalSupply * arg1 / arg2
    if totalSupply and arg3 > -1 / totalSupply:
        revert with 0, 17
    if not arg4:
        revert with 0, 18
    stor31 = totalSupply * arg3 / arg4
}

function approveContractContingency() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not dexRouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor18] = -1
    emit Approval(-1, this.address, dexRouterAddress);
    return 1
}

function setLpPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg2:
        stor2[address(arg1)] = 0
    else:
        if stor3:
            if block.timestamp < stor3:
                revert with 0, 17
            if block.timestamp - stor3 <= 72 * 24 * 3600:
                revert with 0, 'Cannot set a new pair this week!'
        stor2[address(arg1)] = 1
        stor3 = block.timestamp
}

function getMaxTX() {
    if not decimals:
        return stor27
    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
        if not 10^decimals:
            revert with 0, 18
        return (stor27 / 10^decimals)
    s = 10
    t = 1
    idx = decimals
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (stor27 / s * t)
}

function getMaxWallet() {
    if not decimals:
        return stor28
    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
        if not 10^decimals:
            revert with 0, 18
        return (stor28 / 10^decimals)
    s = 10
    t = 1
    idx = decimals
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (stor28 / s * t)
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if tradingEnabled:
        revert with 0, 'Trading already enabled!'
    if not _hasLiqBeenAdded:
        revert with 0, 'Liquidity must be added.'
    if not uint256(stor11.field_0):
        if 500 > !block.number:
            revert with 0, 17
        stor14 = block.number + 500
    else:
        if uint256(stor11.field_0) <= 5:
            stor14 = block.number
        else:
            if 500 > !block.number:
                revert with 0, 17
            stor14 = block.number + 500
    tradingEnabled = 1
}

function setMaxWalletSize(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if totalSupply * arg1 / arg2 < totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max Wallet amt must be above 0.1% of total supply.'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    stor28 = totalSupply * arg1 / arg2
}

function setMaxTxPercent(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if totalSupply * arg1 / arg2 < totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Max Transaction amt must be above 0.1% of total supply.'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    stor27 = totalSupply * arg1 / arg2
}

function setRatios(uint16 arg1, uint16 arg2, uint16 arg3, uint16 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    uint16(stor16.field_0) = arg1
    uint16(stor16.field_16) = arg2
    uint16(stor16.field_32) = arg3
    uint16(stor16.field_48) = arg4
    if arg1 > -arg2 + 65535:
        revert with 0, 17
    if uint16(arg2 + arg1) > -arg3 + 65535:
        revert with 0, 17
    if uint16(arg3 + uint16(arg2 + arg1)) > -arg4 + 65535:
        revert with 0, 17
    uint16(stor16.field_64) = uint16(arg4 + uint16(arg3 + uint16(arg2 + arg1)))
}

function sub_5e35bfb7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor38)
    staticcall stor38.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor38)
    staticcall stor38.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 1:
        if ext_call.return_data[0] < 20:
            return stor33
    require ext_code.size(stor38)
    staticcall stor38.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 20:
        if ext_call.return_data[0] < 50:
            return stor34
    require ext_code.size(stor38)
    staticcall stor38.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 50:
        if ext_call.return_data[0] < 100:
            return stor35
    if ext_call.return_data[0] < 100:
        return 0
    return stor36
}

function setNewRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    require ext_code.size(arg1)
    staticcall arg1.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe6a43905 with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(arg1)
        staticcall arg1.0xc45a0155 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.WAVAX() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xc9c65396 with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    lpPairAddress = ext_call.return_data[12 len 20]
    dexRouterAddress = arg1
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][address(arg1)] = -1
    emit Approval(-1, this.address, arg1);
}



}
