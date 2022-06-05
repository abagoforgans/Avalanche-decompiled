contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - sub_4f1342d4(?)
#  - rebalance()
#  - redeemUnderlying(uint256 arg1)
#  - mint(uint256 arg1)
#  - closePosition()
#  - _fallback()
#
const isCEther = 0


address owner;
uint256 lastHarvest;
address vaultAddress;
uint256 totalSupply;
array of struct stor154;
array of struct stor155;
mapping of uint8 stor156;
uint256 sub_0e962f00;
uint256 stor207;
address underlyingAddress;
address shortAddress;
uint256 stor210;
uint16 sub_3dfe9f6a;
address sub_a52602b9Address;
address sub_fd6bac70Address;
address comptrollerAddress;
address oracleAddress;
uint256 sub_d539fe4b;
address stor317;
address stor318;
address stor319;
address stor370;
address stor371;
address stor372;
address pairAddress;
uint256 stor374;
address stor375;
uint256 version;

function sub_0e962f00(?) {
    return sub_0e962f00
}

function totalSupply() {
    return totalSupply
}

function short() {
    return shortAddress
}

function sub_3dfe9f6a(?) {
    return sub_3dfe9f6a
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

function oracle() {
    return oracleAddress
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
    return bool(stor156[address(arg1)])
}

function vault() {
    return vaultAddress
}

function sub_fd6bac70(?) {
    return sub_fd6bac70Address
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    vaultAddress = arg1
}

function sub_2125001e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor210 = arg1
}

function sub_711326ce(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor207 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_de747e5a(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3dfe9f6a = uint16(arg1)
}

function setManager(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor156[address(arg1)] = uint8(arg2)
    emit 0x2458f684: arg2, arg1
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

function sub_02df632f(?) {
    staticcall stor371.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor372 == ext_call.return_data[12 len 20]:
        staticcall stor371.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor375 = ext_call.return_data[12 len 20]
}

function sub_d56974cf(?) {
    staticcall stor319.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor318 == ext_call.return_data[12 len 20]:
        staticcall stor319.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor317 = ext_call.return_data[12 len 20]
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

function sub_4654e3f3(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor154.length):
        if bool(stor154.length) == uint255(stor154.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor154.length = 0
            idx = 0
            while (uint255(stor154.length) * 0.5) + 31 / 32 > idx:
                stor154[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor154.length = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor154[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(stor154.length) * 0.5) + 31 / 32 > idx:
                stor154[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor154.length) == stor154.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor154.length = 0
            idx = 0
            while stor154.length.field_1 + 31 / 32 > idx:
                stor154[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor154.length = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor154[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor154.length.field_1 + 31 / 32 > idx:
                stor154[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor155.length):
        if bool(stor155.length) == uint255(stor155.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor155.length = 0
            idx = 0
            while (uint255(stor155.length) * 0.5) + 31 / 32 > idx:
                stor155[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor155.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor155[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor155.length) * 0.5) + 31 / 32 > idx:
                stor155[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor155.length) == stor155.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor155.length = 0
            idx = 0
            while stor155.length.field_1 + 31 / 32 > idx:
                stor155[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor155.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor155[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor155.length.field_1 + 31 / 32 > idx:
                stor155[idx].field_0 = 0
                idx = idx + 1
                continue 
    emit Upgrade()
}

function name() {
    if bool(stor154.length):
        if bool(stor154.length) == uint255(stor154.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor154.length):
            if bool(stor154.length) == uint255(stor154.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor154.length):
                if 31 < uint255(stor154.length) * 0.5:
                    mem[128] = uint256(stor154.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor154.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor154[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor154.length), data=mem[128 len ceil32(uint255(stor154.length) * 0.5)])
                mem[128] = 256 * stor154.length.field_8
        else:
            if bool(stor154.length) == stor154.length.field_1 < 32:
                revert with 0, 34
            if stor154.length.field_1:
                if 31 < stor154.length.field_1:
                    mem[128] = uint256(stor154.field_0)
                    idx = 128
                    s = 0
                    while stor154.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor154[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor154.length), data=mem[128 len ceil32(uint255(stor154.length) * 0.5)])
                mem[128] = 256 * stor154.length.field_8
        mem[ceil32(uint255(stor154.length) * 0.5) + 192 len ceil32(uint255(stor154.length) * 0.5)] = mem[128 len ceil32(uint255(stor154.length) * 0.5)]
        if ceil32(uint255(stor154.length) * 0.5) > uint255(stor154.length) * 0.5:
            mem[(uint255(stor154.length) * 0.5) + ceil32(uint255(stor154.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor154.length), data=mem[128 len ceil32(uint255(stor154.length) * 0.5)], mem[(2 * ceil32(uint255(stor154.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor154.length) * 0.5)]), 
    if bool(stor154.length) == stor154.length.field_1 < 32:
        revert with 0, 34
    if bool(stor154.length):
        if bool(stor154.length) == uint255(stor154.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor154.length):
            if 31 < uint255(stor154.length) * 0.5:
                mem[128] = uint256(stor154.field_0)
                idx = 128
                s = 0
                while (uint255(stor154.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor154[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor154.length % 128, data=mem[128 len ceil32(stor154.length.field_1)])
            mem[128] = 256 * stor154.length.field_8
    else:
        if bool(stor154.length) == stor154.length.field_1 < 32:
            revert with 0, 34
        if stor154.length.field_1:
            if 31 < stor154.length.field_1:
                mem[128] = uint256(stor154.field_0)
                idx = 128
                s = 0
                while stor154.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor154[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor154.length % 128, data=mem[128 len ceil32(stor154.length.field_1)])
            mem[128] = 256 * stor154.length.field_8
    mem[ceil32(stor154.length.field_1) + 192 len ceil32(stor154.length.field_1)] = mem[128 len ceil32(stor154.length.field_1)]
    if ceil32(stor154.length.field_1) > stor154.length.field_1:
        mem[stor154.length.field_1 + ceil32(stor154.length.field_1) + 192] = 0
    return Array(len=stor154.length % 128, data=mem[128 len ceil32(stor154.length.field_1)], mem[(2 * ceil32(stor154.length.field_1)) + 192 len 2 * ceil32(stor154.length.field_1)]), 
}

function symbol() {
    if bool(stor155.length):
        if bool(stor155.length) == uint255(stor155.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor155.length):
            if bool(stor155.length) == uint255(stor155.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor155.length):
                if 31 < uint255(stor155.length) * 0.5:
                    mem[128] = uint256(stor155.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor155.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor155[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor155.length), data=mem[128 len ceil32(uint255(stor155.length) * 0.5)])
                mem[128] = 256 * stor155.length.field_8
        else:
            if bool(stor155.length) == stor155.length.field_1 < 32:
                revert with 0, 34
            if stor155.length.field_1:
                if 31 < stor155.length.field_1:
                    mem[128] = uint256(stor155.field_0)
                    idx = 128
                    s = 0
                    while stor155.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor155[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor155.length), data=mem[128 len ceil32(uint255(stor155.length) * 0.5)])
                mem[128] = 256 * stor155.length.field_8
        mem[ceil32(uint255(stor155.length) * 0.5) + 192 len ceil32(uint255(stor155.length) * 0.5)] = mem[128 len ceil32(uint255(stor155.length) * 0.5)]
        if ceil32(uint255(stor155.length) * 0.5) > uint255(stor155.length) * 0.5:
            mem[(uint255(stor155.length) * 0.5) + ceil32(uint255(stor155.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor155.length), data=mem[128 len ceil32(uint255(stor155.length) * 0.5)], mem[(2 * ceil32(uint255(stor155.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor155.length) * 0.5)]), 
    if bool(stor155.length) == stor155.length.field_1 < 32:
        revert with 0, 34
    if bool(stor155.length):
        if bool(stor155.length) == uint255(stor155.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor155.length):
            if 31 < uint255(stor155.length) * 0.5:
                mem[128] = uint256(stor155.field_0)
                idx = 128
                s = 0
                while (uint255(stor155.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor155[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor155.length % 128, data=mem[128 len ceil32(stor155.length.field_1)])
            mem[128] = 256 * stor155.length.field_8
    else:
        if bool(stor155.length) == stor155.length.field_1 < 32:
            revert with 0, 34
        if stor155.length.field_1:
            if 31 < stor155.length.field_1:
                mem[128] = uint256(stor155.field_0)
                idx = 128
                s = 0
                while stor155.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor155[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor155.length % 128, data=mem[128 len ceil32(stor155.length.field_1)])
            mem[128] = 256 * stor155.length.field_8
    mem[ceil32(stor155.length.field_1) + 192 len ceil32(stor155.length.field_1)] = mem[128 len ceil32(stor155.length.field_1)]
    if ceil32(stor155.length.field_1) > stor155.length.field_1:
        mem[stor155.length.field_1 + ceil32(stor155.length.field_1) + 192] = 0
    return Array(len=stor155.length % 128, data=mem[128 len ceil32(stor155.length.field_1)], mem[(2 * ceil32(stor155.length.field_1)) + 192 len 2 * ceil32(stor155.length.field_1)]), 
}

function balanceOfUnderlying() {
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
        staticcall stor370.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor374, this.address
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
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0])
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
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0])
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
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0])
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
            staticcall stor370.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor374, this.address
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
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
            staticcall stor370.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor374, this.address
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
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
    staticcall stor370.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor374, this.address
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
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
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
        revert with 0, 17
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
}

function balanceOfUnderlying(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
        staticcall stor370.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor374, this.address
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
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0])
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
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0])
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
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0])
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
            staticcall stor370.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor374, this.address
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
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
            staticcall stor370.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor374, this.address
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0])
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
    staticcall stor370.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor374, this.address
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
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
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
        revert with 0, 17
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0])
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
        staticcall stor370.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor374, this.address
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
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
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
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0], 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                       ext_call.return_data[0],
                       0,
                       2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
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
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0], 
               ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
               ext_call.return_data[0],
               0,
               2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
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
            staticcall stor370.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor374, this.address
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
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
            staticcall stor370.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor374, this.address
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                           ext_call.return_data[0],
                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                           2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0], 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
                   2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
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
    staticcall stor370.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor374, this.address
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
                   ext_call.return_data[0],
                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
                   2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0],
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
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0], 
           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
           ext_call.return_data[0],
           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
           2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0],
           ext_call.return_data[0]
}

function getPricePerShare() {
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
        staticcall stor370.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor374, this.address
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
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                if 0 == totalSupply:
                    return sub_0e962f00
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] and sub_0e962f00 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0]:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * sub_0e962f00) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
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
                if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < 0:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
                    revert with 0, 17
                if 0 == totalSupply:
                    return sub_0e962f00
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0] and sub_0e962f00 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) + ext_call.return_data[0]:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * sub_0e962f00) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
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
        if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < 0:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) > !ext_call.return_data[0]:
            revert with 0, 17
        if 0 == totalSupply:
            return sub_0e962f00
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0] and sub_0e962f00 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) + ext_call.return_data[0]:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * sub_0e962f00) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
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
            staticcall stor370.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor374, this.address
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 == totalSupply:
                        return sub_0e962f00
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] and sub_0e962f00 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0]:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * sub_0e962f00) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * sub_0e962f00) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 == totalSupply:
                        return sub_0e962f00
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] and sub_0e962f00 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0]:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * sub_0e962f00) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * sub_0e962f00) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            if 0 == totalSupply:
                return sub_0e962f00
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] and sub_0e962f00 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0]:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * sub_0e962f00) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * sub_0e962f00) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
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
            staticcall stor370.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args stor374, this.address
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 == totalSupply:
                        return sub_0e962f00
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] and sub_0e962f00 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0]:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * sub_0e962f00) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * sub_0e962f00) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
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
                    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                        revert with 0, 17
                    if 0 == totalSupply:
                        return sub_0e962f00
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] and sub_0e962f00 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0]:
                        revert with 0, 17
                    if not totalSupply:
                        revert with 0, 18
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * sub_0e962f00) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * sub_0e962f00) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) > !ext_call.return_data[0]:
                revert with 0, 17
            if 0 == totalSupply:
                return sub_0e962f00
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0] and sub_0e962f00 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) + ext_call.return_data[0]:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * sub_0e962f00) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * sub_0e962f00) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
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
    staticcall stor370.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor374, this.address
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            if 0 == totalSupply:
                return sub_0e962f00
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] and sub_0e962f00 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0]:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * sub_0e962f00) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * sub_0e962f00) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
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
            if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
                revert with 0, 17
            if 0 == totalSupply:
                return sub_0e962f00
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] and sub_0e962f00 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0]:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * sub_0e962f00) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[0] * sub_0e962f00) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
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
    if (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !(2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) < ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) > !ext_call.return_data[0]:
        revert with 0, 17
    if 0 == totalSupply:
        return sub_0e962f00
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0] and sub_0e962f00 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0]) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) + ext_call.return_data[0]:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * sub_0e962f00) + (2 * (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) + (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] * sub_0e962f00) - (ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_0e962f00) + (ext_call.return_data[0] * sub_0e962f00) / totalSupply)
}

function sub_5439c4ad(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniUtils: INSUFFICIENT_OUTPUT_AMOUNT'
    if address(arg3) == address(arg4):
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if address(arg3) < address(arg4):
        if not address(arg3):
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg3) == address(arg3):
            if ext_call.return_data[18 len 14] and arg2 > -1 / ext_call.return_data[18 len 14]:
                revert with 0, 17
            if ext_call.return_data[18 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if ext_call.return_data[50 len 14] < arg2:
                revert with 0, 17
            if ext_call.return_data[50 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if not (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                revert with 0, 18
            if 1 > !(1000 * ext_call.return_data[18 len 14] * arg2 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)):
                revert with 0, 17
            if address(arg4) == address(arg3):
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if address(arg4) < address(arg3):
                if not address(arg4):
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                mem[ceil32(return_data.size) + 132] = address(arg1)
                mem[ceil32(return_data.size) + 164] = (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg3) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) << 288)
                if address(arg3) == address(arg4):
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0, None
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0
                        else:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0, None
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0, None
            else:
                if not address(arg3):
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                mem[ceil32(return_data.size) + 132] = address(arg1)
                mem[ceil32(return_data.size) + 164] = (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg3) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) << 288)
                if address(arg3) == address(arg3):
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0, None
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0, None
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1)
        if ext_call.return_data[50 len 14] and arg2 > -1 / ext_call.return_data[50 len 14]:
            revert with 0, 17
        if ext_call.return_data[50 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if ext_call.return_data[18 len 14] < arg2:
            revert with 0, 17
        if ext_call.return_data[18 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if not (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
            revert with 0, 18
        if 1 > !(1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)):
            revert with 0, 17
        if address(arg4) == address(arg3):
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if address(arg4) < address(arg3):
            if not address(arg4):
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) << 288)
            if address(arg3) == address(arg4):
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0, None
                    else:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0, None
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0
            else:
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0, None
                    else:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0, None
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0
        else:
            if not address(arg3):
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) << 288)
            if address(arg3) == address(arg3):
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg2, address(this.address), 128, 0
            else:
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg2, 0, address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg2, 0, address(this.address), 128, 0, None
    else:
        if not address(arg4):
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg3) == address(arg4):
            if ext_call.return_data[18 len 14] and arg2 > -1 / ext_call.return_data[18 len 14]:
                revert with 0, 17
            if ext_call.return_data[18 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if ext_call.return_data[50 len 14] < arg2:
                revert with 0, 17
            if ext_call.return_data[50 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if not (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                revert with 0, 18
            if 1 > !(1000 * ext_call.return_data[18 len 14] * arg2 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)):
                revert with 0, 17
            if address(arg4) == address(arg3):
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if address(arg4) < address(arg3):
                if not address(arg4):
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                mem[ceil32(return_data.size) + 132] = address(arg1)
                mem[ceil32(return_data.size) + 164] = (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg3) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) << 288)
                if address(arg3) == address(arg4):
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0, None
                        else:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0, None
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 0
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0, None
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0, None
            else:
                if not address(arg3):
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                mem[ceil32(return_data.size) + 132] = address(arg1)
                mem[ceil32(return_data.size) + 164] = (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg3) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 0) << 288)
                if address(arg3) == address(arg3):
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg2, address(this.address), 128, 0
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0
                        else:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0, None
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1)
        if ext_call.return_data[50 len 14] and arg2 > -1 / ext_call.return_data[50 len 14]:
            revert with 0, 17
        if ext_call.return_data[50 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if ext_call.return_data[18 len 14] < arg2:
            revert with 0, 17
        if ext_call.return_data[18 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if not (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
            revert with 0, 18
        if 1 > !(1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)):
            revert with 0, 17
        if address(arg4) == address(arg3):
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if address(arg4) < address(arg3):
            if not address(arg4):
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) << 288)
            if address(arg3) == address(arg4):
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0, None
                    else:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg2, address(this.address), 128, 0
            else:
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg2, 0, address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg2, 0, address(this.address), 128, 0, None
        else:
            if not address(arg3):
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1, 0) << 288)
            if address(arg3) == address(arg3):
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg2, address(this.address), 128, 0, None
            else:
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0
                    else:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 0, None
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg2, 0, address(this.address), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ((1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1)
}

function sub_30741fa4(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniUtils: INSUFFICIENT_INPUT_AMOUNT'
    if address(arg3) == address(arg4):
        revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
    if address(arg3) < address(arg4):
        if not address(arg3):
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if address(arg3) == address(arg3):
            if 997 * arg2 and ext_call.return_data[50 len 14] > -1 / 997 * arg2:
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * arg2):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg2):
                revert with 0, 18
            if address(arg4) == address(arg3):
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if address(arg4) < address(arg3):
                if not address(arg4):
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                mem[ceil32(return_data.size) + 132] = address(arg1)
                mem[ceil32(return_data.size) + 164] = arg2
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg3) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
                if address(arg3) == address(arg4):
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), address(this.address), 128, 0, None
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), address(this.address), 128, 0
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0
                        else:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0, None
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0, None
            else:
                if not address(arg3):
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                mem[ceil32(return_data.size) + 132] = address(arg1)
                mem[ceil32(return_data.size) + 164] = arg2
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg3) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
                if address(arg3) == address(arg3):
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), address(this.address), 128, 0, None
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0, None
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return (997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2))
        if 997 * arg2 and ext_call.return_data[18 len 14] > -1 / 997 * arg2:
            revert with 0, 17
        if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[50 len 14] > !(997 * arg2):
            revert with 0, 17
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg2):
            revert with 0, 18
        if address(arg4) == address(arg3):
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if address(arg4) < address(arg3):
            if not address(arg4):
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = arg2
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
            if address(arg3) == address(arg4):
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), address(this.address), 128, 0, None
                    else:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), address(this.address), 128, 0, None
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), address(this.address), 128, 0
            else:
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), 0, address(this.address), 128, 0, None
                    else:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), 0, address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), 0, address(this.address), 128, 0, None
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), 0, address(this.address), 128, 0
        else:
            if not address(arg3):
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = arg2
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
            if address(arg3) == address(arg3):
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), address(this.address), 128, 0
            else:
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), 0, address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), 0, address(this.address), 128, 0, None
    else:
        if not address(arg4):
            revert with 0, 'UniUtils: ZERO_ADDRESS'
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if address(arg3) == address(arg4):
            if 997 * arg2 and ext_call.return_data[50 len 14] > -1 / 997 * arg2:
                revert with 0, 17
            if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[18 len 14] > !(997 * arg2):
                revert with 0, 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg2):
                revert with 0, 18
            if address(arg4) == address(arg3):
                revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
            if address(arg4) < address(arg3):
                if not address(arg4):
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                mem[ceil32(return_data.size) + 132] = address(arg1)
                mem[ceil32(return_data.size) + 164] = arg2
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg3) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
                if address(arg3) == address(arg4):
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), address(this.address), 128, 0, None
                        else:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), address(this.address), 128, 0
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), address(this.address), 128, 0, None
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), address(this.address), 128, 0
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0, None
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0, None
            else:
                if not address(arg3):
                    revert with 0, 'UniUtils: ZERO_ADDRESS'
                mem[ceil32(return_data.size) + 132] = address(arg1)
                mem[ceil32(return_data.size) + 164] = arg2
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg3)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(arg3) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
                if address(arg3) == address(arg3):
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), address(this.address), 128, 0
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0
                        else:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0, None
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(arg1))
                            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2), 0, address(this.address), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return (997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2))
        if 997 * arg2 and ext_call.return_data[18 len 14] > -1 / 997 * arg2:
            revert with 0, 17
        if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[50 len 14] > !(997 * arg2):
            revert with 0, 17
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg2):
            revert with 0, 18
        if address(arg4) == address(arg3):
            revert with 0, 'UniUtils: IDENTICAL_ADDRESSES'
        if address(arg4) < address(arg3):
            if not address(arg4):
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = arg2
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
            if address(arg3) == address(arg4):
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), address(this.address), 128, 0, None
                    else:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), address(this.address), 128, 0
            else:
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), 0, address(this.address), 128, 0
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), 0, address(this.address), 128, 0, None
        else:
            if not address(arg3):
                revert with 0, 'UniUtils: ZERO_ADDRESS'
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = arg2
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg3)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
            mem[ceil32(return_data.size) + 328] = 0
            call address(arg3) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
            if address(arg3) == address(arg3):
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), address(this.address), 128, 0, None
            else:
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), 0, address(this.address), 128, 0
                    else:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(arg1))
                        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), 0, address(this.address), 128, 0, None
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2), 0, address(this.address), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2))
}



}
