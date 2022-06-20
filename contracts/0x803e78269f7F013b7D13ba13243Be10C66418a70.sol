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
const name = 'Node Aggregator Capital', 0

const maxBuyTaxes = 2000

const decimals = 18

const symbol = '$NODAC', 0

const maxTransferTaxes = 2000

const maxSellTaxes = 2000

const sub_f2e4109c(?) = 3000

const DEAD = 57005


address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
uint256 stor3;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 totalSupply;
uint16 stor10;
uint16 stor10; offset 16
uint16 stor10; offset 32
uint16 stor10; offset 48
uint16 stor11;
uint16 stor11; offset 16
uint16 stor11; offset 32
uint16 stor11; offset 48
uint16 stor11; offset 64
uint16 stor11; offset 80
address dexRouterAddress;
uint32 stor13;
address lpPairAddress;
address stor14;
address stor15;
address stor16;
uint256 stor17;
uint256 stor18;
address stor19;
uint256 stor20;
uint8 contractSwapEnabled; offset 8
uint256 stor21; offset 8
uint256 sub_e4fcfd18;
uint256 swapThreshold;
uint256 sub_2e8fa821;
uint8 sub_efe7dc90;
uint8 tradingEnabled; offset 8
uint8 _hasLiqBeenAdded; offset 16
uint16 stor26;
address stor26; offset 24
uint256 stor26; offset 24
uint256 stor27;
uint256 sub_b8e0e96d;
uint8 sub_b26e0beb;

function swapThreshold() {
    return swapThreshold
}

function dexRouter() {
    return dexRouterAddress
}

function totalSupply() {
    require totalSupply != 0
    return totalSupply
}

function sub_2e8fa821(?) {
    return sub_2e8fa821
}

function lpPair() {
    return address(lpPairAddress)
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function _hasLiqBeenAdded() {
    return bool(_hasLiqBeenAdded)
}

function isExcludedFromLimits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function sub_b26e0beb(?) {
    return bool(sub_b26e0beb)
}

function sub_b8e0e96d(?) {
    return sub_b8e0e96d
}

function isExcludedFromDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e4fcfd18(?) {
    return sub_e4fcfd18
}

function sub_efe7dc90(?) {
    return bool(sub_efe7dc90)
}

function contractSwapEnabled() {
    return bool(uint8(contractSwapEnabled))
}

function getMaxTX() {
    return (stor17 / 10^18)
}

function getMaxWallet() {
    return (stor18 / 10^18)
}

function sub_f94aa1b4(?) {
    return stor14, stor15, stor16
}

function sub_069d955f(?) {
    return uint16(stor10.field_0), uint16(stor10.field_0), uint16(stor10.field_0), uint16(stor10.field_48)
}

function sub_db40e302(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 24 * 3600
    sub_b8e0e96d = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setReflectorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 750000
    stor20 = arg1
}

function sub_1de3b1c7(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b26e0beb = uint8(bool(arg1))
}

function _ratios() {
    return uint16(stor11.field_0), 
           uint16(stor11.field_0),
           uint16(stor11.field_0),
           uint16(stor11.field_0),
           uint16(stor11.field_64),
           uint16(stor11.field_0)
}

function giveMeWelfarePlease() {
    require ext_code.size(stor19)
    call stor19.0x2e6f0efd with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function manualDeposit() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor19)
    call stor19.0x86d5c4be with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function setWallets(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = arg1
    stor15 = arg2
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[stor0] = 0
    stor7[stor0] = 0
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function setExcludedFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = uint8(arg2)
}

function getTotalReflected() {
    staticcall stor19.0x5695fa58 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setExcludedFromLimits(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(arg2)
}

function getSniperAmt() {
    staticcall address(stor26.field_24).0x55dbc369 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setContractSwapSettings(bool arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor21) = Mask(248, 0, arg1)
    sub_efe7dc90 = uint8(arg2)
}

function getUserRealizedGains(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall stor19.0xd59b2ffd with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getUserUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall stor19.0xf6ed2017 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setInitializers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 != this.address
    require arg1 != this.address
    require arg2 != arg1
    stor19 = arg2
    address(stor26.field_24) = arg1
}

function sub_dbc1d6ca(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        require ext_code.size(stor19)
        call stor19.0xa9e732bb with:
             gas gas_remaining wei
            args stor20
    else:
        require arg1 >= stor20
        require ext_code.size(stor19)
        call stor19.0xa9e732bb with:
             gas gas_remaining wei
            args arg1
}

function removeSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(stor26.field_24))
    call address(stor26.field_24).0x33251a0b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(stor26.field_24))
    call address(stor26.field_24).0xc6a276c2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall address(stor26.field_24).0xfe575a87 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function setGasPriceLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 150:
        revert with 0, 'Too low.'
    require ext_code.size(address(stor26.field_24))
    call address(stor26.field_24).setGasPriceLimit(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTaxes(uint16 arg1, uint16 arg2, uint16 arg3, uint16 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 2000
    require arg2 <= 2000
    require arg3 <= 2000
    require arg4 <= 3000
    uint16(stor10.field_0) = arg1
    uint16(stor10.field_16) = arg2
    uint16(stor10.field_32) = arg3
    uint16(stor10.field_48) = arg4
}

function approveContractContingency() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not dexRouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor12] = -1
    emit Approval(-1, this.address, dexRouterAddress);
    return 1
}

function setSwapSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    swapThreshold = totalSupply * arg1 / arg2
    if totalSupply and arg3 > -1 / totalSupply:
        revert with 'NH{q', 17
    if not arg4:
        revert with 'NH{q', 18
    sub_2e8fa821 = totalSupply * arg3 / arg4
    sub_e4fcfd18 = arg5
}

function setProtectionSettings(bool arg1, bool arg2, bool arg3, bool arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(stor26.field_24))
    call address(stor26.field_24).setProtections(bool arg1, bool arg2, bool arg3, bool arg4) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMaxWalletSize(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if totalSupply * arg1 / arg2 < totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max Wallet amt must be above 0.1% of total supply.'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    stor18 = totalSupply * arg1 / arg2
}

function setMaxTxPercent(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if totalSupply * arg1 / arg2 < totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Max Transaction amt must be above 0.1% of total supply.'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    stor17 = totalSupply * arg1 / arg2
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tradingEnabled:
        revert with 0, 'Trading already enabled!'
    if not _hasLiqBeenAdded:
        revert with 0, 'Liquidity must be added.'
    if not address(stor26.field_24):
        Mask(232, 0, stor26.field_24) = Mask(232, 0, this.address)
    require ext_code.size(address(stor26.field_24))
    call address(stor26.field_24).setLaunch(address arg1, uint32 arg2, uint64 arg3, uint8 arg4) with:
         gas gas_remaining wei
        args 0, uint32(stor13), block.number << 224, block.timestamp << 192, 18
    uint16(stor26.field_0) = 257
    stor27 = block.timestamp
}

function setDividendExcluded(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != this.address
    require address(lpPairAddress) != arg1
    stor7[address(arg1)] = uint8(arg2)
    require ext_code.size(stor19)
    if not arg2:
        call stor19.0xdf047e9e with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor19.0xdf047e9e with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setLpPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        stor2[address(arg1)] = 0
        require ext_code.size(address(stor26.field_24))
        call address(stor26.field_24).0x80c581d1 with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        if stor3:
            if block.timestamp < stor3:
                revert with 'NH{q', 17
            if block.timestamp - stor3 <= 72 * 24 * 3600:
                revert with 0, 'Cannot set a new pair this week!'
        stor2[address(arg1)] = 1
        stor3 = block.timestamp
        require ext_code.size(address(stor26.field_24))
        call address(stor26.field_24).0x80c581d1 with:
             gas gas_remaining wei
            args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f08f43a2(?) {
    require calldata.size - 4 >= 160
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor11.field_0) = uint16(arg1)
    uint16(stor11.field_16) = uint16(arg2)
    uint16(stor11.field_32) = uint16(arg3)
    uint16(stor11.field_48) = uint16(arg4)
    uint16(stor11.field_64) = uint16(arg5)
    if uint16(arg1) > -uint16(arg2) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg2) + uint16(arg1)) > -uint16(arg3) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))) > -uint16(arg4) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))) > -uint16(arg5) + 65535:
        revert with 'NH{q', 17
    uint16(stor11.field_80) = uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))))
}

function setReflectionCriteria(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        if arg2 and 1 > -1 / arg2:
            revert with 'NH{q', 17
        require ext_code.size(stor19)
        call stor19.0x8cd7f02e with:
             gas gas_remaining wei
            args arg1, arg2
    else:
        if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
            if arg2 and 10^arg3 > -1 / arg2:
                revert with 'NH{q', 17
            require ext_code.size(stor19)
            call stor19.0x8cd7f02e with:
                 gas gas_remaining wei
                args arg1, arg2 * 10^arg3
        else:
            s = 10
            t = 1
            idx = arg3
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            if arg2 and s * t > -1 / arg2:
                revert with 'NH{q', 17
            require ext_code.size(stor19)
            call stor19.0x8cd7f02e with:
                 gas gas_remaining wei
                args arg1, arg2 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    staticcall arg1.0x73b295c2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0xe6a43905 with:
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
        staticcall arg1.0x73b295c2 with:
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
    address(lpPairAddress) = ext_call.return_data[12 len 20]
    dexRouterAddress = arg1
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][address(arg1)] = -1
    emit Approval(-1, this.address, arg1);
}

function getUserInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x5e6056bb00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    staticcall stor19.0x5e6056bb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + 96])) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _817 = 0, mem[132 len 28]
        require 0, mem[132 len 28] <= test266151307()
        require 0, mem[132 len 28] + 127 < return_data.size + 96
        _819 = mem[0, mem[132 len 28] + 96]
        if mem[0, mem[132 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        _821 = mem[64]
        if mem[64] + ceil32(ceil32(mem[0, mem[132 len 28] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[0, mem[132 len 28] + 96])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[0, mem[132 len 28] + 96])) + 1
        mem[_821] = _819
        require _817 + _819 + 32 <= return_data.size
        mem[_821 + 32 len ceil32(_819)] = mem[_817 + 128 len ceil32(_819)]
        if ceil32(_819) <= _819:
            _1627 = mem[160]
            require mem[160] <= test266151307()
            require mem[160] + 127 < return_data.size + 96
            _1631 = mem[mem[160] + 96]
            if mem[mem[160] + 96] > test266151307():
                revert with 'NH{q', 65
            _1635 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1
            mem[_1635] = _1631
            require _1627 + _1631 + 32 <= return_data.size
            mem[_1635 + 32 len ceil32(_1631)] = mem[_1627 + 128 len ceil32(_1631)]
            if ceil32(_1631) <= _1631:
                _2431 = mem[192]
                require mem[192] <= test266151307()
                require mem[192] + 127 < return_data.size + 96
                _2439 = mem[mem[192] + 96]
                if mem[mem[192] + 96] > test266151307():
                    revert with 'NH{q', 65
                _2447 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1
                mem[_2447] = _2439
                require _2431 + _2439 + 32 <= return_data.size
                mem[_2447 + 32 len ceil32(_2439)] = mem[_2431 + 128 len ceil32(_2439)]
                if ceil32(_2439) <= _2439:
                    _3223 = mem[64]
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = _5
                    mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
                    if ceil32(_5) > _5:
                        mem[_5 + mem[64] + 160] = 0
                    mem[mem[64] + 32] = ceil32(_5) + 160
                    mem[ceil32(_5) + mem[64] + 160] = _819
                    mem[ceil32(_5) + mem[64] + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
                    if ceil32(_819) <= _819:
                        mem[mem[64] + 64] = ceil32(_819) + ceil32(_5) + 192
                        mem[ceil32(_819) + ceil32(_5) + mem[64] + 192] = _1631
                        mem[ceil32(_819) + ceil32(_5) + mem[64] + 224 len ceil32(_1631)] = mem[_1635 + 32 len ceil32(_1631)]
                        if ceil32(_1631) > _1631:
                            mem[_1631 + ceil32(_819) + ceil32(_5) + mem[64] + 224] = 0
                        mem[mem[64] + 96] = ceil32(_1631) + ceil32(_819) + ceil32(_5) + 224
                        mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + mem[64] + 224] = _2439
                        mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + mem[64] + 256 len ceil32(_2439)] = mem[_2447 + 32 len ceil32(_2439)]
                        if ceil32(_2439) > _2439:
                            mem[_2439 + ceil32(_1631) + ceil32(_819) + ceil32(_5) + mem[64] + 256] = 0
                        return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_819) + ceil32(_5) + 32], _1631, mem[mem[64] + ceil32(_819) + ceil32(_5) + 224 len ceil32(_2439) + ceil32(_1631) + 32]), 
                               ceil32(_5) + 160,
                               ceil32(_819) + ceil32(_5) + 192,
                               ceil32(_1631) + ceil32(_819) + ceil32(_5) + 224
                    mem[_819 + ceil32(_5) + mem[64] + 192] = 0
                    mem[mem[64] + 64] = ceil32(_819) + ceil32(_5) + 192
                    mem[ceil32(_819) + ceil32(_5) + _3223 + 192] = _1631
                    mem[ceil32(_819) + ceil32(_5) + _3223 + 224 len ceil32(_1631)] = mem[_1635 + 32 len ceil32(_1631)]
                    if ceil32(_1631) > _1631:
                        mem[_1631 + ceil32(_819) + ceil32(_5) + _3223 + 224] = 0
                    mem[_3223 + 96] = ceil32(_1631) + ceil32(_819) + ceil32(_5) + 224
                    mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3223 + 224] = _2439
                    mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3223 + 256 len ceil32(_2439)] = mem[_2447 + 32 len ceil32(_2439)]
                    if ceil32(_2439) > _2439:
                        mem[_2439 + ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3223 + 256] = 0
                    return memory
                      from mem[64]
                       len ceil32(_2439) + ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3223 + -mem[64] + 256
                mem[_2439 + _2447 + 32] = 0
                _3224 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = _5
                mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
                if ceil32(_5) <= _5:
                    mem[mem[64] + 32] = ceil32(_5) + 160
                    mem[ceil32(_5) + mem[64] + 160] = _819
                    mem[ceil32(_5) + mem[64] + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
                    if ceil32(_819) > _819:
                        mem[_819 + ceil32(_5) + mem[64] + 192] = 0
                    mem[mem[64] + 64] = ceil32(_819) + ceil32(_5) + 192
                    mem[ceil32(_819) + ceil32(_5) + _3224 + 192] = _1631
                    mem[ceil32(_819) + ceil32(_5) + _3224 + 224 len ceil32(_1631)] = mem[_1635 + 32 len ceil32(_1631)]
                    if ceil32(_1631) > _1631:
                        mem[_1631 + ceil32(_819) + ceil32(_5) + _3224 + 224] = 0
                    mem[_3224 + 96] = ceil32(_1631) + ceil32(_819) + ceil32(_5) + 224
                    mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3224 + 224] = _2439
                    mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3224 + 256 len ceil32(_2439)] = mem[_2447 + 32 len ceil32(_2439)]
                    if ceil32(_2439) > _2439:
                        mem[_2439 + ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3224 + 256] = 0
                else:
                    mem[_5 + mem[64] + 160] = 0
                    mem[mem[64] + 32] = ceil32(_5) + 160
                    mem[ceil32(_5) + _3224 + 160] = _819
                    mem[ceil32(_5) + _3224 + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
                    if ceil32(_819) > _819:
                        mem[_819 + ceil32(_5) + _3224 + 192] = 0
                    mem[_3224 + 64] = ceil32(_819) + ceil32(_5) + 192
                    mem[ceil32(_819) + ceil32(_5) + _3224 + 192] = _1631
                    mem[ceil32(_819) + ceil32(_5) + _3224 + 224 len ceil32(_1631)] = mem[_1635 + 32 len ceil32(_1631)]
                    if ceil32(_1631) > _1631:
                        mem[_1631 + ceil32(_819) + ceil32(_5) + _3224 + 224] = 0
                    mem[_3224 + 96] = ceil32(_1631) + ceil32(_819) + ceil32(_5) + 224
                    mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3224 + 224] = _2439
                    mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3224 + 256 len ceil32(_2439)] = mem[_2447 + 32 len ceil32(_2439)]
                    if ceil32(_2439) > _2439:
                        mem[_2439 + ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3224 + 256] = 0
                return memory
                  from mem[64]
                   len ceil32(_2439) + ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3224 + -mem[64] + 256
            mem[_1631 + _1635 + 32] = 0
            _2432 = mem[192]
            require mem[192] <= test266151307()
            require mem[192] + 127 < return_data.size + 96
            _2440 = mem[mem[192] + 96]
            if mem[mem[192] + 96] > test266151307():
                revert with 'NH{q', 65
            _2448 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1
            mem[_2448] = _2440
            require _2432 + _2440 + 32 <= return_data.size
            mem[_2448 + 32 len ceil32(_2440)] = mem[_2432 + 128 len ceil32(_2440)]
            if ceil32(_2440) <= _2440:
                _3225 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = _5
                mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
                if ceil32(_5) <= _5:
                    mem[mem[64] + 32] = ceil32(_5) + 160
                    mem[ceil32(_5) + mem[64] + 160] = _819
                    mem[ceil32(_5) + mem[64] + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
                    if ceil32(_819) > _819:
                        mem[_819 + ceil32(_5) + mem[64] + 192] = 0
                    mem[mem[64] + 64] = ceil32(_819) + ceil32(_5) + 192
                    mem[ceil32(_819) + ceil32(_5) + _3225 + 192] = _1631
                    mem[ceil32(_819) + ceil32(_5) + _3225 + 224 len ceil32(_1631)] = mem[_1635 + 32 len ceil32(_1631)]
                    if ceil32(_1631) > _1631:
                        mem[_1631 + ceil32(_819) + ceil32(_5) + _3225 + 224] = 0
                    mem[_3225 + 96] = ceil32(_1631) + ceil32(_819) + ceil32(_5) + 224
                    mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3225 + 224] = _2440
                    mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3225 + 256 len ceil32(_2440)] = mem[_2448 + 32 len ceil32(_2440)]
                    if ceil32(_2440) > _2440:
                        mem[_2440 + ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3225 + 256] = 0
                else:
                    mem[_5 + mem[64] + 160] = 0
                    mem[mem[64] + 32] = ceil32(_5) + 160
                    mem[ceil32(_5) + _3225 + 160] = _819
                    mem[ceil32(_5) + _3225 + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
                    if ceil32(_819) > _819:
                        mem[_819 + ceil32(_5) + _3225 + 192] = 0
                    mem[_3225 + 64] = ceil32(_819) + ceil32(_5) + 192
                    mem[ceil32(_819) + ceil32(_5) + _3225 + 192] = _1631
                    mem[ceil32(_819) + ceil32(_5) + _3225 + 224 len ceil32(_1631)] = mem[_1635 + 32 len ceil32(_1631)]
                    if ceil32(_1631) > _1631:
                        mem[_1631 + ceil32(_819) + ceil32(_5) + _3225 + 224] = 0
                    mem[_3225 + 96] = ceil32(_1631) + ceil32(_819) + ceil32(_5) + 224
                    mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3225 + 224] = _2440
                    mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3225 + 256 len ceil32(_2440)] = mem[_2448 + 32 len ceil32(_2440)]
                    if ceil32(_2440) > _2440:
                        mem[_2440 + ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3225 + 256] = 0
                return memory
                  from mem[64]
                   len ceil32(_2440) + ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3225 + -mem[64] + 256
            mem[_2440 + _2448 + 32] = 0
            _3226 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _5
            mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) <= _5:
                mem[mem[64] + 32] = ceil32(_5) + 160
                mem[ceil32(_5) + mem[64] + 160] = _819
                mem[ceil32(_5) + mem[64] + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
                if ceil32(_819) > _819:
                    mem[_819 + ceil32(_5) + mem[64] + 192] = 0
                mem[mem[64] + 64] = ceil32(_819) + ceil32(_5) + 192
                mem[ceil32(_819) + ceil32(_5) + _3226 + 192] = _1631
                mem[ceil32(_819) + ceil32(_5) + _3226 + 224 len ceil32(_1631)] = mem[_1635 + 32 len ceil32(_1631)]
                if ceil32(_1631) > _1631:
                    mem[_1631 + ceil32(_819) + ceil32(_5) + _3226 + 224] = 0
                mem[_3226 + 96] = ceil32(_1631) + ceil32(_819) + ceil32(_5) + 224
                mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3226 + 224] = _2440
                mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3226 + 256 len ceil32(_2440)] = mem[_2448 + 32 len ceil32(_2440)]
                if ceil32(_2440) > _2440:
                    mem[_2440 + ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3226 + 256] = 0
            else:
                mem[_5 + mem[64] + 160] = 0
                mem[mem[64] + 32] = ceil32(_5) + 160
                mem[ceil32(_5) + _3226 + 160] = _819
                mem[ceil32(_5) + _3226 + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
                if ceil32(_819) > _819:
                    mem[_819 + ceil32(_5) + _3226 + 192] = 0
                mem[_3226 + 64] = ceil32(_819) + ceil32(_5) + 192
                mem[ceil32(_819) + ceil32(_5) + _3226 + 192] = _1631
                mem[ceil32(_819) + ceil32(_5) + _3226 + 224 len ceil32(_1631)] = mem[_1635 + 32 len ceil32(_1631)]
                if ceil32(_1631) > _1631:
                    mem[_1631 + ceil32(_819) + ceil32(_5) + _3226 + 224] = 0
                mem[_3226 + 96] = ceil32(_1631) + ceil32(_819) + ceil32(_5) + 224
                mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3226 + 224] = _2440
                mem[ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3226 + 256 len ceil32(_2440)] = mem[_2448 + 32 len ceil32(_2440)]
                if ceil32(_2440) > _2440:
                    mem[_2440 + ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3226 + 256] = 0
            return memory
              from mem[64]
               len ceil32(_2440) + ceil32(_1631) + ceil32(_819) + ceil32(_5) + _3226 + -mem[64] + 256
        mem[_819 + _821 + 32] = 0
        _1628 = mem[160]
        require mem[160] <= test266151307()
        require mem[160] + 127 < return_data.size + 96
        _1632 = mem[mem[160] + 96]
        if mem[mem[160] + 96] > test266151307():
            revert with 'NH{q', 65
        _1636 = mem[64]
        if mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1
        mem[_1636] = _1632
        require _1628 + _1632 + 32 <= return_data.size
        mem[_1636 + 32 len ceil32(_1632)] = mem[_1628 + 128 len ceil32(_1632)]
        if ceil32(_1632) <= _1632:
            _2433 = mem[192]
            require mem[192] <= test266151307()
            require mem[192] + 127 < return_data.size + 96
            _2441 = mem[mem[192] + 96]
            if mem[mem[192] + 96] > test266151307():
                revert with 'NH{q', 65
            _2449 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1
            mem[_2449] = _2441
            require _2433 + _2441 + 32 <= return_data.size
            mem[_2449 + 32 len ceil32(_2441)] = mem[_2433 + 128 len ceil32(_2441)]
            if ceil32(_2441) <= _2441:
                _3227 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = _5
                mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
                if ceil32(_5) <= _5:
                    mem[mem[64] + 32] = ceil32(_5) + 160
                    mem[ceil32(_5) + mem[64] + 160] = _819
                    mem[ceil32(_5) + mem[64] + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
                    if ceil32(_819) > _819:
                        mem[_819 + ceil32(_5) + mem[64] + 192] = 0
                    mem[mem[64] + 64] = ceil32(_819) + ceil32(_5) + 192
                    mem[ceil32(_819) + ceil32(_5) + _3227 + 192] = _1632
                    mem[ceil32(_819) + ceil32(_5) + _3227 + 224 len ceil32(_1632)] = mem[_1636 + 32 len ceil32(_1632)]
                    if ceil32(_1632) > _1632:
                        mem[_1632 + ceil32(_819) + ceil32(_5) + _3227 + 224] = 0
                    mem[_3227 + 96] = ceil32(_1632) + ceil32(_819) + ceil32(_5) + 224
                    mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3227 + 224] = _2441
                    mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3227 + 256 len ceil32(_2441)] = mem[_2449 + 32 len ceil32(_2441)]
                    if ceil32(_2441) > _2441:
                        mem[_2441 + ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3227 + 256] = 0
                else:
                    mem[_5 + mem[64] + 160] = 0
                    mem[mem[64] + 32] = ceil32(_5) + 160
                    mem[ceil32(_5) + _3227 + 160] = _819
                    mem[ceil32(_5) + _3227 + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
                    if ceil32(_819) > _819:
                        mem[_819 + ceil32(_5) + _3227 + 192] = 0
                    mem[_3227 + 64] = ceil32(_819) + ceil32(_5) + 192
                    mem[ceil32(_819) + ceil32(_5) + _3227 + 192] = _1632
                    mem[ceil32(_819) + ceil32(_5) + _3227 + 224 len ceil32(_1632)] = mem[_1636 + 32 len ceil32(_1632)]
                    if ceil32(_1632) > _1632:
                        mem[_1632 + ceil32(_819) + ceil32(_5) + _3227 + 224] = 0
                    mem[_3227 + 96] = ceil32(_1632) + ceil32(_819) + ceil32(_5) + 224
                    mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3227 + 224] = _2441
                    mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3227 + 256 len ceil32(_2441)] = mem[_2449 + 32 len ceil32(_2441)]
                    if ceil32(_2441) > _2441:
                        mem[_2441 + ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3227 + 256] = 0
                return memory
                  from mem[64]
                   len ceil32(_2441) + ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3227 + -mem[64] + 256
            mem[_2441 + _2449 + 32] = 0
            _3228 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _5
            mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) <= _5:
                mem[mem[64] + 32] = ceil32(_5) + 160
                mem[ceil32(_5) + mem[64] + 160] = _819
                mem[ceil32(_5) + mem[64] + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
                if ceil32(_819) > _819:
                    mem[_819 + ceil32(_5) + mem[64] + 192] = 0
                mem[mem[64] + 64] = ceil32(_819) + ceil32(_5) + 192
                mem[ceil32(_819) + ceil32(_5) + _3228 + 192] = _1632
                mem[ceil32(_819) + ceil32(_5) + _3228 + 224 len ceil32(_1632)] = mem[_1636 + 32 len ceil32(_1632)]
                if ceil32(_1632) > _1632:
                    mem[_1632 + ceil32(_819) + ceil32(_5) + _3228 + 224] = 0
                mem[_3228 + 96] = ceil32(_1632) + ceil32(_819) + ceil32(_5) + 224
                mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3228 + 224] = _2441
                mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3228 + 256 len ceil32(_2441)] = mem[_2449 + 32 len ceil32(_2441)]
                if ceil32(_2441) > _2441:
                    mem[_2441 + ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3228 + 256] = 0
            else:
                mem[_5 + mem[64] + 160] = 0
                mem[mem[64] + 32] = ceil32(_5) + 160
                mem[ceil32(_5) + _3228 + 160] = _819
                mem[ceil32(_5) + _3228 + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
                if ceil32(_819) > _819:
                    mem[_819 + ceil32(_5) + _3228 + 192] = 0
                mem[_3228 + 64] = ceil32(_819) + ceil32(_5) + 192
                mem[ceil32(_819) + ceil32(_5) + _3228 + 192] = _1632
                mem[ceil32(_819) + ceil32(_5) + _3228 + 224 len ceil32(_1632)] = mem[_1636 + 32 len ceil32(_1632)]
                if ceil32(_1632) > _1632:
                    mem[_1632 + ceil32(_819) + ceil32(_5) + _3228 + 224] = 0
                mem[_3228 + 96] = ceil32(_1632) + ceil32(_819) + ceil32(_5) + 224
                mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3228 + 224] = _2441
                mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3228 + 256 len ceil32(_2441)] = mem[_2449 + 32 len ceil32(_2441)]
                if ceil32(_2441) > _2441:
                    mem[_2441 + ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3228 + 256] = 0
            return memory
              from mem[64]
               len ceil32(_2441) + ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3228 + -mem[64] + 256
        mem[_1632 + _1636 + 32] = 0
        _2434 = mem[192]
        require mem[192] <= test266151307()
        require mem[192] + 127 < return_data.size + 96
        _2442 = mem[mem[192] + 96]
        if mem[mem[192] + 96] > test266151307():
            revert with 'NH{q', 65
        _2450 = mem[64]
        if mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1
        mem[_2450] = _2442
        require _2434 + _2442 + 32 <= return_data.size
        mem[_2450 + 32 len ceil32(_2442)] = mem[_2434 + 128 len ceil32(_2442)]
        if ceil32(_2442) <= _2442:
            _3229 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _5
            mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) > _5:
                mem[_5 + mem[64] + 160] = 0
            mem[mem[64] + 32] = ceil32(_5) + 160
            mem[ceil32(_5) + mem[64] + 160] = _819
            mem[ceil32(_5) + mem[64] + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
            if ceil32(_819) <= _819:
                mem[mem[64] + 64] = ceil32(_819) + ceil32(_5) + 192
                mem[ceil32(_819) + ceil32(_5) + mem[64] + 192] = _1632
                mem[ceil32(_819) + ceil32(_5) + mem[64] + 224 len ceil32(_1632)] = mem[_1636 + 32 len ceil32(_1632)]
                if ceil32(_1632) > _1632:
                    mem[_1632 + ceil32(_819) + ceil32(_5) + mem[64] + 224] = 0
                mem[mem[64] + 96] = ceil32(_1632) + ceil32(_819) + ceil32(_5) + 224
                mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + mem[64] + 224] = _2442
                mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + mem[64] + 256 len ceil32(_2442)] = mem[_2450 + 32 len ceil32(_2442)]
                if ceil32(_2442) > _2442:
                    mem[_2442 + ceil32(_1632) + ceil32(_819) + ceil32(_5) + mem[64] + 256] = 0
                return Array(len=_5, data=mem[mem[64] + 160 len ceil32(_819) + ceil32(_5) + 32], _1632, mem[mem[64] + ceil32(_819) + ceil32(_5) + 224 len ceil32(_2442) + ceil32(_1632) + 32]), 
                       ceil32(_5) + 160,
                       ceil32(_819) + ceil32(_5) + 192,
                       ceil32(_1632) + ceil32(_819) + ceil32(_5) + 224
            mem[_819 + ceil32(_5) + mem[64] + 192] = 0
            mem[mem[64] + 64] = ceil32(_819) + ceil32(_5) + 192
            mem[ceil32(_819) + ceil32(_5) + _3229 + 192] = _1632
            mem[ceil32(_819) + ceil32(_5) + _3229 + 224 len ceil32(_1632)] = mem[_1636 + 32 len ceil32(_1632)]
            if ceil32(_1632) > _1632:
                mem[_1632 + ceil32(_819) + ceil32(_5) + _3229 + 224] = 0
            mem[_3229 + 96] = ceil32(_1632) + ceil32(_819) + ceil32(_5) + 224
            mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3229 + 224] = _2442
            mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3229 + 256 len ceil32(_2442)] = mem[_2450 + 32 len ceil32(_2442)]
            if ceil32(_2442) > _2442:
                mem[_2442 + ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3229 + 256] = 0
            return memory
              from mem[64]
               len ceil32(_2442) + ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3229 + -mem[64] + 256
        mem[_2442 + _2450 + 32] = 0
        _3230 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 32] = ceil32(_5) + 160
            mem[ceil32(_5) + mem[64] + 160] = _819
            mem[ceil32(_5) + mem[64] + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
            if ceil32(_819) > _819:
                mem[_819 + ceil32(_5) + mem[64] + 192] = 0
            mem[mem[64] + 64] = ceil32(_819) + ceil32(_5) + 192
            mem[ceil32(_819) + ceil32(_5) + _3230 + 192] = _1632
            mem[ceil32(_819) + ceil32(_5) + _3230 + 224 len ceil32(_1632)] = mem[_1636 + 32 len ceil32(_1632)]
            if ceil32(_1632) > _1632:
                mem[_1632 + ceil32(_819) + ceil32(_5) + _3230 + 224] = 0
            mem[_3230 + 96] = ceil32(_1632) + ceil32(_819) + ceil32(_5) + 224
            mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3230 + 224] = _2442
            mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3230 + 256 len ceil32(_2442)] = mem[_2450 + 32 len ceil32(_2442)]
            if ceil32(_2442) > _2442:
                mem[_2442 + ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3230 + 256] = 0
        else:
            mem[_5 + mem[64] + 160] = 0
            mem[mem[64] + 32] = ceil32(_5) + 160
            mem[ceil32(_5) + _3230 + 160] = _819
            mem[ceil32(_5) + _3230 + 192 len ceil32(_819)] = mem[_821 + 32 len ceil32(_819)]
            if ceil32(_819) > _819:
                mem[_819 + ceil32(_5) + _3230 + 192] = 0
            mem[_3230 + 64] = ceil32(_819) + ceil32(_5) + 192
            mem[ceil32(_819) + ceil32(_5) + _3230 + 192] = _1632
            mem[ceil32(_819) + ceil32(_5) + _3230 + 224 len ceil32(_1632)] = mem[_1636 + 32 len ceil32(_1632)]
            if ceil32(_1632) > _1632:
                mem[_1632 + ceil32(_819) + ceil32(_5) + _3230 + 224] = 0
            mem[_3230 + 96] = ceil32(_1632) + ceil32(_819) + ceil32(_5) + 224
            mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3230 + 224] = _2442
            mem[ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3230 + 256 len ceil32(_2442)] = mem[_2450 + 32 len ceil32(_2442)]
            if ceil32(_2442) > _2442:
                mem[_2442 + ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3230 + 256] = 0
        return memory
          from mem[64]
           len ceil32(_2442) + ceil32(_1632) + ceil32(_819) + ceil32(_5) + _3230 + -mem[64] + 256
    mem[_5 + ceil32(return_data.size) + 128] = 0
    _818 = 0, mem[132 len 28]
    require 0, mem[132 len 28] <= test266151307()
    require 0, mem[132 len 28] + 127 < return_data.size + 96
    _820 = mem[0, mem[132 len 28] + 96]
    if mem[0, mem[132 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    _822 = mem[64]
    if mem[64] + ceil32(ceil32(mem[0, mem[132 len 28] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[0, mem[132 len 28] + 96])) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(ceil32(mem[0, mem[132 len 28] + 96])) + 1
    mem[_822] = _820
    require _818 + _820 + 32 <= return_data.size
    mem[_822 + 32 len ceil32(_820)] = mem[_818 + 128 len ceil32(_820)]
    if ceil32(_820) <= _820:
        _1629 = mem[160]
        require mem[160] <= test266151307()
        require mem[160] + 127 < return_data.size + 96
        _1633 = mem[mem[160] + 96]
        if mem[mem[160] + 96] > test266151307():
            revert with 'NH{q', 65
        _1637 = mem[64]
        if mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1
        mem[_1637] = _1633
        require _1629 + _1633 + 32 <= return_data.size
        mem[_1637 + 32 len ceil32(_1633)] = mem[_1629 + 128 len ceil32(_1633)]
        if ceil32(_1633) <= _1633:
            _2435 = mem[192]
            require mem[192] <= test266151307()
            require mem[192] + 127 < return_data.size + 96
            _2443 = mem[mem[192] + 96]
            if mem[mem[192] + 96] > test266151307():
                revert with 'NH{q', 65
            _2451 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1
            mem[_2451] = _2443
            require _2435 + _2443 + 32 <= return_data.size
            mem[_2451 + 32 len ceil32(_2443)] = mem[_2435 + 128 len ceil32(_2443)]
            if ceil32(_2443) <= _2443:
                _3231 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = _5
                mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
                if ceil32(_5) <= _5:
                    mem[mem[64] + 32] = ceil32(_5) + 160
                    mem[ceil32(_5) + mem[64] + 160] = _820
                    mem[ceil32(_5) + mem[64] + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
                    if ceil32(_820) > _820:
                        mem[_820 + ceil32(_5) + mem[64] + 192] = 0
                    mem[mem[64] + 64] = ceil32(_820) + ceil32(_5) + 192
                    mem[ceil32(_820) + ceil32(_5) + _3231 + 192] = _1633
                    mem[ceil32(_820) + ceil32(_5) + _3231 + 224 len ceil32(_1633)] = mem[_1637 + 32 len ceil32(_1633)]
                    if ceil32(_1633) > _1633:
                        mem[_1633 + ceil32(_820) + ceil32(_5) + _3231 + 224] = 0
                    mem[_3231 + 96] = ceil32(_1633) + ceil32(_820) + ceil32(_5) + 224
                    mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3231 + 224] = _2443
                    mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3231 + 256 len ceil32(_2443)] = mem[_2451 + 32 len ceil32(_2443)]
                    if ceil32(_2443) > _2443:
                        mem[_2443 + ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3231 + 256] = 0
                else:
                    mem[_5 + mem[64] + 160] = 0
                    mem[mem[64] + 32] = ceil32(_5) + 160
                    mem[ceil32(_5) + _3231 + 160] = _820
                    mem[ceil32(_5) + _3231 + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
                    if ceil32(_820) > _820:
                        mem[_820 + ceil32(_5) + _3231 + 192] = 0
                    mem[_3231 + 64] = ceil32(_820) + ceil32(_5) + 192
                    mem[ceil32(_820) + ceil32(_5) + _3231 + 192] = _1633
                    mem[ceil32(_820) + ceil32(_5) + _3231 + 224 len ceil32(_1633)] = mem[_1637 + 32 len ceil32(_1633)]
                    if ceil32(_1633) > _1633:
                        mem[_1633 + ceil32(_820) + ceil32(_5) + _3231 + 224] = 0
                    mem[_3231 + 96] = ceil32(_1633) + ceil32(_820) + ceil32(_5) + 224
                    mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3231 + 224] = _2443
                    mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3231 + 256 len ceil32(_2443)] = mem[_2451 + 32 len ceil32(_2443)]
                    if ceil32(_2443) > _2443:
                        mem[_2443 + ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3231 + 256] = 0
                return memory
                  from mem[64]
                   len ceil32(_2443) + ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3231 + -mem[64] + 256
            mem[_2443 + _2451 + 32] = 0
            _3232 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _5
            mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) <= _5:
                mem[mem[64] + 32] = ceil32(_5) + 160
                mem[ceil32(_5) + mem[64] + 160] = _820
                mem[ceil32(_5) + mem[64] + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
                if ceil32(_820) > _820:
                    mem[_820 + ceil32(_5) + mem[64] + 192] = 0
                mem[mem[64] + 64] = ceil32(_820) + ceil32(_5) + 192
                mem[ceil32(_820) + ceil32(_5) + _3232 + 192] = _1633
                mem[ceil32(_820) + ceil32(_5) + _3232 + 224 len ceil32(_1633)] = mem[_1637 + 32 len ceil32(_1633)]
                if ceil32(_1633) > _1633:
                    mem[_1633 + ceil32(_820) + ceil32(_5) + _3232 + 224] = 0
                mem[_3232 + 96] = ceil32(_1633) + ceil32(_820) + ceil32(_5) + 224
                mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3232 + 224] = _2443
                mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3232 + 256 len ceil32(_2443)] = mem[_2451 + 32 len ceil32(_2443)]
                if ceil32(_2443) > _2443:
                    mem[_2443 + ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3232 + 256] = 0
            else:
                mem[_5 + mem[64] + 160] = 0
                mem[mem[64] + 32] = ceil32(_5) + 160
                mem[ceil32(_5) + _3232 + 160] = _820
                mem[ceil32(_5) + _3232 + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
                if ceil32(_820) > _820:
                    mem[_820 + ceil32(_5) + _3232 + 192] = 0
                mem[_3232 + 64] = ceil32(_820) + ceil32(_5) + 192
                mem[ceil32(_820) + ceil32(_5) + _3232 + 192] = _1633
                mem[ceil32(_820) + ceil32(_5) + _3232 + 224 len ceil32(_1633)] = mem[_1637 + 32 len ceil32(_1633)]
                if ceil32(_1633) > _1633:
                    mem[_1633 + ceil32(_820) + ceil32(_5) + _3232 + 224] = 0
                mem[_3232 + 96] = ceil32(_1633) + ceil32(_820) + ceil32(_5) + 224
                mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3232 + 224] = _2443
                mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3232 + 256 len ceil32(_2443)] = mem[_2451 + 32 len ceil32(_2443)]
                if ceil32(_2443) > _2443:
                    mem[_2443 + ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3232 + 256] = 0
            return memory
              from mem[64]
               len ceil32(_2443) + ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3232 + -mem[64] + 256
        mem[_1633 + _1637 + 32] = 0
        _2436 = mem[192]
        require mem[192] <= test266151307()
        require mem[192] + 127 < return_data.size + 96
        _2444 = mem[mem[192] + 96]
        if mem[mem[192] + 96] > test266151307():
            revert with 'NH{q', 65
        _2452 = mem[64]
        if mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1
        mem[_2452] = _2444
        require _2436 + _2444 + 32 <= return_data.size
        mem[_2452 + 32 len ceil32(_2444)] = mem[_2436 + 128 len ceil32(_2444)]
        if ceil32(_2444) <= _2444:
            _3233 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _5
            mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) <= _5:
                mem[mem[64] + 32] = ceil32(_5) + 160
                mem[ceil32(_5) + mem[64] + 160] = _820
                mem[ceil32(_5) + mem[64] + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
                if ceil32(_820) > _820:
                    mem[_820 + ceil32(_5) + mem[64] + 192] = 0
                mem[mem[64] + 64] = ceil32(_820) + ceil32(_5) + 192
                mem[ceil32(_820) + ceil32(_5) + _3233 + 192] = _1633
                mem[ceil32(_820) + ceil32(_5) + _3233 + 224 len ceil32(_1633)] = mem[_1637 + 32 len ceil32(_1633)]
                if ceil32(_1633) > _1633:
                    mem[_1633 + ceil32(_820) + ceil32(_5) + _3233 + 224] = 0
                mem[_3233 + 96] = ceil32(_1633) + ceil32(_820) + ceil32(_5) + 224
                mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3233 + 224] = _2444
                mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3233 + 256 len ceil32(_2444)] = mem[_2452 + 32 len ceil32(_2444)]
                if ceil32(_2444) > _2444:
                    mem[_2444 + ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3233 + 256] = 0
            else:
                mem[_5 + mem[64] + 160] = 0
                mem[mem[64] + 32] = ceil32(_5) + 160
                mem[ceil32(_5) + _3233 + 160] = _820
                mem[ceil32(_5) + _3233 + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
                if ceil32(_820) > _820:
                    mem[_820 + ceil32(_5) + _3233 + 192] = 0
                mem[_3233 + 64] = ceil32(_820) + ceil32(_5) + 192
                mem[ceil32(_820) + ceil32(_5) + _3233 + 192] = _1633
                mem[ceil32(_820) + ceil32(_5) + _3233 + 224 len ceil32(_1633)] = mem[_1637 + 32 len ceil32(_1633)]
                if ceil32(_1633) > _1633:
                    mem[_1633 + ceil32(_820) + ceil32(_5) + _3233 + 224] = 0
                mem[_3233 + 96] = ceil32(_1633) + ceil32(_820) + ceil32(_5) + 224
                mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3233 + 224] = _2444
                mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3233 + 256 len ceil32(_2444)] = mem[_2452 + 32 len ceil32(_2444)]
                if ceil32(_2444) > _2444:
                    mem[_2444 + ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3233 + 256] = 0
            return memory
              from mem[64]
               len ceil32(_2444) + ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3233 + -mem[64] + 256
        mem[_2444 + _2452 + 32] = 0
        _3234 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 32] = ceil32(_5) + 160
            mem[ceil32(_5) + mem[64] + 160] = _820
            mem[ceil32(_5) + mem[64] + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
            if ceil32(_820) > _820:
                mem[_820 + ceil32(_5) + mem[64] + 192] = 0
            mem[mem[64] + 64] = ceil32(_820) + ceil32(_5) + 192
            mem[ceil32(_820) + ceil32(_5) + _3234 + 192] = _1633
            mem[ceil32(_820) + ceil32(_5) + _3234 + 224 len ceil32(_1633)] = mem[_1637 + 32 len ceil32(_1633)]
            if ceil32(_1633) > _1633:
                mem[_1633 + ceil32(_820) + ceil32(_5) + _3234 + 224] = 0
            mem[_3234 + 96] = ceil32(_1633) + ceil32(_820) + ceil32(_5) + 224
            mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3234 + 224] = _2444
            mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3234 + 256 len ceil32(_2444)] = mem[_2452 + 32 len ceil32(_2444)]
            if ceil32(_2444) > _2444:
                mem[_2444 + ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3234 + 256] = 0
        else:
            mem[_5 + mem[64] + 160] = 0
            mem[mem[64] + 32] = ceil32(_5) + 160
            mem[ceil32(_5) + _3234 + 160] = _820
            mem[ceil32(_5) + _3234 + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
            if ceil32(_820) > _820:
                mem[_820 + ceil32(_5) + _3234 + 192] = 0
            mem[_3234 + 64] = ceil32(_820) + ceil32(_5) + 192
            mem[ceil32(_820) + ceil32(_5) + _3234 + 192] = _1633
            mem[ceil32(_820) + ceil32(_5) + _3234 + 224 len ceil32(_1633)] = mem[_1637 + 32 len ceil32(_1633)]
            if ceil32(_1633) > _1633:
                mem[_1633 + ceil32(_820) + ceil32(_5) + _3234 + 224] = 0
            mem[_3234 + 96] = ceil32(_1633) + ceil32(_820) + ceil32(_5) + 224
            mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3234 + 224] = _2444
            mem[ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3234 + 256 len ceil32(_2444)] = mem[_2452 + 32 len ceil32(_2444)]
            if ceil32(_2444) > _2444:
                mem[_2444 + ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3234 + 256] = 0
        return memory
          from mem[64]
           len ceil32(_2444) + ceil32(_1633) + ceil32(_820) + ceil32(_5) + _3234 + -mem[64] + 256
    mem[_820 + _822 + 32] = 0
    _1630 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 127 < return_data.size + 96
    _1634 = mem[mem[160] + 96]
    if mem[mem[160] + 96] > test266151307():
        revert with 'NH{q', 65
    _1638 = mem[64]
    if mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(ceil32(mem[mem[160] + 96])) + 1
    mem[_1638] = _1634
    require _1630 + _1634 + 32 <= return_data.size
    mem[_1638 + 32 len ceil32(_1634)] = mem[_1630 + 128 len ceil32(_1634)]
    if ceil32(_1634) <= _1634:
        _2437 = mem[192]
        require mem[192] <= test266151307()
        require mem[192] + 127 < return_data.size + 96
        _2445 = mem[mem[192] + 96]
        if mem[mem[192] + 96] > test266151307():
            revert with 'NH{q', 65
        _2453 = mem[64]
        if mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1
        mem[_2453] = _2445
        require _2437 + _2445 + 32 <= return_data.size
        mem[_2453 + 32 len ceil32(_2445)] = mem[_2437 + 128 len ceil32(_2445)]
        if ceil32(_2445) <= _2445:
            _3235 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _5
            mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) <= _5:
                mem[mem[64] + 32] = ceil32(_5) + 160
                mem[ceil32(_5) + mem[64] + 160] = _820
                mem[ceil32(_5) + mem[64] + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
                if ceil32(_820) > _820:
                    mem[_820 + ceil32(_5) + mem[64] + 192] = 0
                mem[mem[64] + 64] = ceil32(_820) + ceil32(_5) + 192
                mem[ceil32(_820) + ceil32(_5) + _3235 + 192] = _1634
                mem[ceil32(_820) + ceil32(_5) + _3235 + 224 len ceil32(_1634)] = mem[_1638 + 32 len ceil32(_1634)]
                if ceil32(_1634) > _1634:
                    mem[_1634 + ceil32(_820) + ceil32(_5) + _3235 + 224] = 0
                mem[_3235 + 96] = ceil32(_1634) + ceil32(_820) + ceil32(_5) + 224
                mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3235 + 224] = _2445
                mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3235 + 256 len ceil32(_2445)] = mem[_2453 + 32 len ceil32(_2445)]
                if ceil32(_2445) > _2445:
                    mem[_2445 + ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3235 + 256] = 0
            else:
                mem[_5 + mem[64] + 160] = 0
                mem[mem[64] + 32] = ceil32(_5) + 160
                mem[ceil32(_5) + _3235 + 160] = _820
                mem[ceil32(_5) + _3235 + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
                if ceil32(_820) > _820:
                    mem[_820 + ceil32(_5) + _3235 + 192] = 0
                mem[_3235 + 64] = ceil32(_820) + ceil32(_5) + 192
                mem[ceil32(_820) + ceil32(_5) + _3235 + 192] = _1634
                mem[ceil32(_820) + ceil32(_5) + _3235 + 224 len ceil32(_1634)] = mem[_1638 + 32 len ceil32(_1634)]
                if ceil32(_1634) > _1634:
                    mem[_1634 + ceil32(_820) + ceil32(_5) + _3235 + 224] = 0
                mem[_3235 + 96] = ceil32(_1634) + ceil32(_820) + ceil32(_5) + 224
                mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3235 + 224] = _2445
                mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3235 + 256 len ceil32(_2445)] = mem[_2453 + 32 len ceil32(_2445)]
                if ceil32(_2445) > _2445:
                    mem[_2445 + ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3235 + 256] = 0
            return memory
              from mem[64]
               len ceil32(_2445) + ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3235 + -mem[64] + 256
        mem[_2445 + _2453 + 32] = 0
        _3236 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 32] = ceil32(_5) + 160
            mem[ceil32(_5) + mem[64] + 160] = _820
            mem[ceil32(_5) + mem[64] + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
            if ceil32(_820) > _820:
                mem[_820 + ceil32(_5) + mem[64] + 192] = 0
            mem[mem[64] + 64] = ceil32(_820) + ceil32(_5) + 192
            mem[ceil32(_820) + ceil32(_5) + _3236 + 192] = _1634
            mem[ceil32(_820) + ceil32(_5) + _3236 + 224 len ceil32(_1634)] = mem[_1638 + 32 len ceil32(_1634)]
            if ceil32(_1634) > _1634:
                mem[_1634 + ceil32(_820) + ceil32(_5) + _3236 + 224] = 0
            mem[_3236 + 96] = ceil32(_1634) + ceil32(_820) + ceil32(_5) + 224
            mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3236 + 224] = _2445
            mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3236 + 256 len ceil32(_2445)] = mem[_2453 + 32 len ceil32(_2445)]
            if ceil32(_2445) > _2445:
                mem[_2445 + ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3236 + 256] = 0
        else:
            mem[_5 + mem[64] + 160] = 0
            mem[mem[64] + 32] = ceil32(_5) + 160
            mem[ceil32(_5) + _3236 + 160] = _820
            mem[ceil32(_5) + _3236 + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
            if ceil32(_820) > _820:
                mem[_820 + ceil32(_5) + _3236 + 192] = 0
            mem[_3236 + 64] = ceil32(_820) + ceil32(_5) + 192
            mem[ceil32(_820) + ceil32(_5) + _3236 + 192] = _1634
            mem[ceil32(_820) + ceil32(_5) + _3236 + 224 len ceil32(_1634)] = mem[_1638 + 32 len ceil32(_1634)]
            if ceil32(_1634) > _1634:
                mem[_1634 + ceil32(_820) + ceil32(_5) + _3236 + 224] = 0
            mem[_3236 + 96] = ceil32(_1634) + ceil32(_820) + ceil32(_5) + 224
            mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3236 + 224] = _2445
            mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3236 + 256 len ceil32(_2445)] = mem[_2453 + 32 len ceil32(_2445)]
            if ceil32(_2445) > _2445:
                mem[_2445 + ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3236 + 256] = 0
        return memory
          from mem[64]
           len ceil32(_2445) + ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3236 + -mem[64] + 256
    mem[_1634 + _1638 + 32] = 0
    _2438 = mem[192]
    require mem[192] <= test266151307()
    require mem[192] + 127 < return_data.size + 96
    _2446 = mem[mem[192] + 96]
    if mem[mem[192] + 96] > test266151307():
        revert with 'NH{q', 65
    _2454 = mem[64]
    if mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(ceil32(mem[mem[192] + 96])) + 1
    mem[_2454] = _2446
    require _2438 + _2446 + 32 <= return_data.size
    mem[_2454 + 32 len ceil32(_2446)] = mem[_2438 + 128 len ceil32(_2446)]
    if ceil32(_2446) <= _2446:
        _3237 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = _5
        mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 32] = ceil32(_5) + 160
            mem[ceil32(_5) + mem[64] + 160] = _820
            mem[ceil32(_5) + mem[64] + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
            if ceil32(_820) > _820:
                mem[_820 + ceil32(_5) + mem[64] + 192] = 0
            mem[mem[64] + 64] = ceil32(_820) + ceil32(_5) + 192
            mem[ceil32(_820) + ceil32(_5) + _3237 + 192] = _1634
            mem[ceil32(_820) + ceil32(_5) + _3237 + 224 len ceil32(_1634)] = mem[_1638 + 32 len ceil32(_1634)]
            if ceil32(_1634) > _1634:
                mem[_1634 + ceil32(_820) + ceil32(_5) + _3237 + 224] = 0
            mem[_3237 + 96] = ceil32(_1634) + ceil32(_820) + ceil32(_5) + 224
            mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3237 + 224] = _2446
            mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3237 + 256 len ceil32(_2446)] = mem[_2454 + 32 len ceil32(_2446)]
            if ceil32(_2446) > _2446:
                mem[_2446 + ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3237 + 256] = 0
        else:
            mem[_5 + mem[64] + 160] = 0
            mem[mem[64] + 32] = ceil32(_5) + 160
            mem[ceil32(_5) + _3237 + 160] = _820
            mem[ceil32(_5) + _3237 + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
            if ceil32(_820) > _820:
                mem[_820 + ceil32(_5) + _3237 + 192] = 0
            mem[_3237 + 64] = ceil32(_820) + ceil32(_5) + 192
            mem[ceil32(_820) + ceil32(_5) + _3237 + 192] = _1634
            mem[ceil32(_820) + ceil32(_5) + _3237 + 224 len ceil32(_1634)] = mem[_1638 + 32 len ceil32(_1634)]
            if ceil32(_1634) > _1634:
                mem[_1634 + ceil32(_820) + ceil32(_5) + _3237 + 224] = 0
            mem[_3237 + 96] = ceil32(_1634) + ceil32(_820) + ceil32(_5) + 224
            mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3237 + 224] = _2446
            mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3237 + 256 len ceil32(_2446)] = mem[_2454 + 32 len ceil32(_2446)]
            if ceil32(_2446) > _2446:
                mem[_2446 + ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3237 + 256] = 0
        return memory
          from mem[64]
           len ceil32(_2446) + ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3237 + -mem[64] + 256
    mem[_2446 + _2454 + 32] = 0
    _3238 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = _5
    mem[mem[64] + 160 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        mem[mem[64] + 32] = ceil32(_5) + 160
        mem[ceil32(_5) + mem[64] + 160] = _820
        mem[ceil32(_5) + mem[64] + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
        if ceil32(_820) > _820:
            mem[_820 + ceil32(_5) + mem[64] + 192] = 0
        mem[mem[64] + 64] = ceil32(_820) + ceil32(_5) + 192
        mem[ceil32(_820) + ceil32(_5) + _3238 + 192] = _1634
        mem[ceil32(_820) + ceil32(_5) + _3238 + 224 len ceil32(_1634)] = mem[_1638 + 32 len ceil32(_1634)]
        if ceil32(_1634) > _1634:
            mem[_1634 + ceil32(_820) + ceil32(_5) + _3238 + 224] = 0
        mem[_3238 + 96] = ceil32(_1634) + ceil32(_820) + ceil32(_5) + 224
        mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3238 + 224] = _2446
        mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3238 + 256 len ceil32(_2446)] = mem[_2454 + 32 len ceil32(_2446)]
        if ceil32(_2446) > _2446:
            mem[_2446 + ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3238 + 256] = 0
    else:
        mem[_5 + mem[64] + 160] = 0
        mem[mem[64] + 32] = ceil32(_5) + 160
        mem[ceil32(_5) + _3238 + 160] = _820
        mem[ceil32(_5) + _3238 + 192 len ceil32(_820)] = mem[_822 + 32 len ceil32(_820)]
        if ceil32(_820) > _820:
            mem[_820 + ceil32(_5) + _3238 + 192] = 0
        mem[_3238 + 64] = ceil32(_820) + ceil32(_5) + 192
        mem[ceil32(_820) + ceil32(_5) + _3238 + 192] = _1634
        mem[ceil32(_820) + ceil32(_5) + _3238 + 224 len ceil32(_1634)] = mem[_1638 + 32 len ceil32(_1634)]
        if ceil32(_1634) > _1634:
            mem[_1634 + ceil32(_820) + ceil32(_5) + _3238 + 224] = 0
        mem[_3238 + 96] = ceil32(_1634) + ceil32(_820) + ceil32(_5) + 224
        mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3238 + 224] = _2446
        mem[ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3238 + 256 len ceil32(_2446)] = mem[_2454 + 32 len ceil32(_2446)]
        if ceil32(_2446) > _2446:
            mem[_2446 + ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3238 + 256] = 0
    return memory
      from mem[64]
       len ceil32(_2446) + ceil32(_1634) + ceil32(_820) + ceil32(_5) + _3238 + -mem[64] + 256
}



}
