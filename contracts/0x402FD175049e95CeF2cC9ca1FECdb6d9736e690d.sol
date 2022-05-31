contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'CATOSHI', 0

const totalSupply = 6000000 * 10^18

const decimals = 18

const symbol = '', 0


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 sub_bfa31ff9;
uint256 stor6;
uint256 stor7;
uint256 _maxWalletAmount;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 _liquidityFee;
uint256 stor13;
uint256 _marketingFee;
uint256 stor15;
uint256 _teamFee;
uint256 stor17;
uint256 stor18;
uint256 stor19;
mapping of uint8 stor20;
address stor21;
address stor22;
address stor23;
address stor24;
address stor25;
address joePairAddress;
uint256 stor27;
uint8 stor28; offset 8
uint8 stor28; offset 16
uint8 stor28; offset 24
uint8 sub_5e3d3007; offset 32
uint8 sub_62cd39f4; offset 40
uint256 stor28; offset 24
uint256 stor28;
uint256 sub_115b8aac;
address bridgeAddress;

function sub_115b8aac(?) {
    return sub_115b8aac
}

function _marketingFee() {
    return _marketingFee
}

function isBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[address(arg1)])
}

function sub_5e3d3007(?) {
    return bool(sub_5e3d3007)
}

function sub_62cd39f4(?) {
    return bool(sub_62cd39f4)
}

function _liquidityFee() {
    return _liquidityFee
}

function joePair() {
    return joePairAddress
}

function _maxWalletAmount() {
    return _maxWalletAmount
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function _teamFee() {
    return _teamFee
}

function sub_bfa31ff9(?) {
    return sub_bfa31ff9
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function bridge() {
    return bridgeAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setBridge(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bridgeAddress = arg1
}

function updateTeamAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22 = arg1
}

function sub_ac040beb(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(sub_62cd39f4) != 1:
        revert with 0, 'already disabled'
    sub_62cd39f4 = 0
}

function addBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20[address(arg1)] = 1
}

function removeBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20[address(arg1)] = 0
}

function updateMarketingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21 = arg1
}

function sub_5b5a7f33(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_115b8aac = arg1
    emit MinTokensBeforeSwapUpdated(arg1);
}

function sub_37494d72(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_62cd39f4:
        revert with 0, 'already enabled'
    sub_5e3d3007 = 0
    sub_62cd39f4 = 1
}

function disablePriceImpactSellLimit() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(sub_5e3d3007) != 1:
        revert with 0, 'already disabled'
    sub_5e3d3007 = 0
}

function enablePriceImpactSellLimit() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_5e3d3007:
        revert with 0, 'already enabled'
    sub_5e3d3007 = 1
    sub_62cd39f4 = 0
}

function updatePairSwapped(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(232, 0, stor28.field_24) = Mask(232, 0, arg1)
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
    emit IncludedInFees(arg1);
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
    emit ExcludedFromFees(arg1);
}

function sub_ef7a1ff2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cant make the limit lower than 1 AVAX'
    stor9 = arg1
}

function endPresale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(uint8(stor28.field_16)) != 1:
        revert with 0, 'presale already ended'
    stor6 = block.timestamp
    stor7 = arg1
    uint256(stor28.field_0) = 1
    emit EndedPresale(bool(uint8(stor28.field_16)));
}

function setPresaleRouterAndAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23 = arg1
    stor24 = arg2
    stor4[address(arg1)] = 1
    emit ExcludedFromFees(arg1);
    stor4[stor24] = 1
    emit ExcludedFromFees(stor24);
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

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 600 * 10^18:
        revert with 0, 'Amount must be greater than 0.01% of supply'
    if arg1 > 6000000 * 10^18:
        revert with 0, 'Amount must be less than or equal to totalSupply'
    stor27 = arg1
    emit MaxTxAmountUpdated(arg1);
}

function setMaxWalletAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 30000 * 10^18:
        revert with 0, 'Amount must be greater than 0.5% of supply'
    if arg1 > 6000000 * 10^18:
        revert with 0, 'Amount must be less than or equal to totalSupply'
    _maxWalletAmount = arg1
    emit MaxWalletAmountUpdated(arg1);
}

function sub_0a6d3e65(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10^17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cant make the limit higher than 0.1 AVAX'
    if arg2 > 10^17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cant make the limit higher than 0.1 AVAX'
    stor10 = arg1
    stor11 = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setPriceImpact(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'max price impact must be less than or equal to 100'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cant prevent sells, choose value greater than 0'
    sub_bfa31ff9 = arg1
    emit PriceImpactUpdated(arg1);
}

function manualsend() {
    require msg.sender == stor21
    if eth.balance(this.address):
        if not eth.balance(this.address):
            call stor21 with:
                 gas 2300 wei
        else:
            if eth.balance(this.address) and stor18 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if eth.balance(this.address) * stor18 / eth.balance(this.address) != stor18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            call stor21 with:
               value eth.balance(this.address) * stor18 / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not eth.balance(this.address):
            call stor22 with:
                 gas 2300 wei
        else:
            if eth.balance(this.address) and stor19 > -1 / eth.balance(this.address):
                revert with 0, 17
            if not eth.balance(this.address):
                revert with 0, 18
            if eth.balance(this.address) * stor19 / eth.balance(this.address) != stor19:
                revert with 0, 'SafeMath: multiplication overflow'
            call stor22 with:
               value eth.balance(this.address) * stor19 / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function manualswap() {
    require msg.sender == stor21
    if balanceOf[this.address]:
        uint8(stor28.field_8) = 1
        mem[128] = this.address
        require ext_code.size(stor25)
        staticcall stor25.0x73b295c2 with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not stor25:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][stor25] = balanceOf[this.address]
        emit Approval(balanceOf[this.address], this.address, stor25);
        mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
        idx = 0
        s = ceil32(return_data.size) + 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor25)
        call stor25.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint8(stor28.field_8) = 0
}

function setTaxes(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 >= 15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sum of fees must be less than 15%'
    _marketingFee = arg1
    _liquidityFee = arg2
    _teamFee = arg3
    stor15 = arg1
    stor13 = arg2
    stor17 = arg3
    if arg1 > !arg3:
        revert with 0, 17
    if arg1 + arg3 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if not _marketingFee:
        if not arg1 + arg3:
            revert with 0, 'SafeMath: division by zero', 0
        stor18 = 0 / arg1 + arg3
    else:
        if _marketingFee and 100 > -1 / _marketingFee:
            revert with 0, 17
        if not _marketingFee:
            revert with 0, 18
        if 100 * _marketingFee / _marketingFee != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg1 + arg3:
            revert with 0, 'SafeMath: division by zero', 0
        stor18 = 100 * _marketingFee / arg1 + arg3
    if not _teamFee:
        if not arg1 + arg3:
            revert with 0, 'SafeMath: division by zero', 0
        stor19 = 0 / arg1 + arg3
    else:
        if _teamFee and 100 > -1 / _teamFee:
            revert with 0, 17
        if not _teamFee:
            revert with 0, 18
        if 100 * _teamFee / _teamFee != 100:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 + arg3:
            revert with 0, 'SafeMath: division by zero', 0
        stor19 = 100 * _teamFee / arg1 + arg3
    emit FeesUpdated(_marketingFee, _liquidityFee, _teamFee);
    emit PercentsUpdated(stor18, stor19);
}

function sub_1e8377be(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(joePairAddress)
    staticcall joePairAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(joePairAddress)
    staticcall joePairAddress.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        revert with 0, 'ERR: decimals cannot be zero'
    require ext_code.size(joePairAddress)
    staticcall joePairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if not uint8(stor28.field_24):
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if arg1 and Mask(112, 0, ext_call.return_data[32]) > -1 / arg1:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (arg1 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if arg1 and Mask(112, 0, ext_call.return_data[32]) > -1 / arg1:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (arg1 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1])
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
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
            if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if arg1 and Mask(112, 0, ext_call.return_data[32]) > -1 / arg1:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            return (arg1 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * s * t)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if arg1 and Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) > -1 / arg1:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (arg1 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if arg1 and Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) > -1 / arg1:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (arg1 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1])
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
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
            if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if arg1 and Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) > -1 / arg1:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * s * t:
                revert with 0, 18
            return (arg1 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * s * t)
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
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
        if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if arg1 and Mask(112, 0, ext_call.return_data[32]) * s * t > -1 / arg1:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            return (arg1 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if arg1 and Mask(112, 0, ext_call.return_data[32]) * s * t > -1 / arg1:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return (arg1 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1])
        u = 10
        v = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and u * v > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if arg1 and Mask(112, 0, ext_call.return_data[32]) * s * t > -1 / arg1:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]) * u * v:
            revert with 0, 18
        return (arg1 * Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * u * v)
    require ext_code.size(joePairAddress)
    staticcall joePairAddress.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(joePairAddress)
    staticcall joePairAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(joePairAddress)
    staticcall joePairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if arg1 and Mask(112, 0, ext_call.return_data[0]) > -1 / arg1:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (arg1 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if arg1 and Mask(112, 0, ext_call.return_data[0]) > -1 / arg1:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return (arg1 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1])
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
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
        if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if arg1 and Mask(112, 0, ext_call.return_data[0]) > -1 / arg1:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        return (arg1 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if arg1 and Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) > -1 / arg1:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (arg1 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if arg1 and Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) > -1 / arg1:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return (arg1 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1])
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
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
        if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if arg1 and Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) > -1 / arg1:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * s * t:
            revert with 0, 18
        return (arg1 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * s * t)
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
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
    if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if arg1 and Mask(112, 0, ext_call.return_data[0]) * s * t > -1 / arg1:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        return (arg1 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]))
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if arg1 and Mask(112, 0, ext_call.return_data[0]) * s * t > -1 / arg1:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        return (arg1 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1])
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) and u * v > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if arg1 and Mask(112, 0, ext_call.return_data[0]) * s * t > -1 / arg1:
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[32]) * u * v:
        revert with 0, 18
    return (arg1 * Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * u * v)
}



}
