contract main {




// =====================  Runtime code  =====================


#
#  - getTotalTVL()
#  - rebalance()
#  - sub_7ffe28e3(?)
#  - redeemUnderlying(uint256 arg1)
#  - mint(uint256 arg1)
#  - closePosition()
#  - sub_f20aea0f(?)
#  - _fallback()
#
const isCEther = 0


address owner;
uint8 stor2;
uint256 lastHarvest;
address vaultAddress;
uint256 totalSupply;
array of struct stor6;
array of struct stor7;
mapping of uint8 stor8;
uint256 sub_0e962f00;
uint256 stor10;
uint256 sub_86aceac7;
address underlyingAddress;
uint16 sub_3dfe9f6a; offset 160
uint16 version; offset 176
address shortAddress;
uint256 stor14;
uint256 balanceOfUnderlying;
address sub_a52602b9Address;
address sub_fd6bac70Address;
address comptrollerAddress;
address oracleAddress;
uint256 sub_d539fe4b;
address sub_fec18b3aAddress;
address stor23;
address sub_0d55046cAddress;
address pairAddress;
uint256 stor27;

function sub_0d55046c(?) {
    return sub_0d55046cAddress
}

function sub_0e962f00(?) {
    return sub_0e962f00
}

function totalSupply() {
    return totalSupply
}

function short() {
    return shortAddress
}

function balanceOfUnderlying(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOfUnderlying
}

function sub_3dfe9f6a(?) {
    return sub_3dfe9f6a
}

function balanceOfUnderlying() {
    return balanceOfUnderlying
}

function version() {
    return version
}

function comptroller() {
    return comptrollerAddress
}

function underlying() {
    return underlyingAddress
}

function sub_7da64483(?) {
    return bool(stor2)
}

function oracle() {
    return oracleAddress
}

function sub_86aceac7(?) {
    return sub_86aceac7
}

function owner() {
    return owner
}

function sub_a52602b9(?) {
    return sub_a52602b9Address
}

function pair() {
    return pairAddress
}

function sub_d539fe4b(?) {
    return sub_d539fe4b
}

function lastHarvest() {
    return lastHarvest
}

function isManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function vault() {
    return vaultAddress
}

function sub_fd6bac70(?) {
    return sub_fd6bac70Address
}

function sub_fec18b3a(?) {
    return sub_fec18b3aAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_711326ce(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
    emit 0x3e87fa31: arg1
}

function sub_1585e0b6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_86aceac7 = arg1
    emit 0x5ceaf8b7: arg1
}

function setMaxTvl(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if bool(stor8[msg.sender]) != 1:
            revert with 0, 'Strat: NO_AUTH'
    stor14 = arg1
    emit 0x13d3e08a: arg1
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
    emit 0xdabed91c: arg1
}

function sub_de747e5a(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3dfe9f6a = uint16(arg1)
    emit 0x36c98a54: uint16(arg1)
}

function setManager(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = uint8(arg2)
    emit 0x2458f684: arg2, arg1
}

function getPricePerShare() {
    if 0 == totalSupply:
        return sub_0e962f00
    if balanceOfUnderlying and sub_0e962f00 > -1 / balanceOfUnderlying:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return (balanceOfUnderlying * sub_0e962f00 / totalSupply)
}

function decimals() {
    staticcall underlyingAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
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

function getCollateralRatio() {
    staticcall comptrollerAddress.markets(address arg1) with:
            gas gas_remaining wei
           args sub_a52602b9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    if ext_call.return_data[32] and sub_d539fe4b > -1 / ext_call.return_data[32]:
        revert with 0, 17
    return (ext_call.return_data[32] * sub_d539fe4b / 10^18)
}

function sub_f9e40ac4(?) {
    if underlyingAddress == shortAddress:
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if underlyingAddress < shortAddress:
        if not underlyingAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if underlyingAddress == underlyingAddress:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not shortAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if underlyingAddress == shortAddress:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_358d6a04(?) {
    staticcall sub_fd6bac70Address.getCash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args sub_a52602b9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args sub_fd6bac70Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    staticcall comptrollerAddress.markets(address arg1) with:
            gas gas_remaining wei
           args sub_a52602b9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    if ext_call.return_data[32] and sub_d539fe4b > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if 10000 > !(ext_call.return_data[32] * sub_d539fe4b / 10^18):
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] and (ext_call.return_data[32] * sub_d539fe4b / 10^18) + 10000 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[32] * sub_d539fe4b / 10^18:
        revert with 0, 18
    if stor14 < (10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[32] * sub_d539fe4b / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / ext_call.return_data[32] * sub_d539fe4b / 10^18:
        return stor14
    return ((10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[32] * sub_d539fe4b / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / ext_call.return_data[32] * sub_d539fe4b / 10^18)
}

function sub_3bf295cc(?) {
    staticcall sub_fd6bac70Address.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args sub_a52602b9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args sub_fd6bac70Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    staticcall sub_a52602b9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_a52602b9Address.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    staticcall comptrollerAddress.markets(address arg1) with:
            gas gas_remaining wei
           args sub_a52602b9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[32]:
        revert with 0, 18
    return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[32])
}

function name() {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[(uint255(stor6.length) * 0.5) + ceil32(uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[stor6.length.field_1 + ceil32(stor6.length.field_1) + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() {
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7.length):
                if 31 < uint255(stor7.length) * 0.5:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor7.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(uint255(stor7.length) * 0.5) + 192 len ceil32(uint255(stor7.length) * 0.5)] = mem[128 len ceil32(uint255(stor7.length) * 0.5)]
        if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
            mem[(uint255(stor7.length) * 0.5) + ceil32(uint255(stor7.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)], mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor7.length) * 0.5)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 0, 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7.length):
            if 31 < uint255(stor7.length) * 0.5:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while (uint255(stor7.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[stor7.length.field_1 + ceil32(stor7.length.field_1) + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function sub_3dcf1342(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if vaultAddress != msg.sender:
        revert with 0, 'Strat: ONLY_VAULT'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 4] = this.address
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _84 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _85 = mem[_84]
        if mem[_84]:
            _86 = mem[64]
            mem[mem[64] + 36] = address(cd[4])
            mem[mem[64] + 68] = _85
            _87 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_87 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_87 + 36 len 28]
            mem[64] = _86 + 164
            mem[_86 + 100] = 32
            mem[_86 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                revert with 0, 'Address: call to non-contract'
            _94 = mem[_87]
            s = 0
            while s < _94:
                mem[s + _86 + 164] = mem[s + _87 + 32]
                s = s + 32
                continue 
            if ceil32(_94) > _94:
                mem[_94 + _86 + 164] = 0
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[_86 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_86 + 168 len _94 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_86 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_86 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _86 + 232] = mem[idx + _86 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_86 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _86 + ceil32(return_data.size) + 165
                mem[_86 + 164] = return_data.size
                mem[_86 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_86 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_86 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _86 + ceil32(return_data.size) + 233] = mem[idx + _86 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_86 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_86 + 196] == bool(mem[_86 + 196])
                    if not mem[_86 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not eth.balance(this.address):
        _76 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = ('cd', 36).length
        idx = 0
        s = mem[64] + 64
        t = cd[36] + 36
        while idx < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x2b06144d: mem[mem[64] len _76 + (32 * ('cd', 36).length) + -mem[64] + 64], address(cd[4])
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'ETH_TRANSFER_FAILED'
        _78 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = ('cd', 36).length
        idx = 0
        s = mem[64] + 64
        t = cd[36] + 36
        while idx < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x2b06144d: mem[mem[64] len _78 + (32 * ('cd', 36).length) + -mem[64] + 64], address(cd[4])
}

function sub_b580a128(?) {
    staticcall stor23.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor27, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    staticcall pairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if underlyingAddress == shortAddress:
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if underlyingAddress < shortAddress:
        if not underlyingAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if underlyingAddress == underlyingAddress:
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            staticcall sub_fd6bac70Address.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall shortAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] == ext_call.return_data[0]:
                return 0
            if not ext_call.return_data[0]:
                return 10000
            if ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] > ext_call.return_data[0]:
                if ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and 10000 > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (10000 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] / ext_call.return_data[0])
            if ext_call.return_data[0] < ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0]:
                revert with 0, 17
            if -(ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and 10000 > -1 / -(ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (-10000 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] / ext_call.return_data[0])
    else:
        if not shortAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if underlyingAddress == shortAddress:
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            staticcall sub_fd6bac70Address.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall shortAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] == ext_call.return_data[0]:
                return 0
            if not ext_call.return_data[0]:
                return 10000
            if ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] > ext_call.return_data[0]:
                if ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and 10000 > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return (10000 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] / ext_call.return_data[0])
            if ext_call.return_data[0] < ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0]:
                revert with 0, 17
            if -(ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and 10000 > -1 / -(ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            return (-10000 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] / ext_call.return_data[0])
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    staticcall sub_fd6bac70Address.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall shortAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] == ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        return 10000
    if ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > ext_call.return_data[0]:
        if ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and 10000 > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (10000 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] / ext_call.return_data[0])
    if ext_call.return_data[0] < ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0]:
        revert with 0, 17
    if -(ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and 10000 > -1 / -(ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (-10000 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] / ext_call.return_data[0])
}

function getTVL() {
    staticcall sub_a52602b9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_a52602b9Address.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    staticcall sub_fd6bac70Address.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        staticcall shortAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            staticcall stor23.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor27, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            staticcall pairAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if underlyingAddress == shortAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if underlyingAddress < shortAddress:
                if not underlyingAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if underlyingAddress == underlyingAddress:
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if shortAddress == underlyingAddress:
                        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                    if shortAddress < underlyingAddress:
                        if not shortAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == shortAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   0,
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    else:
                        if not underlyingAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == underlyingAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   0,
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                           ext_call.return_data[0]
            else:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if underlyingAddress == shortAddress:
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if shortAddress == underlyingAddress:
                        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                    if shortAddress < underlyingAddress:
                        if not shortAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == shortAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   0,
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    else:
                        if not underlyingAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == underlyingAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   0,
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                           ext_call.return_data[0]
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] > -1:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                       ext_call.return_data[0]
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] > -1:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                       ext_call.return_data[0]
            if shortAddress == underlyingAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if shortAddress < underlyingAddress:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if shortAddress == shortAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                           ext_call.return_data[0]
            else:
                if not underlyingAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if shortAddress == underlyingAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                           ext_call.return_data[0]
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   0,
                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                   ext_call.return_data[0]
        staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args sub_a52602b9Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args sub_fd6bac70Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        staticcall stor23.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor27, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        staticcall pairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        if underlyingAddress == shortAddress:
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if underlyingAddress < shortAddress:
            if not underlyingAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if underlyingAddress == underlyingAddress:
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if shortAddress == underlyingAddress:
                    revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                if shortAddress < underlyingAddress:
                    if not shortAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == shortAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                else:
                    if not underlyingAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == underlyingAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                       ext_call.return_data[0]
        else:
            if not shortAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if underlyingAddress == shortAddress:
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if shortAddress == underlyingAddress:
                    revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                if shortAddress < underlyingAddress:
                    if not shortAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == shortAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                else:
                    if not underlyingAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == underlyingAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                       ext_call.return_data[0]
        staticcall pairAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   0,
                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                   ext_call.return_data[0]
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   0,
                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                   ext_call.return_data[0]
        if shortAddress == underlyingAddress:
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if shortAddress < underlyingAddress:
            if not shortAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if shortAddress == shortAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                       ext_call.return_data[0]
        else:
            if not underlyingAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if shortAddress == underlyingAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                       ext_call.return_data[0]
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
            revert with 0, 17
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
               ext_call.return_data[0],
               0,
               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
               ext_call.return_data[0]
    if not ext_call.return_data[0]:
        staticcall shortAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            staticcall stor23.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor27, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            staticcall pairAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if underlyingAddress == shortAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if underlyingAddress < shortAddress:
                if not underlyingAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if underlyingAddress == underlyingAddress:
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if shortAddress == underlyingAddress:
                        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                    if shortAddress < underlyingAddress:
                        if not shortAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == shortAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   0,
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    else:
                        if not underlyingAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == underlyingAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   0,
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                           ext_call.return_data[0]
            else:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if underlyingAddress == shortAddress:
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if shortAddress == underlyingAddress:
                        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                    if shortAddress < underlyingAddress:
                        if not shortAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == shortAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   0,
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    else:
                        if not underlyingAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == underlyingAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   0,
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                           ext_call.return_data[0]
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] > -1:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                       ext_call.return_data[0]
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] > -1:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                       ext_call.return_data[0]
            if shortAddress == underlyingAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if shortAddress < underlyingAddress:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if shortAddress == shortAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                           ext_call.return_data[0]
            else:
                if not underlyingAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if shortAddress == underlyingAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                           ext_call.return_data[0]
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   0,
                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                   ext_call.return_data[0]
        staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args sub_a52602b9Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args sub_fd6bac70Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        staticcall stor23.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor27, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        staticcall pairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        if underlyingAddress == shortAddress:
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if underlyingAddress < shortAddress:
            if not underlyingAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if underlyingAddress == underlyingAddress:
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if shortAddress == underlyingAddress:
                    revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                if shortAddress < underlyingAddress:
                    if not shortAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == shortAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                else:
                    if not underlyingAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == underlyingAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                       ext_call.return_data[0]
        else:
            if not shortAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if underlyingAddress == shortAddress:
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           0,
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if shortAddress == underlyingAddress:
                    revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                if shortAddress < underlyingAddress:
                    if not shortAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == shortAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                else:
                    if not underlyingAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == underlyingAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               0,
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                       ext_call.return_data[0]
        staticcall pairAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   0,
                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                   ext_call.return_data[0]
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   0,
                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                   ext_call.return_data[0]
        if shortAddress == underlyingAddress:
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if shortAddress < underlyingAddress:
            if not shortAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if shortAddress == shortAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                       ext_call.return_data[0]
        else:
            if not underlyingAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if shortAddress == underlyingAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                       ext_call.return_data[0]
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
            revert with 0, 17
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < 0:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
               ext_call.return_data[0],
               0,
               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
               ext_call.return_data[0]
    if shortAddress == underlyingAddress:
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if shortAddress < underlyingAddress:
        if not shortAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if shortAddress == shortAddress:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            staticcall shortAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                staticcall stor23.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor27, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                staticcall pairAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > !ext_call.return_data[0]:
                    revert with 0, 17
                if underlyingAddress == shortAddress:
                    revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                if underlyingAddress < shortAddress:
                    if not underlyingAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if underlyingAddress == underlyingAddress:
                        staticcall pairAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                                   ext_call.return_data[0]
                        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                                   ext_call.return_data[0]
                        if shortAddress == underlyingAddress:
                            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                        if shortAddress < underlyingAddress:
                            if not shortAddress:
                                revert with 0, 'UniUtils: ZERO_ADDRESS'
                            staticcall pairAddress.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if shortAddress == shortAddress:
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                    revert with 0, 17
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                    revert with 0, 17
                                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                       ext_call.return_data[0],
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                       ext_call.return_data[0]
                        else:
                            if not underlyingAddress:
                                revert with 0, 'UniUtils: ZERO_ADDRESS'
                            staticcall pairAddress.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if shortAddress == underlyingAddress:
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                    revert with 0, 17
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                    revert with 0, 17
                                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                       ext_call.return_data[0],
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                       ext_call.return_data[0]
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                               ext_call.return_data[0]
                else:
                    if not shortAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if underlyingAddress == shortAddress:
                        staticcall pairAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                                   ext_call.return_data[0]
                        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                                   ext_call.return_data[0]
                        if shortAddress == underlyingAddress:
                            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                        if shortAddress < underlyingAddress:
                            if not shortAddress:
                                revert with 0, 'UniUtils: ZERO_ADDRESS'
                            staticcall pairAddress.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if shortAddress == shortAddress:
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                    revert with 0, 17
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                    revert with 0, 17
                                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                       ext_call.return_data[0],
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                       ext_call.return_data[0]
                        else:
                            if not underlyingAddress:
                                revert with 0, 'UniUtils: ZERO_ADDRESS'
                            staticcall pairAddress.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if shortAddress == underlyingAddress:
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                    revert with 0, 17
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                    revert with 0, 17
                                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                       ext_call.return_data[0],
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                       ext_call.return_data[0]
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                               ext_call.return_data[0]
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if shortAddress == underlyingAddress:
                    revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                if shortAddress < underlyingAddress:
                    if not shortAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == shortAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                else:
                    if not underlyingAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == underlyingAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                       ext_call.return_data[0]
            staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args sub_a52602b9Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args sub_fd6bac70Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            staticcall stor23.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor27, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            staticcall pairAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if underlyingAddress == shortAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if underlyingAddress < shortAddress:
                if not underlyingAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if underlyingAddress == underlyingAddress:
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if shortAddress == underlyingAddress:
                        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                    if shortAddress < underlyingAddress:
                        if not shortAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == shortAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    else:
                        if not underlyingAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == underlyingAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                           ext_call.return_data[0]
            else:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if underlyingAddress == shortAddress:
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if shortAddress == underlyingAddress:
                        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                    if shortAddress < underlyingAddress:
                        if not shortAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == shortAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    else:
                        if not underlyingAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == underlyingAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                           ext_call.return_data[0]
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                       (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                       ext_call.return_data[0]
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                       (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                       ext_call.return_data[0]
            if shortAddress == underlyingAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if shortAddress < underlyingAddress:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if shortAddress == shortAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                           ext_call.return_data[0]
            else:
                if not underlyingAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if shortAddress == underlyingAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                           ext_call.return_data[0]
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                   ext_call.return_data[0]
    else:
        if not underlyingAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if shortAddress == underlyingAddress:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            staticcall shortAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                staticcall stor23.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor27, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                staticcall pairAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > !ext_call.return_data[0]:
                    revert with 0, 17
                if underlyingAddress == shortAddress:
                    revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                if underlyingAddress < shortAddress:
                    if not underlyingAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if underlyingAddress == underlyingAddress:
                        staticcall pairAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                                   ext_call.return_data[0]
                        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                                   ext_call.return_data[0]
                        if shortAddress == underlyingAddress:
                            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                        if shortAddress < underlyingAddress:
                            if not shortAddress:
                                revert with 0, 'UniUtils: ZERO_ADDRESS'
                            staticcall pairAddress.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if shortAddress == shortAddress:
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                    revert with 0, 17
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                    revert with 0, 17
                                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                       ext_call.return_data[0],
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                       ext_call.return_data[0]
                        else:
                            if not underlyingAddress:
                                revert with 0, 'UniUtils: ZERO_ADDRESS'
                            staticcall pairAddress.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if shortAddress == underlyingAddress:
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                    revert with 0, 17
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                    revert with 0, 17
                                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                       ext_call.return_data[0],
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                       ext_call.return_data[0]
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                               ext_call.return_data[0]
                else:
                    if not shortAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if underlyingAddress == shortAddress:
                        staticcall pairAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                                   ext_call.return_data[0]
                        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                                   ext_call.return_data[0]
                        if shortAddress == underlyingAddress:
                            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                        if shortAddress < underlyingAddress:
                            if not shortAddress:
                                revert with 0, 'UniUtils: ZERO_ADDRESS'
                            staticcall pairAddress.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if shortAddress == shortAddress:
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                    revert with 0, 17
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                    revert with 0, 17
                                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                       ext_call.return_data[0],
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                       ext_call.return_data[0]
                        else:
                            if not underlyingAddress:
                                revert with 0, 'UniUtils: ZERO_ADDRESS'
                            staticcall pairAddress.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if shortAddress == underlyingAddress:
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 0, 18
                                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                    revert with 0, 17
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                    revert with 0, 17
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                                    revert with 0, 17
                                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                       ext_call.return_data[0],
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                       ext_call.return_data[0]
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[50 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                               ext_call.return_data[0]
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if shortAddress == underlyingAddress:
                    revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                if shortAddress < underlyingAddress:
                    if not shortAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == shortAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                else:
                    if not underlyingAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == underlyingAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > -1:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                       ext_call.return_data[0]
            staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args sub_a52602b9Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args sub_fd6bac70Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            staticcall stor23.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor27, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            staticcall pairAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !ext_call.return_data[0]:
                revert with 0, 17
            if underlyingAddress == shortAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if underlyingAddress < shortAddress:
                if not underlyingAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if underlyingAddress == underlyingAddress:
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if shortAddress == underlyingAddress:
                        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                    if shortAddress < underlyingAddress:
                        if not shortAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == shortAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    else:
                        if not underlyingAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == underlyingAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                           ext_call.return_data[0]
            else:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if underlyingAddress == shortAddress:
                    staticcall pairAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                               ext_call.return_data[0]
                    if shortAddress == underlyingAddress:
                        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                    if shortAddress < underlyingAddress:
                        if not shortAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == shortAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    else:
                        if not underlyingAddress:
                            revert with 0, 'UniUtils: ZERO_ADDRESS'
                        staticcall pairAddress.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if shortAddress == underlyingAddress:
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                                revert with 0, 17
                            if not ext_call.return_data[18 len 14]:
                                revert with 0, 18
                            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                                revert with 0, 17
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                                revert with 0, 17
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 17
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                                   ext_call.return_data[0],
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                                   ext_call.return_data[0]
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[50 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                           ext_call.return_data[0]
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                       (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                       ext_call.return_data[0]
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                       (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                       ext_call.return_data[0]
            if shortAddress == underlyingAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if shortAddress < underlyingAddress:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if shortAddress == shortAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                           ext_call.return_data[0]
            else:
                if not underlyingAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if shortAddress == underlyingAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                           ext_call.return_data[0]
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                   ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[50 len 14]:
        revert with 0, 18
    staticcall shortAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        staticcall stor23.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor27, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        staticcall pairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        if underlyingAddress == shortAddress:
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if underlyingAddress < shortAddress:
            if not underlyingAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if underlyingAddress == underlyingAddress:
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if shortAddress == underlyingAddress:
                    revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                if shortAddress < underlyingAddress:
                    if not shortAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == shortAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                else:
                    if not underlyingAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == underlyingAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                       ext_call.return_data[0]
        else:
            if not shortAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if underlyingAddress == shortAddress:
                staticcall pairAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                           (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                           ext_call.return_data[0]
                if shortAddress == underlyingAddress:
                    revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
                if shortAddress < underlyingAddress:
                    if not shortAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == shortAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                else:
                    if not underlyingAddress:
                        revert with 0, 'UniUtils: ZERO_ADDRESS'
                    staticcall pairAddress.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if shortAddress == underlyingAddress:
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[18 len 14]:
                            revert with 0, 18
                        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                            revert with 0, 17
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                            revert with 0, 17
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                               ext_call.return_data[0],
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                               ext_call.return_data[0]
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                       ext_call.return_data[0]
        staticcall pairAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                   ext_call.return_data[0]
        if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
                   ext_call.return_data[0]
        if shortAddress == underlyingAddress:
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if shortAddress < underlyingAddress:
            if not shortAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if shortAddress == shortAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                       ext_call.return_data[0]
        else:
            if not underlyingAddress:
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if shortAddress == underlyingAddress:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                       ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                       ext_call.return_data[0]
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
            revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
            revert with 0, 17
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > -1:
            revert with 0, 17
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
               ext_call.return_data[0],
               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
               ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
               ext_call.return_data[0]
    staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args sub_a52602b9Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args sub_fd6bac70Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    staticcall stor23.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor27, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    staticcall pairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if underlyingAddress == shortAddress:
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if underlyingAddress < shortAddress:
        if not underlyingAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if underlyingAddress == underlyingAddress:
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                       (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                       ext_call.return_data[0]
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                       (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                       ext_call.return_data[0]
            if shortAddress == underlyingAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if shortAddress < underlyingAddress:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if shortAddress == shortAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                           ext_call.return_data[0]
            else:
                if not underlyingAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if shortAddress == underlyingAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                           ext_call.return_data[0]
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                   ext_call.return_data[0]
    else:
        if not shortAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if underlyingAddress == shortAddress:
            staticcall pairAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                       (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                       ext_call.return_data[0]
            if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > -1:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                       (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
                       ext_call.return_data[0]
            if shortAddress == underlyingAddress:
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if shortAddress < underlyingAddress:
                if not shortAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if shortAddress == shortAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                           ext_call.return_data[0]
            else:
                if not underlyingAddress:
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                staticcall pairAddress.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if shortAddress == underlyingAddress:
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[18 len 14]:
                        revert with 0, 18
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                           ext_call.return_data[0]
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[50 len 14]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
                   ext_call.return_data[0]
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(112, 0, ext_call.return_data[32]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if Mask(112, 0, ext_call.return_data[0]) and 2 * ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
            revert with 0, 17
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
               ext_call.return_data[0],
               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
               ext_call.return_data[0]
    if not (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > -1:
            revert with 0, 17
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 17
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
               ext_call.return_data[0],
               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
               (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
               ext_call.return_data[0]
    if shortAddress == underlyingAddress:
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if shortAddress < underlyingAddress:
        if not shortAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if shortAddress == shortAddress:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                   ext_call.return_data[0]
    else:
        if not underlyingAddress:
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if shortAddress == underlyingAddress:
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14]:
                revert with 0, 18
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]):
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])),
                   ext_call.return_data[0]
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniUtils: INSUFFICIENT_LIQUIDITY'
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[50 len 14]:
        revert with 0, 18
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > !((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]):
        revert with 0, 17
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 17
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 
           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
           ext_call.return_data[0],
           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
           ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ((ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])),
           ext_call.return_data[0]
}



}
