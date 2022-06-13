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
const name = '', 0

const symbol = '', 0


address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
uint256 stor3;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint8 decimals;
uint256 totalSupply;
uint8 stor10;
uint256 stor10; offset 8
uint256 stor10;
uint256 snipersCaught;
uint8 stor12;
uint256 stor12; offset 8
uint256 stor13;
uint16 stor14;
uint16 stor14; offset 16
uint16 stor14; offset 32
uint16 stor15;
uint16 stor15; offset 16
uint16 stor15; offset 32
uint16 stor15; offset 48
uint16 stor15; offset 64
uint16 stor16;
uint16 stor16; offset 16
uint16 stor16; offset 32
uint16 stor16; offset 48
address dexRouterAddress;
address lpPairAddress;
address currentRouterAddress;
address DEADAddress;
address marketingWalletAddress;
address stor25;
uint256 stor26;
uint256 stor27;
uint8 contractSwapEnabled;
uint256 stor29;
uint256 stor30;
uint8 tradingEnabled; offset 8
uint8 hasLiqBeenAdded; offset 16
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
address stor36;

function hasLiqBeenAdded() {
    return bool(hasLiqBeenAdded)
}

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
    return uint16(stor14.field_0), uint16(stor14.field_0), uint16(stor14.field_32)
}

function staticVals() {
    return uint16(stor16.field_0), uint16(stor16.field_0), uint16(stor16.field_0), uint16(stor16.field_48)
}

function _ratios() {
    return uint16(stor15.field_0), uint16(stor15.field_0), uint16(stor15.field_0), uint16(stor15.field_0), uint16(stor15.field_64)
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

function sub_780e1154(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    contractSwapEnabled = uint8(bool(arg1))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[stor0] = 0
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function getCirculatingSupply() {
    if balanceOf[stor21] > !balanceOf[0]:
        revert with 0, 17
    if totalSupply < balanceOf[stor21] + balanceOf[0]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor21] - balanceOf[0])
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
    stor5[address(arg1)] = uint8(arg2)
}

function setWallets(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingWalletAddress = arg1
    stor25 = arg2
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tradingEnabled:
        revert with 0, 'Trading already enabled!'
    if not hasLiqBeenAdded:
        revert with 0, 'Liquidity must be added.'
    stor13 = block.number
    tradingEnabled = 1
}

function setProtectionSettings(bool arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor12.field_0) = uint8(arg2)
    Mask(248, 0, stor12.field_8) = Mask(248, 0, arg1)
}

function setStartingProtections(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not uint256(stor10.field_0)
    require arg1 <= 5
    require not hasLiqBeenAdded
    uint8(stor10.field_0) = arg1
    Mask(248, 0, stor10.field_8) = 0
}

function removeSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is not a recorded sniper.'
    stor6[address(arg1)] = 0
}

function sub_96c05089(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if this.address == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mansion address cannot be this address'
    stor36 = address(arg1)
}

function setLpPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3:
        if block.timestamp < stor3:
            revert with 0, 17
        if block.timestamp - stor3 <= 72 * 24 * 3600:
            revert with 0, 'Cannot set a new pair this week!'
    stor2[address(arg1)] = 1
    stor3 = block.timestamp
}

function setTaxes(uint16 arg1, uint16 arg2, uint16 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= uint16(stor16.field_0)
    require arg2 <= uint16(stor16.field_16)
    require arg3 <= uint16(stor16.field_32)
    uint16(stor14.field_0) = arg1
    uint16(stor14.field_16) = arg2
    uint16(stor14.field_32) = arg3
}

function setSwapSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    stor29 = totalSupply * arg1 / arg2
    if totalSupply and arg3 > -1 / totalSupply:
        revert with 0, 17
    if not arg4:
        revert with 0, 18
    stor30 = totalSupply * arg3 / arg4
}

function sub_71bce92d(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0, 'vBuy1 must be less than vBuy2'
    stor32 = arg1
    if arg2 >= arg3:
        revert with 0, 'vBuy2 must be less than vBuy3'
    stor33 = arg2
    if arg3 >= arg4:
        revert with 0, 'vBuy3 must be less than vBuy4'
    stor34 = arg3
    if arg4 > 2500:
        revert with 0, 'vBuy4 must be less than 25%'
    stor35 = arg4
}

function approveContractContingency() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not dexRouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor17] = -1
    emit Approval(-1, this.address, dexRouterAddress);
    return 1
}

function setMaxWalletSize(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
    stor27 = totalSupply * arg1 / arg2
}

function getMaxTX() {
    if not decimals:
        return stor26
    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
        if not 10^decimals:
            revert with 0, 18
        return (stor26 / 10^decimals)
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
    return (stor26 / s * t)
}

function getMaxWallet() {
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

function setMaxTxPercent(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
    stor26 = totalSupply * arg1 / arg2
}

function setRatios(uint16 arg1, uint16 arg2, uint16 arg3, uint16 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor15.field_0) = arg1
    uint16(stor15.field_16) = arg2
    uint16(stor15.field_32) = arg3
    uint16(stor15.field_48) = arg4
    if arg1 > -arg2 + 65535:
        revert with 0, 17
    if uint16(arg2 + arg1) > -arg3 + 65535:
        revert with 0, 17
    if uint16(arg3 + uint16(arg2 + arg1)) > -arg4 + 65535:
        revert with 0, 17
    uint16(stor15.field_64) = uint16(arg4 + uint16(arg3 + uint16(arg2 + arg1)))
}

function sub_5e35bfb7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor36.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall stor36.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 1:
        if ext_call.return_data[0] < 20:
            return stor32
    staticcall stor36.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 20:
        if ext_call.return_data[0] < 50:
            return stor33
    staticcall stor36.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 50:
        if ext_call.return_data[0] < 100:
            return stor34
    if ext_call.return_data[0] < 100:
        return 0
    return stor35
}

function setNewRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg1.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall arg1.WAVAX() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
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
