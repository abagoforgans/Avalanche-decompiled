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
uint8 decimals;
uint256 totalSupply;
uint16 stor10;
uint16 stor10; offset 16
uint16 stor10; offset 32
uint16 stor11;
uint16 stor11; offset 16
uint16 stor11; offset 32
uint16 stor11; offset 48
uint16 stor11; offset 64
uint16 stor12;
uint16 stor12; offset 16
uint16 stor12; offset 32
uint16 stor12; offset 48
address dexRouterAddress;
address lpPairAddress;
address currentRouterAddress;
address DEADAddress;
address marketingWalletAddress;
address stor21;
uint256 stor22;
uint256 stor23;
uint8 contractSwapEnabled;
uint256 stor25;
uint256 stor26;
uint8 tradingEnabled; offset 16
uint8 _hasLiqBeenAdded; offset 24
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
address stor34;

function DEAD() {
    return DEADAddress
}

function dexRouter() {
    return dexRouterAddress
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

function contractSwapEnabled() {
    return bool(contractSwapEnabled)
}

function sub_069d955f(?) {
    return uint16(stor10.field_0), uint16(stor10.field_0), uint16(stor10.field_32)
}

function staticVals() {
    return uint16(stor12.field_0), uint16(stor12.field_0), uint16(stor12.field_0), uint16(stor12.field_48)
}

function _ratios() {
    return uint16(stor11.field_0), uint16(stor11.field_0), uint16(stor11.field_0), uint16(stor11.field_0), uint16(stor11.field_64)
}

function sub_96c05089(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor34 = address(arg1)
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

function sub_984ae361(?) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor28 = arg1
    stor29 = arg2
    stor30 = arg3
    stor31 = arg4
    stor32 = arg5
}

function getCirculatingSupply() {
    if balanceOf[stor17] > !balanceOf[0]:
        revert with 0, 17
    if totalSupply < balanceOf[stor17] + balanceOf[0]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor17] - balanceOf[0])
}

function changeRouterContingency(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not _hasLiqBeenAdded
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

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tradingEnabled:
        revert with 0, 'Trading already enabled!'
    if not _hasLiqBeenAdded:
        revert with 0, 'Liquidity must be added.'
    tradingEnabled = 1
}

function setWallets(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingWalletAddress = arg1
    stor21 = arg2
}

function setTaxes(uint16 arg1, uint16 arg2, uint16 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= uint16(stor12.field_0)
    require arg2 <= uint16(stor12.field_16)
    require arg3 <= uint16(stor12.field_32)
    uint16(stor10.field_0) = arg1
    uint16(stor10.field_16) = arg2
    uint16(stor10.field_32) = arg3
}

function setSwapSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    stor25 = totalSupply * arg1 / arg2
    if totalSupply and arg3 > -1 / totalSupply:
        revert with 0, 17
    if not arg4:
        revert with 0, 18
    stor26 = totalSupply * arg3 / arg4
}

function approveContractContingency() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not dexRouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor13] = -1
    emit Approval(-1, this.address, dexRouterAddress);
    return 1
}

function setLpPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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

function sub_cfb4f763(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not dexRouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][stor13] = -1
    emit Approval(-1, address(arg1), dexRouterAddress);
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
    stor23 = totalSupply * arg1 / arg2
}

function getMaxTX() {
    if not decimals:
        return stor22
    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
        if not 10^decimals:
            revert with 0, 18
        return (stor22 / 10^decimals)
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
    return (stor22 / s * t)
}

function getMaxWallet() {
    if not decimals:
        return stor23
    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
        if not 10^decimals:
            revert with 0, 18
        return (stor23 / 10^decimals)
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
    return (stor23 / s * t)
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
    stor22 = totalSupply * arg1 / arg2
}

function setRatios(uint16 arg1, uint16 arg2, uint16 arg3, uint16 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor11.field_0) = arg1
    uint16(stor11.field_16) = arg2
    uint16(stor11.field_32) = arg3
    uint16(stor11.field_48) = arg4
    if arg1 > -arg2 + 65535:
        revert with 0, 17
    if uint16(arg2 + arg1) > -arg3 + 65535:
        revert with 0, 17
    if uint16(arg3 + uint16(arg2 + arg1)) > -arg4 + 65535:
        revert with 0, 17
    uint16(stor11.field_64) = uint16(arg4 + uint16(arg3 + uint16(arg2 + arg1)))
}

function sub_5e35bfb7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor34)
    staticcall stor34.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor34)
    staticcall stor34.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 1:
        if ext_call.return_data[0] < 20:
            return stor29
    require ext_code.size(stor34)
    staticcall stor34.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 20:
        if ext_call.return_data[0] < 50:
            return stor30
    require ext_code.size(stor34)
    staticcall stor34.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 50:
        if ext_call.return_data[0] < 100:
            return stor31
    if ext_call.return_data[0] < 100:
        return stor28
    return stor32
}

function setNewRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0x73b295c2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
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
        staticcall arg1.0x73b295c2 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
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
