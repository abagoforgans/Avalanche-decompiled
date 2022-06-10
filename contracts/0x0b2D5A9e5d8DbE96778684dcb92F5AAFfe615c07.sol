contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint256 arg1, uint256 arg2)
#  - _fallback()
#
const sub_6db3dffb(?) = 0

const sub_bbab2ede(?) = 2

const sub_d2ae3170(?) = 1

const sub_dd9992a2(?) = 500

const MAX_MINT = 10


uint8 stor1; offset 160
address owner;
uint256 stor2;
uint16 states;
address factoryAddress; offset 16
address tokenAddress;
array of struct stor5;
array of struct assets;
mapping of struct tokenAssets;
mapping of struct sub_aa9f3eca;
address vaultAddress;
mapping of struct stor10;
array of struct sub_f0503ac0;
mapping of uint256 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
uint256 stor15;

function totalAssets() {
    return assets.length
}

function initialized() {
    return bool(stor1)
}

function whitelists(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function states() {
    return states
}

function owner() {
    return owner
}

function sub_aa9f3eca(?) {
    require calldata.size - 4 >= 32
    return sub_aa9f3eca[arg1].field_0
}

function factory() {
    return factoryAddress
}

function assets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < assets.length
    return assets[arg1].field_0
}

function withdrawn(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function sub_f0503ac0(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_f0503ac0[arg1].field_0
    return sub_f0503ac0[arg1][arg2].field_0, sub_f0503ac0[arg1][arg2].field_256
}

function tokenAssets(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenAssets[arg1].field_0
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function sub_5b2dfeb8(?) {
    require calldata.size - 4 >= 32
    return sub_aa9f3eca[arg1].field_0 != 1
}

function setIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == factoryAddress
    stor2 = arg1
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    vaultAddress = arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addWhitelist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    stor14[address(arg1)] = uint8(arg2)
    stor15 = sha3(block.timestamp, stor15, arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_6c0a4749(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 > calldata.size
    revert
}

function open(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    require 1 == sub_aa9f3eca[arg1].field_0
    require 2 < states
    sub_aa9f3eca[arg1].field_0 = 2
    sub_aa9f3eca[arg1].field_8 = 0
    emit 0x577690a7: arg1, 2
}

function sub_588d0bdf(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor10[arg1].field_0
    require stor10[arg1].field_1280 > stor12[arg1]
    if stor10[arg1].field_1280 < stor12[arg1]:
        revert with 0, 17
    require ext_code.size(vaultAddress)
    call vaultAddress.withdrawERC20(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, stor10[arg1].field_1024, stor10[arg1].field_1280 - stor12[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor12[arg1] = stor10[arg1].field_1280
    stor13[arg1] = 1
}

function updateAssetPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x975057e7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 >= assets.length:
        revert with 0, 50
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc4479ec6 with:
         gas gas_remaining wei
        args assets[arg1].field_0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimDeposits(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    require 2 == sub_aa9f3eca[arg1].field_0
    require ext_code.size(vaultAddress)
    call vaultAddress.0x88d9c378 with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < states
    sub_aa9f3eca[arg1].field_0 = 0
    emit 0x577690a7: arg1, 0
}

function wrap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    require not sub_aa9f3eca[arg1].field_0
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.isEmpty(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require not ext_call.return_data[0]
    require 1 < states
    sub_aa9f3eca[arg1].field_0 = 1
    sub_aa9f3eca[arg1].field_8 = 0
    emit 0x577690a7: arg1, 1
}

function openAll() {
    mem[100] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        mem[0] = mem[_15]
        mem[32] = 8
        if 1 == sub_aa9f3eca[mem[0]].field_0:
            require 2 < states
            mem[0] = _16
            mem[32] = 8
            sub_aa9f3eca[_16].field_0 = 2
            sub_aa9f3eca[_16].field_8 = 0
            mem[mem[64]] = _16
            mem[mem[64] + 32] = 2
            emit 0x577690a7: _16, 2
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function claimAll() {
    mem[100] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _18 = mem[_17]
        mem[0] = mem[_17]
        mem[32] = 8
        if 2 == sub_aa9f3eca[mem[0]].field_0:
            mem[mem[64] + 36] = msg.sender
            require ext_code.size(vaultAddress)
            call vaultAddress.0x88d9c378 with:
                 gas gas_remaining wei
                args _18, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 0 < states
            mem[0] = _18
            mem[32] = 8
            sub_aa9f3eca[_18].field_0 = 0
            mem[mem[64]] = _18
            mem[mem[64] + 32] = 0
            emit 0x577690a7: _18, 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_3173cfad(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _26 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        require 1 == sub_aa9f3eca[mem[(32 * idx) + 128]].field_0
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x6352211e with:
                gas gas_remaining wei
               args _26
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_30] == mem[_30 + 12 len 20]
        require mem[_30 + 12 len 20] == msg.sender
        require 2 < states
        mem[0] = _26
        mem[32] = 8
        sub_aa9f3eca[_26].field_0 = 2
        sub_aa9f3eca[_26].field_8 = 0
        mem[mem[64]] = _26
        mem[mem[64] + 32] = 2
        emit 0x577690a7: _26, 2
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_5d8f6b73(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require msg.sender == owner
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor5.length = 0
            idx = 0
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor5[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor5[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0xd620c386: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
}

function sub_78e13098(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == uint16(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require msg.sender == owner
    require not stor1
    stor1 = 1
    tokenAddress = address(cd[36])
    states = uint16(cd[68])
    factoryAddress = address(cd[4])
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 100).length:
            stor5.length = 0
            idx = 0
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = (2 * ('cd', 100).length) + 1
            s = 0
            idx = cd[100] + 36
            while cd[100] + ('cd', 100).length + 36 > idx:
                stor5[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 100).length:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = (2 * ('cd', 100).length) + 1
            s = 0
            idx = cd[100] + 36
            while cd[100] + ('cd', 100).length + 36 > idx:
                stor5[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_8752503b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    mem[100] = address(arg1)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _37 = mem[_33]
            mem[0] = mem[_33]
            mem[32] = 8
            if sub_aa9f3eca[mem[0]].field_0 == uint16(arg2):
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _37
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _32 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return 32, mem[mem[64] + 32 len (32 * _32) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x2f745c59 with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _39 = mem[_35]
        mem[0] = mem[_35]
        mem[32] = 8
        if sub_aa9f3eca[mem[0]].field_0 == uint16(arg2):
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _39
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _34 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _34] = mem[ceil32(return_data.size) + 128 len 32 * _34]
    return 32, mem[mem[64] + 32 len (32 * _34) + 32]
}

function promo() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function assetPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x975057e7 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 >= assets.length:
        revert with 0, 50
    mem[0] = 6
    mem[ceil32(return_data.size) + 96] = 0xeac8f5b800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = assets[arg1].field_0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xeac8f5b8 with:
            gas gas_remaining wei
           args assets[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _9 = mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32
    require mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 >= 192
    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + 288
    _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _12 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + 96] + 96])) + 193 < 192 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + 96] + 96])) + 289 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + 96] + 96])) + 289
    mem[(2 * ceil32(return_data.size)) + 288] = _12
    require mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + _11 + _12 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_12)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], assets[arg1].field_32 + _11 + 128 len ceil32(_12)]
    if ceil32(_12) <= _12:
        mem[(2 * ceil32(return_data.size)) + 96] = (2 * ceil32(return_data.size)) + 288
        _76 = mem[ceil32(return_data.size) + _9 + 128]
        require mem[ceil32(return_data.size) + _9 + 128] <= test266151307()
        require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
        _78 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96]
        if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96] > test266151307():
            revert with 0, 65
        _80 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96])) + 1
        mem[_80] = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96]
        require _9 + _76 + _78 + 32 <= return_data.size
        mem[_80 + 32 len ceil32(_78)] = mem[ceil32(return_data.size) + _9 + _76 + 128 len ceil32(_78)]
        if ceil32(_78) <= _78:
            mem[(2 * ceil32(return_data.size)) + 128] = _80
            _138 = mem[ceil32(return_data.size) + _9 + 160]
            require mem[ceil32(return_data.size) + _9 + 160] <= test266151307()
            require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 127 < ceil32(return_data.size) + return_data.size + 96
            _142 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
            if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96] > test266151307():
                revert with 0, 65
            _146 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1
            mem[_146] = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
            require _9 + _138 + (32 * _142) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _9 + _138 + 128
            t = _146 + 32
            while idx < _142:
                _190 = mem[s]
                require mem[s] <= test266151307()
                require ceil32(return_data.size) + _9 + _138 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
                _198 = mem[ceil32(return_data.size) + _9 + _138 + mem[s] + 128]
                if mem[ceil32(return_data.size) + _9 + _138 + mem[s] + 128] > test266151307():
                    revert with 0, 65
                _211 = mem[64]
                if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _138 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _138 + mem[s] + 128])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _138 + mem[s] + 128])) + 1
                mem[_211] = _198
                require _9 + _138 + _190 + _198 + 64 <= return_data.size
                u = 0
                while u < _198:
                    mem[u + _211 + 32] = mem[u + ceil32(return_data.size) + _9 + _138 + _190 + 160]
                    u = u + 32
                    continue 
                if ceil32(_198) > _198:
                    mem[_198 + _211 + 32] = 0
                mem[t] = _211
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 160] = _146
        else:
            mem[_78 + _80 + 32] = 0
            mem[(2 * ceil32(return_data.size)) + 128] = _80
            _139 = mem[ceil32(return_data.size) + _9 + 160]
            require mem[ceil32(return_data.size) + _9 + 160] <= test266151307()
            require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 127 < ceil32(return_data.size) + return_data.size + 96
            _143 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
            if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96] > test266151307():
                revert with 0, 65
            _147 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1
            mem[_147] = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
            require _9 + _139 + (32 * _143) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _9 + _139 + 128
            t = _147 + 32
            while idx < _143:
                _191 = mem[s]
                require mem[s] <= test266151307()
                require ceil32(return_data.size) + _9 + _139 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
                _199 = mem[ceil32(return_data.size) + _9 + _139 + mem[s] + 128]
                if mem[ceil32(return_data.size) + _9 + _139 + mem[s] + 128] > test266151307():
                    revert with 0, 65
                _213 = mem[64]
                if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _139 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _139 + mem[s] + 128])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _139 + mem[s] + 128])) + 1
                mem[_213] = _199
                require _9 + _139 + _191 + _199 + 64 <= return_data.size
                u = 0
                while u < _199:
                    mem[u + _213 + 32] = mem[u + ceil32(return_data.size) + _9 + _139 + _191 + 160]
                    u = u + 32
                    continue 
                if ceil32(_199) > _199:
                    mem[_199 + _213 + 32] = 0
                mem[t] = _213
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 160] = _147
    else:
        mem[_12 + (2 * ceil32(return_data.size)) + 320] = 0
        mem[(2 * ceil32(return_data.size)) + 96] = (2 * ceil32(return_data.size)) + 288
        _77 = mem[ceil32(return_data.size) + _9 + 128]
        require mem[ceil32(return_data.size) + _9 + 128] <= test266151307()
        require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
        _79 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96]
        if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96] > test266151307():
            revert with 0, 65
        _81 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96])) + 1
        mem[_81] = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96]
        require _9 + _77 + _79 + 32 <= return_data.size
        mem[_81 + 32 len ceil32(_79)] = mem[ceil32(return_data.size) + _9 + _77 + 128 len ceil32(_79)]
        if ceil32(_79) <= _79:
            mem[(2 * ceil32(return_data.size)) + 128] = _81
            _140 = mem[ceil32(return_data.size) + _9 + 160]
            require mem[ceil32(return_data.size) + _9 + 160] <= test266151307()
            require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 127 < ceil32(return_data.size) + return_data.size + 96
            _144 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
            if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96] > test266151307():
                revert with 0, 65
            _148 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1
            mem[_148] = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
            require _9 + _140 + (32 * _144) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _9 + _140 + 128
            t = _148 + 32
            while idx < _144:
                _192 = mem[s]
                require mem[s] <= test266151307()
                require ceil32(return_data.size) + _9 + _140 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
                _200 = mem[ceil32(return_data.size) + _9 + _140 + mem[s] + 128]
                if mem[ceil32(return_data.size) + _9 + _140 + mem[s] + 128] > test266151307():
                    revert with 0, 65
                _215 = mem[64]
                if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _140 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _140 + mem[s] + 128])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _140 + mem[s] + 128])) + 1
                mem[_215] = _200
                require _9 + _140 + _192 + _200 + 64 <= return_data.size
                u = 0
                while u < _200:
                    mem[u + _215 + 32] = mem[u + ceil32(return_data.size) + _9 + _140 + _192 + 160]
                    u = u + 32
                    continue 
                if ceil32(_200) > _200:
                    mem[_200 + _215 + 32] = 0
                mem[t] = _215
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 160] = _148
        else:
            mem[_79 + _81 + 32] = 0
            mem[(2 * ceil32(return_data.size)) + 128] = _81
            _141 = mem[ceil32(return_data.size) + _9 + 160]
            require mem[ceil32(return_data.size) + _9 + 160] <= test266151307()
            require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 127 < ceil32(return_data.size) + return_data.size + 96
            _145 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
            if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96] > test266151307():
                revert with 0, 65
            _149 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1
            mem[_149] = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
            require _9 + _141 + (32 * _145) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _9 + _141 + 128
            t = _149 + 32
            while idx < _145:
                _193 = mem[s]
                require mem[s] <= test266151307()
                require ceil32(return_data.size) + _9 + _141 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
                _201 = mem[ceil32(return_data.size) + _9 + _141 + mem[s] + 128]
                if mem[ceil32(return_data.size) + _9 + _141 + mem[s] + 128] > test266151307():
                    revert with 0, 65
                _217 = mem[64]
                if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _141 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _141 + mem[s] + 128])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _141 + mem[s] + 128])) + 1
                mem[_217] = _201
                require _9 + _141 + _193 + _201 + 64 <= return_data.size
                u = 0
                while u < _201:
                    mem[u + _217 + 32] = mem[u + ceil32(return_data.size) + _9 + _141 + _193 + 160]
                    u = u + 32
                    continue 
                if ceil32(_201) > _201:
                    mem[_201 + _217 + 32] = 0
                mem[t] = _217
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 160] = _149
    require mem[ceil32(return_data.size) + _9 + 192] == mem[ceil32(return_data.size) + _9 + 204 len 20]
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + _9 + 192]
    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _9 + 224]
    mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _9 + 256]
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 224]
    return memory
      from mem[64]
       len 32
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x975057e7 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[0] = arg1
    mem[32] = 7
    mem[ceil32(return_data.size) + 96] = 0xeac8f5b800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = tokenAssets[arg1].field_0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xeac8f5b8 with:
            gas gas_remaining wei
           args tokenAssets[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _9 = mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32
    require mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 >= 192
    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + 288
    _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _12 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + 96] + 96])) + 193 < 192 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + 96] + 96])) + 289 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + 96] + 96])) + 289
    mem[(2 * ceil32(return_data.size)) + 288] = _12
    require mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + _11 + _12 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_12)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], tokenAssets[arg1].field_32 + _11 + 128 len ceil32(_12)]
    if ceil32(_12) <= _12:
        mem[(2 * ceil32(return_data.size)) + 96] = (2 * ceil32(return_data.size)) + 288
        _100 = mem[ceil32(return_data.size) + _9 + 128]
        require mem[ceil32(return_data.size) + _9 + 128] <= test266151307()
        require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
        _102 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96]
        if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96] > test266151307():
            revert with 0, 65
        _104 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96])) + 1
        mem[_104] = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96]
        require _9 + _100 + _102 + 32 <= return_data.size
        mem[_104 + 32 len ceil32(_102)] = mem[ceil32(return_data.size) + _9 + _100 + 128 len ceil32(_102)]
        if ceil32(_102) <= _102:
            mem[(2 * ceil32(return_data.size)) + 128] = _104
            _186 = mem[ceil32(return_data.size) + _9 + 160]
            require mem[ceil32(return_data.size) + _9 + 160] <= test266151307()
            require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 127 < ceil32(return_data.size) + return_data.size + 96
            _190 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
            if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96] > test266151307():
                revert with 0, 65
            _194 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1
            mem[_194] = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
            require _9 + _186 + (32 * _190) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _9 + _186 + 128
            t = _194 + 32
            while idx < _190:
                _262 = mem[s]
                require mem[s] <= test266151307()
                require ceil32(return_data.size) + _9 + _186 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
                _270 = mem[ceil32(return_data.size) + _9 + _186 + mem[s] + 128]
                if mem[ceil32(return_data.size) + _9 + _186 + mem[s] + 128] > test266151307():
                    revert with 0, 65
                _285 = mem[64]
                if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _186 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _186 + mem[s] + 128])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _186 + mem[s] + 128])) + 1
                mem[_285] = _270
                require _9 + _186 + _262 + _270 + 64 <= return_data.size
                u = 0
                while u < _270:
                    mem[u + _285 + 32] = mem[u + ceil32(return_data.size) + _9 + _186 + _262 + 160]
                    u = u + 32
                    continue 
                if ceil32(_270) > _270:
                    mem[_270 + _285 + 32] = 0
                mem[t] = _285
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 160] = _194
            require mem[ceil32(return_data.size) + _9 + 192] == mem[ceil32(return_data.size) + _9 + 204 len 20]
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + _9 + 192]
            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _9 + 224]
            mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _9 + 256]
            mem[0] = arg1
            mem[32] = 8
            if sub_aa9f3eca[arg1].field_0 >= mem[_194]:
                revert with 0, 50
            _298 = mem[(32 * sub_aa9f3eca[arg1].field_0) + _194 + 32]
            mem[mem[64]] = 32
            _306 = mem[_298]
            mem[mem[64] + 32] = mem[_298]
            mem[mem[64] + 64 len ceil32(_306)] = mem[_298 + 32 len ceil32(_306)]
            if ceil32(_306) > _306:
                mem[_306 + mem[64] + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_306) + 32]
        mem[_102 + _104 + 32] = 0
        mem[(2 * ceil32(return_data.size)) + 128] = _104
        _187 = mem[ceil32(return_data.size) + _9 + 160]
        require mem[ceil32(return_data.size) + _9 + 160] <= test266151307()
        require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 127 < ceil32(return_data.size) + return_data.size + 96
        _191 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
        if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96] > test266151307():
            revert with 0, 65
        _195 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1
        mem[_195] = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
        require _9 + _187 + (32 * _191) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _9 + _187 + 128
        t = _195 + 32
        while idx < _191:
            _263 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _9 + _187 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _271 = mem[ceil32(return_data.size) + _9 + _187 + mem[s] + 128]
            if mem[ceil32(return_data.size) + _9 + _187 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _289 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _187 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _187 + mem[s] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _187 + mem[s] + 128])) + 1
            mem[_289] = _271
            require _9 + _187 + _263 + _271 + 64 <= return_data.size
            u = 0
            while u < _271:
                mem[u + _289 + 32] = mem[u + ceil32(return_data.size) + _9 + _187 + _263 + 160]
                u = u + 32
                continue 
            if ceil32(_271) > _271:
                mem[_271 + _289 + 32] = 0
            mem[t] = _289
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 160] = _195
        require mem[ceil32(return_data.size) + _9 + 192] == mem[ceil32(return_data.size) + _9 + 204 len 20]
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + _9 + 192]
        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _9 + 224]
        mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _9 + 256]
        mem[0] = arg1
        mem[32] = 8
        if sub_aa9f3eca[arg1].field_0 >= mem[_195]:
            revert with 0, 50
        _299 = mem[(32 * sub_aa9f3eca[arg1].field_0) + _195 + 32]
        mem[mem[64]] = 32
        _307 = mem[_299]
        mem[mem[64] + 32] = mem[_299]
        mem[mem[64] + 64 len ceil32(_307)] = mem[_299 + 32 len ceil32(_307)]
        if ceil32(_307) > _307:
            mem[_307 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_307) + 32]
    mem[_12 + (2 * ceil32(return_data.size)) + 320] = 0
    mem[(2 * ceil32(return_data.size)) + 96] = (2 * ceil32(return_data.size)) + 288
    _101 = mem[ceil32(return_data.size) + _9 + 128]
    require mem[ceil32(return_data.size) + _9 + 128] <= test266151307()
    require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
    _103 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96]
    if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96] > test266151307():
        revert with 0, 65
    _105 = mem[64]
    if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96])) + 1
    mem[_105] = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 128] + 96]
    require _9 + _101 + _103 + 32 <= return_data.size
    mem[_105 + 32 len ceil32(_103)] = mem[ceil32(return_data.size) + _9 + _101 + 128 len ceil32(_103)]
    if ceil32(_103) <= _103:
        mem[(2 * ceil32(return_data.size)) + 128] = _105
        _188 = mem[ceil32(return_data.size) + _9 + 160]
        require mem[ceil32(return_data.size) + _9 + 160] <= test266151307()
        require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 127 < ceil32(return_data.size) + return_data.size + 96
        _192 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
        if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96] > test266151307():
            revert with 0, 65
        _196 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1
        mem[_196] = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
        require _9 + _188 + (32 * _192) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _9 + _188 + 128
        t = _196 + 32
        while idx < _192:
            _264 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _9 + _188 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _272 = mem[ceil32(return_data.size) + _9 + _188 + mem[s] + 128]
            if mem[ceil32(return_data.size) + _9 + _188 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _293 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _188 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _188 + mem[s] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _188 + mem[s] + 128])) + 1
            mem[_293] = _272
            require _9 + _188 + _264 + _272 + 64 <= return_data.size
            u = 0
            while u < _272:
                mem[u + _293 + 32] = mem[u + ceil32(return_data.size) + _9 + _188 + _264 + 160]
                u = u + 32
                continue 
            if ceil32(_272) > _272:
                mem[_272 + _293 + 32] = 0
            mem[t] = _293
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 160] = _196
        require mem[ceil32(return_data.size) + _9 + 192] == mem[ceil32(return_data.size) + _9 + 204 len 20]
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + _9 + 192]
        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _9 + 224]
        mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _9 + 256]
        mem[0] = arg1
        mem[32] = 8
        if sub_aa9f3eca[arg1].field_0 >= mem[_196]:
            revert with 0, 50
        _300 = mem[(32 * sub_aa9f3eca[arg1].field_0) + _196 + 32]
        mem[mem[64]] = 32
        _308 = mem[_300]
        mem[mem[64] + 32] = mem[_300]
        mem[mem[64] + 64 len ceil32(_308)] = mem[_300 + 32 len ceil32(_308)]
        if ceil32(_308) > _308:
            mem[_308 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_308) + 32]
    mem[_103 + _105 + 32] = 0
    mem[(2 * ceil32(return_data.size)) + 128] = _105
    _189 = mem[ceil32(return_data.size) + _9 + 160]
    require mem[ceil32(return_data.size) + _9 + 160] <= test266151307()
    require ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 127 < ceil32(return_data.size) + return_data.size + 96
    _193 = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
    if mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96] > test266151307():
        revert with 0, 65
    _197 = mem[64]
    if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]) + 1
    mem[_197] = mem[ceil32(return_data.size) + _9 + mem[ceil32(return_data.size) + _9 + 160] + 96]
    require _9 + _189 + (32 * _193) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _9 + _189 + 128
    t = _197 + 32
    while idx < _193:
        _265 = mem[s]
        require mem[s] <= test266151307()
        require ceil32(return_data.size) + _9 + _189 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
        _273 = mem[ceil32(return_data.size) + _9 + _189 + mem[s] + 128]
        if mem[ceil32(return_data.size) + _9 + _189 + mem[s] + 128] > test266151307():
            revert with 0, 65
        _297 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _189 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _189 + mem[s] + 128])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _189 + mem[s] + 128])) + 1
        mem[_297] = _273
        require _9 + _189 + _265 + _273 + 64 <= return_data.size
        u = 0
        while u < _273:
            mem[u + _297 + 32] = mem[u + ceil32(return_data.size) + _9 + _189 + _265 + 160]
            u = u + 32
            continue 
        if ceil32(_273) > _273:
            mem[_273 + _297 + 32] = 0
        mem[t] = _297
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 160] = _197
    require mem[ceil32(return_data.size) + _9 + 192] == mem[ceil32(return_data.size) + _9 + 204 len 20]
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + _9 + 192]
    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _9 + 224]
    mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _9 + 256]
    mem[0] = arg1
    mem[32] = 8
    if sub_aa9f3eca[arg1].field_0 >= mem[_197]:
        revert with 0, 50
    _301 = mem[(32 * sub_aa9f3eca[arg1].field_0) + _197 + 32]
    _305 = mem[64]
    mem[mem[64]] = 32
    _309 = mem[_301]
    mem[mem[64] + 32] = mem[_301]
    mem[mem[64] + 64 len ceil32(_309)] = mem[_301 + 32 len ceil32(_309)]
    if ceil32(_309) <= _309:
        return 32, mem[mem[64] + 32 len ceil32(_309) + 32]
    mem[_309 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_309) + _305 + -mem[64] + 64
}

function sub_2813d19d(?) {
    require calldata.size - 4 >= 32
    if stor10[arg1].field_512:
        if stor10[arg1].field_512 == uint255(stor10[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if stor10[arg1].field_512:
            if stor10[arg1].field_512 == uint255(stor10[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10[arg1].field_512):
                if 31 >= uint255(stor10[arg1].field_512) * 0.5:
                    mem[128] = 256 * stor10[arg1].field_520
                else:
                    mem[128] = stor10[arg1][2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor10[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor10[arg1].field_512 == stor10[arg1].field_513 < 32:
                revert with 0, 34
            if stor10[arg1].field_513:
                if 31 >= stor10[arg1].field_513:
                    mem[128] = 256 * stor10[arg1].field_520
                else:
                    mem[128] = stor10[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor10[arg1].field_768:
            if stor10[arg1].field_768 == uint255(stor10[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if stor10[arg1].field_768:
                if stor10[arg1].field_768 == uint255(stor10[arg1].field_768) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor10[arg1].field_768):
                    if ceil32(uint255(stor10[arg1].field_512) * 0.5) > uint255(stor10[arg1].field_512) * 0.5:
                        mem[(uint255(stor10[arg1].field_512) * 0.5) + ceil32(uint255(stor10[arg1].field_512) * 0.5) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = uint255(stor10[arg1].field_768) * 0.5
                    mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416 len ceil32(uint255(stor10[arg1].field_768) * 0.5)] = mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160 len ceil32(uint255(stor10[arg1].field_768) * 0.5)]
                    if ceil32(uint255(stor10[arg1].field_768) * 0.5) > uint255(stor10[arg1].field_768) * 0.5:
                        mem[(uint255(stor10[arg1].field_768) * 0.5) + (2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416] = 0
                else:
                    if 31 >= uint255(stor10[arg1].field_768) * 0.5:
                        mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160] = 256 * stor10[arg1].field_776
                    else:
                        mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160] = stor10[arg1][3].field_0
                        idx = ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor10[arg1].field_512) * 0.5) + (uint255(stor10[arg1].field_768) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor10[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor10[arg1].field_512) * 0.5) > uint255(stor10[arg1].field_512) * 0.5:
                        mem[(uint255(stor10[arg1].field_512) * 0.5) + ceil32(uint255(stor10[arg1].field_512) * 0.5) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = uint255(stor10[arg1].field_768) * 0.5
                    mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416 len ceil32(uint255(stor10[arg1].field_768) * 0.5)] = mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160 len ceil32(uint255(stor10[arg1].field_768) * 0.5)]
                    if ceil32(uint255(stor10[arg1].field_768) * 0.5) > uint255(stor10[arg1].field_768) * 0.5:
                        mem[(uint255(stor10[arg1].field_768) * 0.5) + (2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416] = 0
            else:
                if stor10[arg1].field_768 == stor10[arg1].field_769 < 32:
                    revert with 0, 34
                if not stor10[arg1].field_769:
                    if ceil32(uint255(stor10[arg1].field_512) * 0.5) > uint255(stor10[arg1].field_512) * 0.5:
                        mem[(uint255(stor10[arg1].field_512) * 0.5) + ceil32(uint255(stor10[arg1].field_512) * 0.5) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = uint255(stor10[arg1].field_768) * 0.5
                    mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416 len ceil32(uint255(stor10[arg1].field_768) * 0.5)] = mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160 len ceil32(uint255(stor10[arg1].field_768) * 0.5)]
                    if ceil32(uint255(stor10[arg1].field_768) * 0.5) > uint255(stor10[arg1].field_768) * 0.5:
                        mem[(uint255(stor10[arg1].field_768) * 0.5) + (2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416] = 0
                else:
                    if 31 >= stor10[arg1].field_769:
                        mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160] = 256 * stor10[arg1].field_776
                    else:
                        mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160] = stor10[arg1][3].field_0
                        idx = ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor10[arg1].field_512) * 0.5) + stor10[arg1].field_769 + 128 > idx:
                            mem[idx + 32] = stor10[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor10[arg1].field_512) * 0.5) > uint255(stor10[arg1].field_512) * 0.5:
                        mem[(uint255(stor10[arg1].field_512) * 0.5) + ceil32(uint255(stor10[arg1].field_512) * 0.5) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = uint255(stor10[arg1].field_768) * 0.5
                    mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416 len ceil32(uint255(stor10[arg1].field_768) * 0.5)] = mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160 len ceil32(uint255(stor10[arg1].field_768) * 0.5)]
                    if ceil32(uint255(stor10[arg1].field_768) * 0.5) > uint255(stor10[arg1].field_768) * 0.5:
                        mem[(uint255(stor10[arg1].field_768) * 0.5) + (2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416] = 0
            return stor10[arg1].field_0, 
                   stor10[arg1].field_256,
                   Array(len=2 * Mask(256, -1, stor10[arg1].field_512), data=mem[128 len ceil32(uint255(stor10[arg1].field_512) * 0.5)], 2 * Mask(256, -1, stor10[arg1].field_768), mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160 len ceil32(uint255(stor10[arg1].field_768) * 0.5)]),
                   ceil32(uint255(stor10[arg1].field_512) * 0.5) + 224,
                   stor10[arg1].field_1024,
                   stor10[arg1].field_1280
        if stor10[arg1].field_768 == stor10[arg1].field_769 < 32:
            revert with 0, 34
        if stor10[arg1].field_768:
            if stor10[arg1].field_768 == uint255(stor10[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10[arg1].field_768):
                if ceil32(uint255(stor10[arg1].field_512) * 0.5) > uint255(stor10[arg1].field_512) * 0.5:
                    mem[(uint255(stor10[arg1].field_512) * 0.5) + ceil32(uint255(stor10[arg1].field_512) * 0.5) + ceil32(stor10[arg1].field_769) + 384] = 0
                mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(stor10[arg1].field_769) + 384] = stor10[arg1].field_769
                mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(stor10[arg1].field_769) + 416 len ceil32(stor10[arg1].field_769)] = mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160 len ceil32(stor10[arg1].field_769)]
                if ceil32(stor10[arg1].field_769) > stor10[arg1].field_769:
                    mem[stor10[arg1].field_769 + (2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(stor10[arg1].field_769) + 416] = 0
            else:
                if 31 >= uint255(stor10[arg1].field_768) * 0.5:
                    mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160] = 256 * stor10[arg1].field_776
                else:
                    mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160] = stor10[arg1][3].field_0
                    idx = ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor10[arg1].field_512) * 0.5) + (uint255(stor10[arg1].field_768) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor10[arg1].field_512) * 0.5) > uint255(stor10[arg1].field_512) * 0.5:
                    mem[(uint255(stor10[arg1].field_512) * 0.5) + ceil32(uint255(stor10[arg1].field_512) * 0.5) + ceil32(stor10[arg1].field_769) + 384] = 0
                mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(stor10[arg1].field_769) + 384] = stor10[arg1].field_769
                mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(stor10[arg1].field_769) + 416 len ceil32(stor10[arg1].field_769)] = mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160 len ceil32(stor10[arg1].field_769)]
                if ceil32(stor10[arg1].field_769) > stor10[arg1].field_769:
                    mem[stor10[arg1].field_769 + (2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(stor10[arg1].field_769) + 416] = 0
        else:
            if stor10[arg1].field_768 == stor10[arg1].field_769 < 32:
                revert with 0, 34
            if not stor10[arg1].field_769:
                if ceil32(uint255(stor10[arg1].field_512) * 0.5) > uint255(stor10[arg1].field_512) * 0.5:
                    mem[(uint255(stor10[arg1].field_512) * 0.5) + ceil32(uint255(stor10[arg1].field_512) * 0.5) + ceil32(stor10[arg1].field_769) + 384] = 0
                mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(stor10[arg1].field_769) + 384] = stor10[arg1].field_769
                mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(stor10[arg1].field_769) + 416 len ceil32(stor10[arg1].field_769)] = mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160 len ceil32(stor10[arg1].field_769)]
                if ceil32(stor10[arg1].field_769) > stor10[arg1].field_769:
                    mem[stor10[arg1].field_769 + (2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(stor10[arg1].field_769) + 416] = 0
            else:
                if 31 >= stor10[arg1].field_769:
                    mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160] = 256 * stor10[arg1].field_776
                else:
                    mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160] = stor10[arg1][3].field_0
                    idx = ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor10[arg1].field_512) * 0.5) + stor10[arg1].field_769 + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor10[arg1].field_512) * 0.5) > uint255(stor10[arg1].field_512) * 0.5:
                    mem[(uint255(stor10[arg1].field_512) * 0.5) + ceil32(uint255(stor10[arg1].field_512) * 0.5) + ceil32(stor10[arg1].field_769) + 384] = 0
                mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(stor10[arg1].field_769) + 384] = stor10[arg1].field_769
                mem[(2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(stor10[arg1].field_769) + 416 len ceil32(stor10[arg1].field_769)] = mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160 len ceil32(stor10[arg1].field_769)]
                if ceil32(stor10[arg1].field_769) > stor10[arg1].field_769:
                    mem[stor10[arg1].field_769 + (2 * ceil32(uint255(stor10[arg1].field_512) * 0.5)) + ceil32(stor10[arg1].field_769) + 416] = 0
        return stor10[arg1].field_0, 
               stor10[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor10[arg1].field_512), data=mem[128 len ceil32(uint255(stor10[arg1].field_512) * 0.5)], stor10[arg1].field_768, mem[ceil32(uint255(stor10[arg1].field_512) * 0.5) + 160 len ceil32(stor10[arg1].field_769)]),
               ceil32(uint255(stor10[arg1].field_512) * 0.5) + 224,
               stor10[arg1].field_1024,
               stor10[arg1].field_1280
    if stor10[arg1].field_512 == stor10[arg1].field_513 < 32:
        revert with 0, 34
    if stor10[arg1].field_512:
        if stor10[arg1].field_512 == uint255(stor10[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10[arg1].field_512):
            if 31 >= uint255(stor10[arg1].field_512) * 0.5:
                mem[128] = 256 * stor10[arg1].field_520
            else:
                mem[128] = stor10[arg1][2].field_0
                idx = 128
                s = 0
                while (uint255(stor10[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[arg1].field_512 == stor10[arg1].field_513 < 32:
            revert with 0, 34
        if stor10[arg1].field_513:
            if 31 >= stor10[arg1].field_513:
                mem[128] = 256 * stor10[arg1].field_520
            else:
                mem[128] = stor10[arg1][2].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor10[arg1].field_768:
        if stor10[arg1].field_768 == uint255(stor10[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor10[arg1].field_768:
            if stor10[arg1].field_768 == uint255(stor10[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10[arg1].field_768):
                if ceil32(stor10[arg1].field_513) > stor10[arg1].field_513:
                    mem[stor10[arg1].field_513 + ceil32(stor10[arg1].field_513) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = 0
                mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = uint255(stor10[arg1].field_768) * 0.5
                mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416 len ceil32(uint255(stor10[arg1].field_768) * 0.5)] = mem[ceil32(stor10[arg1].field_513) + 160 len ceil32(uint255(stor10[arg1].field_768) * 0.5)]
                if ceil32(uint255(stor10[arg1].field_768) * 0.5) > uint255(stor10[arg1].field_768) * 0.5:
                    mem[(uint255(stor10[arg1].field_768) * 0.5) + (2 * ceil32(stor10[arg1].field_513)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416] = 0
            else:
                if 31 >= uint255(stor10[arg1].field_768) * 0.5:
                    mem[ceil32(stor10[arg1].field_513) + 160] = 256 * stor10[arg1].field_776
                else:
                    mem[ceil32(stor10[arg1].field_513) + 160] = stor10[arg1][3].field_0
                    idx = ceil32(stor10[arg1].field_513) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_513) + (uint255(stor10[arg1].field_768) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor10[arg1].field_513) > stor10[arg1].field_513:
                    mem[stor10[arg1].field_513 + ceil32(stor10[arg1].field_513) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = 0
                mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = uint255(stor10[arg1].field_768) * 0.5
                mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416 len ceil32(uint255(stor10[arg1].field_768) * 0.5)] = mem[ceil32(stor10[arg1].field_513) + 160 len ceil32(uint255(stor10[arg1].field_768) * 0.5)]
                if ceil32(uint255(stor10[arg1].field_768) * 0.5) > uint255(stor10[arg1].field_768) * 0.5:
                    mem[(uint255(stor10[arg1].field_768) * 0.5) + (2 * ceil32(stor10[arg1].field_513)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416] = 0
        else:
            if stor10[arg1].field_768 == stor10[arg1].field_769 < 32:
                revert with 0, 34
            if not stor10[arg1].field_769:
                if ceil32(stor10[arg1].field_513) > stor10[arg1].field_513:
                    mem[stor10[arg1].field_513 + ceil32(stor10[arg1].field_513) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = 0
                mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = uint255(stor10[arg1].field_768) * 0.5
                mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416 len ceil32(uint255(stor10[arg1].field_768) * 0.5)] = mem[ceil32(stor10[arg1].field_513) + 160 len ceil32(uint255(stor10[arg1].field_768) * 0.5)]
                if ceil32(uint255(stor10[arg1].field_768) * 0.5) > uint255(stor10[arg1].field_768) * 0.5:
                    mem[(uint255(stor10[arg1].field_768) * 0.5) + (2 * ceil32(stor10[arg1].field_513)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416] = 0
            else:
                if 31 >= stor10[arg1].field_769:
                    mem[ceil32(stor10[arg1].field_513) + 160] = 256 * stor10[arg1].field_776
                else:
                    mem[ceil32(stor10[arg1].field_513) + 160] = stor10[arg1][3].field_0
                    idx = ceil32(stor10[arg1].field_513) + 160
                    s = 0
                    while ceil32(stor10[arg1].field_513) + stor10[arg1].field_769 + 128 > idx:
                        mem[idx + 32] = stor10[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor10[arg1].field_513) > stor10[arg1].field_513:
                    mem[stor10[arg1].field_513 + ceil32(stor10[arg1].field_513) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = 0
                mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 384] = uint255(stor10[arg1].field_768) * 0.5
                mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416 len ceil32(uint255(stor10[arg1].field_768) * 0.5)] = mem[ceil32(stor10[arg1].field_513) + 160 len ceil32(uint255(stor10[arg1].field_768) * 0.5)]
                if ceil32(uint255(stor10[arg1].field_768) * 0.5) > uint255(stor10[arg1].field_768) * 0.5:
                    mem[(uint255(stor10[arg1].field_768) * 0.5) + (2 * ceil32(stor10[arg1].field_513)) + ceil32(uint255(stor10[arg1].field_768) * 0.5) + 416] = 0
        return stor10[arg1].field_0, 
               stor10[arg1].field_256,
               Array(len=stor10[arg1].field_512, data=mem[128 len ceil32(stor10[arg1].field_513)], 2 * Mask(256, -1, stor10[arg1].field_768), mem[ceil32(stor10[arg1].field_513) + 160 len ceil32(uint255(stor10[arg1].field_768) * 0.5)]),
               ceil32(stor10[arg1].field_513) + 224,
               stor10[arg1].field_1024,
               stor10[arg1].field_1280
    if stor10[arg1].field_768 == stor10[arg1].field_769 < 32:
        revert with 0, 34
    if stor10[arg1].field_768:
        if stor10[arg1].field_768 == uint255(stor10[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor10[arg1].field_768):
            if ceil32(stor10[arg1].field_513) > stor10[arg1].field_513:
                mem[stor10[arg1].field_513 + ceil32(stor10[arg1].field_513) + ceil32(stor10[arg1].field_769) + 384] = 0
            mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(stor10[arg1].field_769) + 384] = stor10[arg1].field_769
            mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(stor10[arg1].field_769) + 416 len ceil32(stor10[arg1].field_769)] = mem[ceil32(stor10[arg1].field_513) + 160 len ceil32(stor10[arg1].field_769)]
            if ceil32(stor10[arg1].field_769) > stor10[arg1].field_769:
                mem[stor10[arg1].field_769 + (2 * ceil32(stor10[arg1].field_513)) + ceil32(stor10[arg1].field_769) + 416] = 0
        else:
            if 31 >= uint255(stor10[arg1].field_768) * 0.5:
                mem[ceil32(stor10[arg1].field_513) + 160] = 256 * stor10[arg1].field_776
            else:
                mem[ceil32(stor10[arg1].field_513) + 160] = stor10[arg1][3].field_0
                idx = ceil32(stor10[arg1].field_513) + 160
                s = 0
                while ceil32(stor10[arg1].field_513) + (uint255(stor10[arg1].field_768) * 0.5) + 128 > idx:
                    mem[idx + 32] = stor10[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor10[arg1].field_513) > stor10[arg1].field_513:
                mem[stor10[arg1].field_513 + ceil32(stor10[arg1].field_513) + ceil32(stor10[arg1].field_769) + 384] = 0
            mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(stor10[arg1].field_769) + 384] = stor10[arg1].field_769
            mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(stor10[arg1].field_769) + 416 len ceil32(stor10[arg1].field_769)] = mem[ceil32(stor10[arg1].field_513) + 160 len ceil32(stor10[arg1].field_769)]
            if ceil32(stor10[arg1].field_769) > stor10[arg1].field_769:
                mem[stor10[arg1].field_769 + (2 * ceil32(stor10[arg1].field_513)) + ceil32(stor10[arg1].field_769) + 416] = 0
    else:
        if stor10[arg1].field_768 == stor10[arg1].field_769 < 32:
            revert with 0, 34
        if not stor10[arg1].field_769:
            if ceil32(stor10[arg1].field_513) > stor10[arg1].field_513:
                mem[stor10[arg1].field_513 + ceil32(stor10[arg1].field_513) + ceil32(stor10[arg1].field_769) + 384] = 0
            mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(stor10[arg1].field_769) + 384] = stor10[arg1].field_769
            mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(stor10[arg1].field_769) + 416 len ceil32(stor10[arg1].field_769)] = mem[ceil32(stor10[arg1].field_513) + 160 len ceil32(stor10[arg1].field_769)]
            if ceil32(stor10[arg1].field_769) > stor10[arg1].field_769:
                mem[stor10[arg1].field_769 + (2 * ceil32(stor10[arg1].field_513)) + ceil32(stor10[arg1].field_769) + 416] = 0
        else:
            if 31 >= stor10[arg1].field_769:
                mem[ceil32(stor10[arg1].field_513) + 160] = 256 * stor10[arg1].field_776
            else:
                mem[ceil32(stor10[arg1].field_513) + 160] = stor10[arg1][3].field_0
                idx = ceil32(stor10[arg1].field_513) + 160
                s = 0
                while ceil32(stor10[arg1].field_513) + stor10[arg1].field_769 + 128 > idx:
                    mem[idx + 32] = stor10[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor10[arg1].field_513) > stor10[arg1].field_513:
                mem[stor10[arg1].field_513 + ceil32(stor10[arg1].field_513) + ceil32(stor10[arg1].field_769) + 384] = 0
            mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(stor10[arg1].field_769) + 384] = stor10[arg1].field_769
            mem[(2 * ceil32(stor10[arg1].field_513)) + ceil32(stor10[arg1].field_769) + 416 len ceil32(stor10[arg1].field_769)] = mem[ceil32(stor10[arg1].field_513) + 160 len ceil32(stor10[arg1].field_769)]
            if ceil32(stor10[arg1].field_769) > stor10[arg1].field_769:
                mem[stor10[arg1].field_769 + (2 * ceil32(stor10[arg1].field_513)) + ceil32(stor10[arg1].field_769) + 416] = 0
    return stor10[arg1].field_0, 
           stor10[arg1].field_256,
           Array(len=stor10[arg1].field_512, data=mem[128 len ceil32(stor10[arg1].field_513)], stor10[arg1].field_768, mem[ceil32(stor10[arg1].field_513) + 160 len ceil32(stor10[arg1].field_769)]),
           ceil32(stor10[arg1].field_513) + 224,
           stor10[arg1].field_1024,
           stor10[arg1].field_1280
}

function sub_9c48ac7a(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 4).length)) + 97 < 96 or ceil32(ceil32(('cd', 4).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 36).length)) + 98 < 97 or ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(('cd', 4).length)) + 97] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[ceil32(ceil32(('cd', 4).length)) + 129 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[ceil32(ceil32(('cd', 4).length)) + ('cd', 36).length + 129] = 0
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + ceil32(32 * ('cd', 68).length) + 99
    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
    while idx < ('cd', 68).length:
        require cd[s] <= test266151307()
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _2856 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1
        mem[_2856] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_2856 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_2856 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _2856
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    _2857 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 100).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 100).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 100).length) + 1
    mem[_2857] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = _2857 + 32
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == address(cd[132])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    _5708 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 164).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 164).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 164).length) + 1
    mem[_5708] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = _5708 + 32
    while idx < ('cd', 164).length:
        require cd[s] <= test266151307()
        require cd[164] + cd[s] + 67 < calldata.size
        if cd[(cd[164] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _8558 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[164] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[164] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[164] + cd[s] + 36)])) + 1
        mem[_8558] = cd[(cd[164] + cd[s] + 36)]
        require cd[164] + cd[s] + cd[(cd[164] + cd[s] + 36)] + 68 <= calldata.size
        mem[_8558 + 32 len cd[(cd[164] + cd[s] + 36)]] = call.data[cd[164] + cd[s] + 68 len cd[(cd[164] + cd[s] + 36)]]
        mem[_8558 + cd[(cd[164] + cd[s] + 36)] + 32] = 0
        mem[t] = _8558
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] == address(cd[196])
    require cd[228] <= test266151307()
    require cd[228] + 35 < calldata.size
    if ('cd', 228).length > test266151307():
        revert with 0, 65
    _8559 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 228).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 228).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 228).length) + 1
    mem[_8559] = ('cd', 228).length
    require cd[228] + (32 * ('cd', 228).length) + 36 <= calldata.size
    idx = 0
    s = cd[228] + 36
    t = _8559 + 32
    while idx < ('cd', 228).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require not bool(('cd', 228).length)
    if msg.sender == owner:
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0x975057e7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11416 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _11419 = mem[_11416]
        require mem[_11416] == mem[_11416 + 12 len 20]
        if 0 >= mem[_2857]:
            revert with 0, 50
        _11422 = mem[_2857 + 32]
        if 1 >= mem[_2857]:
            revert with 0, 50
        _11425 = mem[_2857 + 64]
        _11426 = mem[64]
        mem[mem[64]] = 0xc7a8405d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = 192
        _11431 = mem[96]
        mem[mem[64] + 196] = mem[96]
        mem[mem[64] + 228 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            mem[mem[64] + 68] = ceil32(mem[96]) + 224
            _14257 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
            mem[ceil32(mem[96]) + mem[64] + 228] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
            mem[ceil32(mem[96]) + mem[64] + 260 len ceil32(_14257)] = mem[ceil32(ceil32(('cd', 4).length)) + 129 len ceil32(_14257)]
            if ceil32(_14257) <= _14257:
                mem[mem[64] + 100] = ceil32(_14257) + ceil32(mem[96]) + 256
                _17071 = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                mem[ceil32(_14257) + ceil32(mem[96]) + mem[64] + 260] = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                idx = 0
                s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
                t = ceil32(_14257) + ceil32(mem[96]) + mem[64] + (32 * _17071) + 292
                u = ceil32(_14257) + ceil32(mem[96]) + mem[64] + 292
                while idx < _17071:
                    mem[u] = t + -ceil32(_14257) + -ceil32(_11431) + -_11426 - 292
                    _19867 = mem[s]
                    _19880 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _19880:
                        mem[v + t + 32] = mem[v + _19867 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_19880) > _19880:
                        mem[_19880 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_19880) + t + 32
                    u = u + 32
                    continue 
                mem[_11426 + 132] = _11422
                mem[_11426 + 164] = _11425
                require ext_code.size(address(_11419))
                call address(_11419).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len t + -mem[64] - 4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19903 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _19927 = mem[_19903]
                assets.length++
                mem[0] = 6
                assets[assets.length].field_0 = _19927
                _22651 = mem[_8559]
                idx = 0
                s = 0
                while idx < _22651:
                    mem[0] = _19927
                    mem[32] = 11
                    _22666 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= mem[_8559]:
                        revert with 0, 50
                    mem[_22666] = mem[(32 * idx) + _8559 + 32]
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= mem[_8559]:
                        revert with 0, 50
                    mem[_22666 + 32] = mem[(32 * idx + 1) + _8559 + 32]
                    sub_f0503ac0[_19927].field_0++
                    mem[0] = sha3(_19927, 11)
                    sub_f0503ac0[_19927][sub_f0503ac0[_19927].field_0].field_0 = mem[_22666]
                    sub_f0503ac0[_19927][sub_f0503ac0[_19927].field_0].field_256 = mem[_22666 + 32]
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= mem[_8559]:
                        revert with 0, 50
                    if idx >= mem[_8559]:
                        revert with 0, 50
                    if mem[(32 * idx) + _8559 + 32] and mem[(32 * idx + 1) + _8559 + 32] > -1 / mem[(32 * idx) + _8559 + 32]:
                        revert with 0, 17
                    if s > !(mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32]):
                        revert with 0, 17
                    if idx > -3:
                        revert with 0, 17
                    _22651 = mem[_8559]
                    idx = idx + 2
                    s = s + (mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32])
                    continue 
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = vaultAddress
                mem[mem[64] + 68] = s * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1
                require ext_code.size(address(cd[196]))
                call address(cd[196]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, vaultAddress, s * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22747 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_22747] == bool(mem[_22747])
                _22831 = mem[64]
                mem[64] = mem[64] + 192
                mem[_22831] = msg.sender
                mem[_22831 + 32] = address(cd[132])
                if 0 >= mem[_5708]:
                    revert with 0, 50
                mem[_22831 + 64] = mem[_5708 + 32]
                if 1 >= mem[_5708]:
                    revert with 0, 50
                mem[_22831 + 96] = mem[_5708 + 64]
                mem[_22831 + 128] = address(cd[196])
                mem[_22831 + 160] = s * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1
                mem[0] = _19927
                mem[32] = 10
                stor10[_19927].field_0 = msg.sender
                stor10[_19927].field_256 = address(cd[132])
                _22919 = mem[_22831 + 64]
                _22920 = mem[mem[_22831 + 64]]
                if stor10[_19927].field_512:
                    if stor10[_19927].field_512 == uint255(stor10[_19927].field_512) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_19927, 10) + 2
                    if _22920:
                        stor10[_19927][2][].field_0 = Array(len=_22920, data=mem[_22919 + 32 len _22920])
                        _27859 = mem[_22831 + 96]
                        _27860 = mem[mem[_22831 + 96]]
                        if stor10[_19927].field_768:
                            if stor10[_19927].field_768 == uint255(stor10[_19927].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _27860:
                                stor10[_19927][3][].field_0 = Array(len=_27860, data=mem[_27859 + 32 len _27860])
                            else:
                                stor10[_19927].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19927].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19927][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19927].field_768 == stor10[_19927].field_769 < 32:
                                revert with 0, 34
                            if _27860:
                                stor10[_19927][3][].field_0 = Array(len=_27860, data=mem[_27859 + 32 len _27860])
                            else:
                                stor10[_19927].field_768 = 0
                                idx = 0
                                while stor10[_19927].field_769 + 31 / 32 > idx:
                                    stor10[_19927][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        stor10[_19927].field_512 = 0
                        idx = 0
                        while (uint255(stor10[_19927].field_512) * 0.5) + 31 / 32 > idx:
                            stor10[_19927][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                        _25403 = mem[_22831 + 96]
                        _25404 = mem[mem[_22831 + 96]]
                        if stor10[_19927].field_768:
                            if stor10[_19927].field_768 == uint255(stor10[_19927].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _25404:
                                stor10[_19927][3][].field_0 = Array(len=_25404, data=mem[_25403 + 32 len _25404])
                            else:
                                stor10[_19927].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19927].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19927][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19927].field_768 == stor10[_19927].field_769 < 32:
                                revert with 0, 34
                            if _25404:
                                stor10[_19927][3][].field_0 = Array(len=_25404, data=mem[_25403 + 32 len _25404])
                            else:
                                stor10[_19927].field_768 = 0
                                idx = 0
                                while stor10[_19927].field_769 + 31 / 32 > idx:
                                    stor10[_19927][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if stor10[_19927].field_512 == stor10[_19927].field_513 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_19927, 10) + 2
                    if _22920:
                        stor10[_19927][2][].field_0 = Array(len=_22920, data=mem[_22919 + 32 len _22920])
                        _27897 = mem[_22831 + 96]
                        _27898 = mem[mem[_22831 + 96]]
                        if stor10[_19927].field_768:
                            if stor10[_19927].field_768 == uint255(stor10[_19927].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _27898:
                                stor10[_19927][3][].field_0 = Array(len=_27898, data=mem[_27897 + 32 len _27898])
                            else:
                                stor10[_19927].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19927].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19927][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19927].field_768 == stor10[_19927].field_769 < 32:
                                revert with 0, 34
                            if _27898:
                                stor10[_19927][3][].field_0 = Array(len=_27898, data=mem[_27897 + 32 len _27898])
                            else:
                                stor10[_19927].field_768 = 0
                                idx = 0
                                while stor10[_19927].field_769 + 31 / 32 > idx:
                                    stor10[_19927][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        stor10[_19927].field_512 = 0
                        idx = 0
                        while stor10[_19927].field_513 + 31 / 32 > idx:
                            stor10[_19927][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                        _25409 = mem[_22831 + 96]
                        _25410 = mem[mem[_22831 + 96]]
                        if stor10[_19927].field_768:
                            if stor10[_19927].field_768 == uint255(stor10[_19927].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _25410:
                                stor10[_19927][3][].field_0 = Array(len=_25410, data=mem[_25409 + 32 len _25410])
                            else:
                                stor10[_19927].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19927].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19927][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19927].field_768 == stor10[_19927].field_769 < 32:
                                revert with 0, 34
                            if _25410:
                                stor10[_19927][3][].field_0 = Array(len=_25410, data=mem[_25409 + 32 len _25410])
                            else:
                                stor10[_19927].field_768 = 0
                                idx = 0
                                while stor10[_19927].field_769 + 31 / 32 > idx:
                                    stor10[_19927][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                stor10[_19927].field_1024 = address(cd[196])
                stor10[_19927].field_1280 = s * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1 * uint255(_22651 + 1) >> 1
            else:
                mem[_14257 + ceil32(mem[96]) + mem[64] + 260] = 0
                mem[mem[64] + 100] = ceil32(_14257) + ceil32(mem[96]) + 256
                _17072 = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                mem[ceil32(_14257) + ceil32(mem[96]) + mem[64] + 260] = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                idx = 0
                s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
                t = ceil32(_14257) + ceil32(mem[96]) + mem[64] + (32 * _17072) + 292
                u = ceil32(_14257) + ceil32(mem[96]) + mem[64] + 292
                while idx < _17072:
                    mem[u] = t + -ceil32(_14257) + -ceil32(_11431) + -_11426 - 292
                    _19868 = mem[s]
                    _19882 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _19882:
                        mem[v + t + 32] = mem[v + _19868 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_19882) > _19882:
                        mem[_19882 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_19882) + t + 32
                    u = u + 32
                    continue 
                mem[_11426 + 132] = _11422
                mem[_11426 + 164] = _11425
                require ext_code.size(address(_11419))
                call address(_11419).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len t + -mem[64] - 4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19904 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _19928 = mem[_19904]
                assets.length++
                mem[0] = 6
                assets[assets.length].field_0 = _19928
                _22652 = mem[_8559]
                idx = 0
                s = 0
                while idx < _22652:
                    mem[0] = _19928
                    mem[32] = 11
                    _22672 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= mem[_8559]:
                        revert with 0, 50
                    mem[_22672] = mem[(32 * idx) + _8559 + 32]
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= mem[_8559]:
                        revert with 0, 50
                    mem[_22672 + 32] = mem[(32 * idx + 1) + _8559 + 32]
                    sub_f0503ac0[_19928].field_0++
                    mem[0] = sha3(_19928, 11)
                    sub_f0503ac0[_19928][sub_f0503ac0[_19928].field_0].field_0 = mem[_22672]
                    sub_f0503ac0[_19928][sub_f0503ac0[_19928].field_0].field_256 = mem[_22672 + 32]
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= mem[_8559]:
                        revert with 0, 50
                    if idx >= mem[_8559]:
                        revert with 0, 50
                    if mem[(32 * idx) + _8559 + 32] and mem[(32 * idx + 1) + _8559 + 32] > -1 / mem[(32 * idx) + _8559 + 32]:
                        revert with 0, 17
                    if s > !(mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32]):
                        revert with 0, 17
                    if idx > -3:
                        revert with 0, 17
                    _22652 = mem[_8559]
                    idx = idx + 2
                    s = s + (mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32])
                    continue 
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = vaultAddress
                mem[mem[64] + 68] = s * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1
                require ext_code.size(address(cd[196]))
                call address(cd[196]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, vaultAddress, s * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22748 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_22748] == bool(mem[_22748])
                _22834 = mem[64]
                mem[64] = mem[64] + 192
                mem[_22834] = msg.sender
                mem[_22834 + 32] = address(cd[132])
                if 0 >= mem[_5708]:
                    revert with 0, 50
                mem[_22834 + 64] = mem[_5708 + 32]
                if 1 >= mem[_5708]:
                    revert with 0, 50
                mem[_22834 + 96] = mem[_5708 + 64]
                mem[_22834 + 128] = address(cd[196])
                mem[_22834 + 160] = s * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1
                mem[0] = _19928
                mem[32] = 10
                stor10[_19928].field_0 = msg.sender
                stor10[_19928].field_256 = address(cd[132])
                _22926 = mem[_22834 + 64]
                _22927 = mem[mem[_22834 + 64]]
                if stor10[_19928].field_512:
                    if stor10[_19928].field_512 == uint255(stor10[_19928].field_512) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_19928, 10) + 2
                    if _22927:
                        stor10[_19928][2][].field_0 = Array(len=_22927, data=mem[_22926 + 32 len _22927])
                        _27935 = mem[_22834 + 96]
                        _27936 = mem[mem[_22834 + 96]]
                        if stor10[_19928].field_768:
                            if stor10[_19928].field_768 == uint255(stor10[_19928].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _27936:
                                stor10[_19928][3][].field_0 = Array(len=_27936, data=mem[_27935 + 32 len _27936])
                            else:
                                stor10[_19928].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19928].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19928][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19928].field_768 == stor10[_19928].field_769 < 32:
                                revert with 0, 34
                            if _27936:
                                stor10[_19928][3][].field_0 = Array(len=_27936, data=mem[_27935 + 32 len _27936])
                            else:
                                stor10[_19928].field_768 = 0
                                idx = 0
                                while stor10[_19928].field_769 + 31 / 32 > idx:
                                    stor10[_19928][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        stor10[_19928].field_512 = 0
                        idx = 0
                        while (uint255(stor10[_19928].field_512) * 0.5) + 31 / 32 > idx:
                            stor10[_19928][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                        _25415 = mem[_22834 + 96]
                        _25416 = mem[mem[_22834 + 96]]
                        if stor10[_19928].field_768:
                            if stor10[_19928].field_768 == uint255(stor10[_19928].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _25416:
                                stor10[_19928][3][].field_0 = Array(len=_25416, data=mem[_25415 + 32 len _25416])
                            else:
                                stor10[_19928].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19928].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19928][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19928].field_768 == stor10[_19928].field_769 < 32:
                                revert with 0, 34
                            if _25416:
                                stor10[_19928][3][].field_0 = Array(len=_25416, data=mem[_25415 + 32 len _25416])
                            else:
                                stor10[_19928].field_768 = 0
                                idx = 0
                                while stor10[_19928].field_769 + 31 / 32 > idx:
                                    stor10[_19928][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if stor10[_19928].field_512 == stor10[_19928].field_513 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_19928, 10) + 2
                    if _22927:
                        stor10[_19928][2][].field_0 = Array(len=_22927, data=mem[_22926 + 32 len _22927])
                        _27973 = mem[_22834 + 96]
                        _27974 = mem[mem[_22834 + 96]]
                        if stor10[_19928].field_768:
                            if stor10[_19928].field_768 == uint255(stor10[_19928].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _27974:
                                stor10[_19928][3][].field_0 = Array(len=_27974, data=mem[_27973 + 32 len _27974])
                            else:
                                stor10[_19928].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19928].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19928][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19928].field_768 == stor10[_19928].field_769 < 32:
                                revert with 0, 34
                            if _27974:
                                stor10[_19928][3][].field_0 = Array(len=_27974, data=mem[_27973 + 32 len _27974])
                            else:
                                stor10[_19928].field_768 = 0
                                idx = 0
                                while stor10[_19928].field_769 + 31 / 32 > idx:
                                    stor10[_19928][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        stor10[_19928].field_512 = 0
                        idx = 0
                        while stor10[_19928].field_513 + 31 / 32 > idx:
                            stor10[_19928][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                        _25421 = mem[_22834 + 96]
                        _25422 = mem[mem[_22834 + 96]]
                        if stor10[_19928].field_768:
                            if stor10[_19928].field_768 == uint255(stor10[_19928].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _25422:
                                stor10[_19928][3][].field_0 = Array(len=_25422, data=mem[_25421 + 32 len _25422])
                            else:
                                stor10[_19928].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19928].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19928][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19928].field_768 == stor10[_19928].field_769 < 32:
                                revert with 0, 34
                            if _25422:
                                stor10[_19928][3][].field_0 = Array(len=_25422, data=mem[_25421 + 32 len _25422])
                            else:
                                stor10[_19928].field_768 = 0
                                idx = 0
                                while stor10[_19928].field_769 + 31 / 32 > idx:
                                    stor10[_19928][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                stor10[_19928].field_1024 = address(cd[196])
                stor10[_19928].field_1280 = s * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1 * uint255(_22652 + 1) >> 1
        else:
            mem[mem[96] + mem[64] + 228] = 0
            mem[mem[64] + 68] = ceil32(mem[96]) + 224
            _14258 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
            mem[ceil32(mem[96]) + mem[64] + 228] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
            mem[ceil32(mem[96]) + mem[64] + 260 len ceil32(_14258)] = mem[ceil32(ceil32(('cd', 4).length)) + 129 len ceil32(_14258)]
            if ceil32(_14258) <= _14258:
                mem[mem[64] + 100] = ceil32(_14258) + ceil32(mem[96]) + 256
                _17073 = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                mem[ceil32(_14258) + ceil32(mem[96]) + mem[64] + 260] = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                idx = 0
                s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
                t = ceil32(_14258) + ceil32(mem[96]) + mem[64] + (32 * _17073) + 292
                u = ceil32(_14258) + ceil32(mem[96]) + mem[64] + 292
                while idx < _17073:
                    mem[u] = t + -ceil32(_14258) + -ceil32(_11431) + -_11426 - 292
                    _19869 = mem[s]
                    _19884 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _19884:
                        mem[v + t + 32] = mem[v + _19869 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_19884) > _19884:
                        mem[_19884 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_19884) + t + 32
                    u = u + 32
                    continue 
                mem[_11426 + 132] = _11422
                mem[_11426 + 164] = _11425
                require ext_code.size(address(_11419))
                call address(_11419).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len t + -mem[64] - 4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19905 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _19929 = mem[_19905]
                assets.length++
                mem[0] = 6
                assets[assets.length].field_0 = _19929
                _22653 = mem[_8559]
                idx = 0
                s = 0
                while idx < _22653:
                    mem[0] = _19929
                    mem[32] = 11
                    _22678 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= mem[_8559]:
                        revert with 0, 50
                    mem[_22678] = mem[(32 * idx) + _8559 + 32]
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= mem[_8559]:
                        revert with 0, 50
                    mem[_22678 + 32] = mem[(32 * idx + 1) + _8559 + 32]
                    sub_f0503ac0[_19929].field_0++
                    mem[0] = sha3(_19929, 11)
                    sub_f0503ac0[_19929][sub_f0503ac0[_19929].field_0].field_0 = mem[_22678]
                    sub_f0503ac0[_19929][sub_f0503ac0[_19929].field_0].field_256 = mem[_22678 + 32]
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= mem[_8559]:
                        revert with 0, 50
                    if idx >= mem[_8559]:
                        revert with 0, 50
                    if mem[(32 * idx) + _8559 + 32] and mem[(32 * idx + 1) + _8559 + 32] > -1 / mem[(32 * idx) + _8559 + 32]:
                        revert with 0, 17
                    if s > !(mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32]):
                        revert with 0, 17
                    if idx > -3:
                        revert with 0, 17
                    _22653 = mem[_8559]
                    idx = idx + 2
                    s = s + (mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32])
                    continue 
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = vaultAddress
                mem[mem[64] + 68] = s * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1
                require ext_code.size(address(cd[196]))
                call address(cd[196]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, vaultAddress, s * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22749 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_22749] == bool(mem[_22749])
                _22837 = mem[64]
                mem[64] = mem[64] + 192
                mem[_22837] = msg.sender
                mem[_22837 + 32] = address(cd[132])
                if 0 >= mem[_5708]:
                    revert with 0, 50
                mem[_22837 + 64] = mem[_5708 + 32]
                if 1 >= mem[_5708]:
                    revert with 0, 50
                mem[_22837 + 96] = mem[_5708 + 64]
                mem[_22837 + 128] = address(cd[196])
                mem[_22837 + 160] = s * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1
                mem[0] = _19929
                mem[32] = 10
                stor10[_19929].field_0 = msg.sender
                stor10[_19929].field_256 = address(cd[132])
                _22933 = mem[_22837 + 64]
                _22934 = mem[mem[_22837 + 64]]
                if stor10[_19929].field_512:
                    if stor10[_19929].field_512 == uint255(stor10[_19929].field_512) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_19929, 10) + 2
                    if _22934:
                        stor10[_19929][2][].field_0 = Array(len=_22934, data=mem[_22933 + 32 len _22934])
                        _28011 = mem[_22837 + 96]
                        _28012 = mem[mem[_22837 + 96]]
                        if stor10[_19929].field_768:
                            if stor10[_19929].field_768 == uint255(stor10[_19929].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _28012:
                                stor10[_19929][3][].field_0 = Array(len=_28012, data=mem[_28011 + 32 len _28012])
                            else:
                                stor10[_19929].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19929].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19929][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19929].field_768 == stor10[_19929].field_769 < 32:
                                revert with 0, 34
                            if _28012:
                                stor10[_19929][3][].field_0 = Array(len=_28012, data=mem[_28011 + 32 len _28012])
                            else:
                                stor10[_19929].field_768 = 0
                                idx = 0
                                while stor10[_19929].field_769 + 31 / 32 > idx:
                                    stor10[_19929][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        stor10[_19929].field_512 = 0
                        idx = 0
                        while (uint255(stor10[_19929].field_512) * 0.5) + 31 / 32 > idx:
                            stor10[_19929][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                        _25427 = mem[_22837 + 96]
                        _25428 = mem[mem[_22837 + 96]]
                        if stor10[_19929].field_768:
                            if stor10[_19929].field_768 == uint255(stor10[_19929].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _25428:
                                stor10[_19929][3][].field_0 = Array(len=_25428, data=mem[_25427 + 32 len _25428])
                            else:
                                stor10[_19929].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19929].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19929][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19929].field_768 == stor10[_19929].field_769 < 32:
                                revert with 0, 34
                            if _25428:
                                stor10[_19929][3][].field_0 = Array(len=_25428, data=mem[_25427 + 32 len _25428])
                            else:
                                stor10[_19929].field_768 = 0
                                idx = 0
                                while stor10[_19929].field_769 + 31 / 32 > idx:
                                    stor10[_19929][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if stor10[_19929].field_512 == stor10[_19929].field_513 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_19929, 10) + 2
                    if _22934:
                        stor10[_19929][2][].field_0 = Array(len=_22934, data=mem[_22933 + 32 len _22934])
                        _28049 = mem[_22837 + 96]
                        _28050 = mem[mem[_22837 + 96]]
                        if stor10[_19929].field_768:
                            if stor10[_19929].field_768 == uint255(stor10[_19929].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _28050:
                                stor10[_19929][3][].field_0 = Array(len=_28050, data=mem[_28049 + 32 len _28050])
                            else:
                                stor10[_19929].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19929].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19929][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19929].field_768 == stor10[_19929].field_769 < 32:
                                revert with 0, 34
                            if _28050:
                                stor10[_19929][3][].field_0 = Array(len=_28050, data=mem[_28049 + 32 len _28050])
                            else:
                                stor10[_19929].field_768 = 0
                                idx = 0
                                while stor10[_19929].field_769 + 31 / 32 > idx:
                                    stor10[_19929][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        stor10[_19929].field_512 = 0
                        idx = 0
                        while stor10[_19929].field_513 + 31 / 32 > idx:
                            stor10[_19929][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                        _25433 = mem[_22837 + 96]
                        _25434 = mem[mem[_22837 + 96]]
                        if stor10[_19929].field_768:
                            if stor10[_19929].field_768 == uint255(stor10[_19929].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _25434:
                                stor10[_19929][3][].field_0 = Array(len=_25434, data=mem[_25433 + 32 len _25434])
                            else:
                                stor10[_19929].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19929].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19929][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19929].field_768 == stor10[_19929].field_769 < 32:
                                revert with 0, 34
                            if _25434:
                                stor10[_19929][3][].field_0 = Array(len=_25434, data=mem[_25433 + 32 len _25434])
                            else:
                                stor10[_19929].field_768 = 0
                                idx = 0
                                while stor10[_19929].field_769 + 31 / 32 > idx:
                                    stor10[_19929][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                stor10[_19929].field_1024 = address(cd[196])
                stor10[_19929].field_1280 = s * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1 * uint255(_22653 + 1) >> 1
            else:
                mem[_14258 + ceil32(mem[96]) + mem[64] + 260] = 0
                mem[mem[64] + 100] = ceil32(_14258) + ceil32(mem[96]) + 256
                _17074 = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                mem[ceil32(_14258) + ceil32(mem[96]) + mem[64] + 260] = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                idx = 0
                s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
                t = ceil32(_14258) + ceil32(mem[96]) + mem[64] + (32 * _17074) + 292
                u = ceil32(_14258) + ceil32(mem[96]) + mem[64] + 292
                while idx < _17074:
                    mem[u] = t + -ceil32(_14258) + -ceil32(_11431) + -_11426 - 292
                    _19870 = mem[s]
                    _19886 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _19886:
                        mem[v + t + 32] = mem[v + _19870 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_19886) > _19886:
                        mem[_19886 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_19886) + t + 32
                    u = u + 32
                    continue 
                mem[_11426 + 132] = _11422
                mem[_11426 + 164] = _11425
                require ext_code.size(address(_11419))
                call address(_11419).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len t + -mem[64] - 4]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19906 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _19930 = mem[_19906]
                assets.length++
                mem[0] = 6
                assets[assets.length].field_0 = _19930
                _22654 = mem[_8559]
                idx = 0
                s = 0
                while idx < _22654:
                    mem[0] = _19930
                    mem[32] = 11
                    _22684 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= mem[_8559]:
                        revert with 0, 50
                    mem[_22684] = mem[(32 * idx) + _8559 + 32]
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= mem[_8559]:
                        revert with 0, 50
                    mem[_22684 + 32] = mem[(32 * idx + 1) + _8559 + 32]
                    sub_f0503ac0[_19930].field_0++
                    mem[0] = sha3(_19930, 11)
                    sub_f0503ac0[_19930][sub_f0503ac0[_19930].field_0].field_0 = mem[_22684]
                    sub_f0503ac0[_19930][sub_f0503ac0[_19930].field_0].field_256 = mem[_22684 + 32]
                    if 1 > !idx:
                        revert with 0, 17
                    if idx + 1 >= mem[_8559]:
                        revert with 0, 50
                    if idx >= mem[_8559]:
                        revert with 0, 50
                    if mem[(32 * idx) + _8559 + 32] and mem[(32 * idx + 1) + _8559 + 32] > -1 / mem[(32 * idx) + _8559 + 32]:
                        revert with 0, 17
                    if s > !(mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32]):
                        revert with 0, 17
                    if idx > -3:
                        revert with 0, 17
                    _22654 = mem[_8559]
                    idx = idx + 2
                    s = s + (mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32])
                    continue 
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = vaultAddress
                mem[mem[64] + 68] = s * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1
                require ext_code.size(address(cd[196]))
                call address(cd[196]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, vaultAddress, s * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _22750 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_22750] == bool(mem[_22750])
                _22840 = mem[64]
                mem[64] = mem[64] + 192
                mem[_22840] = msg.sender
                mem[_22840 + 32] = address(cd[132])
                if 0 >= mem[_5708]:
                    revert with 0, 50
                mem[_22840 + 64] = mem[_5708 + 32]
                if 1 >= mem[_5708]:
                    revert with 0, 50
                mem[_22840 + 96] = mem[_5708 + 64]
                mem[_22840 + 128] = address(cd[196])
                mem[_22840 + 160] = s * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1
                mem[0] = _19930
                mem[32] = 10
                stor10[_19930].field_0 = msg.sender
                stor10[_19930].field_256 = address(cd[132])
                _22940 = mem[_22840 + 64]
                _22941 = mem[mem[_22840 + 64]]
                if stor10[_19930].field_512:
                    if stor10[_19930].field_512 == uint255(stor10[_19930].field_512) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_19930, 10) + 2
                    if _22941:
                        stor10[_19930][2][].field_0 = Array(len=_22941, data=mem[_22940 + 32 len _22941])
                        _28087 = mem[_22840 + 96]
                        _28088 = mem[mem[_22840 + 96]]
                        if stor10[_19930].field_768:
                            if stor10[_19930].field_768 == uint255(stor10[_19930].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _28088:
                                stor10[_19930][3][].field_0 = Array(len=_28088, data=mem[_28087 + 32 len _28088])
                            else:
                                stor10[_19930].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19930].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19930][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19930].field_768 == stor10[_19930].field_769 < 32:
                                revert with 0, 34
                            if _28088:
                                stor10[_19930][3][].field_0 = Array(len=_28088, data=mem[_28087 + 32 len _28088])
                            else:
                                stor10[_19930].field_768 = 0
                                idx = 0
                                while stor10[_19930].field_769 + 31 / 32 > idx:
                                    stor10[_19930][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        stor10[_19930].field_512 = 0
                        idx = 0
                        while (uint255(stor10[_19930].field_512) * 0.5) + 31 / 32 > idx:
                            stor10[_19930][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                        _25439 = mem[_22840 + 96]
                        _25440 = mem[mem[_22840 + 96]]
                        if stor10[_19930].field_768:
                            if stor10[_19930].field_768 == uint255(stor10[_19930].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _25440:
                                stor10[_19930][3][].field_0 = Array(len=_25440, data=mem[_25439 + 32 len _25440])
                            else:
                                stor10[_19930].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19930].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19930][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19930].field_768 == stor10[_19930].field_769 < 32:
                                revert with 0, 34
                            if _25440:
                                stor10[_19930][3][].field_0 = Array(len=_25440, data=mem[_25439 + 32 len _25440])
                            else:
                                stor10[_19930].field_768 = 0
                                idx = 0
                                while stor10[_19930].field_769 + 31 / 32 > idx:
                                    stor10[_19930][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    if stor10[_19930].field_512 == stor10[_19930].field_513 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_19930, 10) + 2
                    if _22941:
                        stor10[_19930][2][].field_0 = Array(len=_22941, data=mem[_22940 + 32 len _22941])
                        _28125 = mem[_22840 + 96]
                        _28126 = mem[mem[_22840 + 96]]
                        if stor10[_19930].field_768:
                            if stor10[_19930].field_768 == uint255(stor10[_19930].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _28126:
                                stor10[_19930][3][].field_0 = Array(len=_28126, data=mem[_28125 + 32 len _28126])
                            else:
                                stor10[_19930].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19930].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19930][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19930].field_768 == stor10[_19930].field_769 < 32:
                                revert with 0, 34
                            if _28126:
                                stor10[_19930][3][].field_0 = Array(len=_28126, data=mem[_28125 + 32 len _28126])
                            else:
                                stor10[_19930].field_768 = 0
                                idx = 0
                                while stor10[_19930].field_769 + 31 / 32 > idx:
                                    stor10[_19930][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        stor10[_19930].field_512 = 0
                        idx = 0
                        while stor10[_19930].field_513 + 31 / 32 > idx:
                            stor10[_19930][idx + 2].field_0 = 0
                            idx = idx + 1
                            continue 
                        _25445 = mem[_22840 + 96]
                        _25446 = mem[mem[_22840 + 96]]
                        if stor10[_19930].field_768:
                            if stor10[_19930].field_768 == uint255(stor10[_19930].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if _25446:
                                stor10[_19930][3][].field_0 = Array(len=_25446, data=mem[_25445 + 32 len _25446])
                            else:
                                stor10[_19930].field_768 = 0
                                idx = 0
                                while (uint255(stor10[_19930].field_768) * 0.5) + 31 / 32 > idx:
                                    stor10[_19930][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[_19930].field_768 == stor10[_19930].field_769 < 32:
                                revert with 0, 34
                            if _25446:
                                stor10[_19930][3][].field_0 = Array(len=_25446, data=mem[_25445 + 32 len _25446])
                            else:
                                stor10[_19930].field_768 = 0
                                idx = 0
                                while stor10[_19930].field_769 + 31 / 32 > idx:
                                    stor10[_19930][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                stor10[_19930].field_1024 = address(cd[196])
                stor10[_19930].field_1280 = s * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1 * uint255(_22654 + 1) >> 1
    else:
        mem[0] = msg.sender
        mem[32] = 14
        if stor14[msg.sender]:
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.0x975057e7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11418 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11420 = mem[_11418]
            require mem[_11418] == mem[_11418 + 12 len 20]
            if 0 >= mem[_2857]:
                revert with 0, 50
            _11427 = mem[_2857 + 32]
            if 1 >= mem[_2857]:
                revert with 0, 50
            _11429 = mem[_2857 + 64]
            _11430 = mem[64]
            mem[mem[64]] = 0xc7a8405d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor2
            mem[mem[64] + 36] = 192
            _11434 = mem[96]
            mem[mem[64] + 196] = mem[96]
            mem[mem[64] + 228 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                mem[mem[64] + 68] = ceil32(mem[96]) + 224
                _14259 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[ceil32(mem[96]) + mem[64] + 228] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[ceil32(mem[96]) + mem[64] + 260 len ceil32(_14259)] = mem[ceil32(ceil32(('cd', 4).length)) + 129 len ceil32(_14259)]
                if ceil32(_14259) <= _14259:
                    mem[mem[64] + 100] = ceil32(_14259) + ceil32(mem[96]) + 256
                    _17075 = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    mem[ceil32(_14259) + ceil32(mem[96]) + mem[64] + 260] = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    idx = 0
                    s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
                    t = ceil32(_14259) + ceil32(mem[96]) + mem[64] + (32 * _17075) + 292
                    u = ceil32(_14259) + ceil32(mem[96]) + mem[64] + 292
                    while idx < _17075:
                        mem[u] = t + -ceil32(_14259) + -ceil32(_11434) + -_11430 - 292
                        _19871 = mem[s]
                        _19888 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _19888:
                            mem[v + t + 32] = mem[v + _19871 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_19888) > _19888:
                            mem[_19888 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_19888) + t + 32
                        u = u + 32
                        continue 
                    mem[_11430 + 132] = _11427
                    mem[_11430 + 164] = _11429
                    require ext_code.size(address(_11420))
                    call address(_11420).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] - 4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19907 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _19931 = mem[_19907]
                    assets.length++
                    mem[0] = 6
                    assets[assets.length].field_0 = _19931
                    _22655 = mem[_8559]
                    idx = 0
                    s = 0
                    while idx < _22655:
                        mem[0] = _19931
                        mem[32] = 11
                        _22690 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        mem[_22690] = mem[(32 * idx) + _8559 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        mem[_22690 + 32] = mem[(32 * idx + 1) + _8559 + 32]
                        sub_f0503ac0[_19931].field_0++
                        mem[0] = sha3(_19931, 11)
                        sub_f0503ac0[_19931][sub_f0503ac0[_19931].field_0].field_0 = mem[_22690]
                        sub_f0503ac0[_19931][sub_f0503ac0[_19931].field_0].field_256 = mem[_22690 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        if mem[(32 * idx) + _8559 + 32] and mem[(32 * idx + 1) + _8559 + 32] > -1 / mem[(32 * idx) + _8559 + 32]:
                            revert with 0, 17
                        if s > !(mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32]):
                            revert with 0, 17
                        if idx > -3:
                            revert with 0, 17
                        _22655 = mem[_8559]
                        idx = idx + 2
                        s = s + (mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32])
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = vaultAddress
                    mem[mem[64] + 68] = s * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1
                    require ext_code.size(address(cd[196]))
                    call address(cd[196]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, vaultAddress, s * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22751 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_22751] == bool(mem[_22751])
                    _22843 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_22843] = msg.sender
                    mem[_22843 + 32] = address(cd[132])
                    if 0 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22843 + 64] = mem[_5708 + 32]
                    if 1 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22843 + 96] = mem[_5708 + 64]
                    mem[_22843 + 128] = address(cd[196])
                    mem[_22843 + 160] = s * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1
                    mem[0] = _19931
                    mem[32] = 10
                    stor10[_19931].field_0 = msg.sender
                    stor10[_19931].field_256 = address(cd[132])
                    _22947 = mem[_22843 + 64]
                    _22948 = mem[mem[_22843 + 64]]
                    if stor10[_19931].field_512:
                        if stor10[_19931].field_512 == uint255(stor10[_19931].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19931, 10) + 2
                        if _22948:
                            stor10[_19931][2][].field_0 = Array(len=_22948, data=mem[_22947 + 32 len _22948])
                            _28163 = mem[_22843 + 96]
                            _28164 = mem[mem[_22843 + 96]]
                            if stor10[_19931].field_768:
                                if stor10[_19931].field_768 == uint255(stor10[_19931].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28164:
                                    stor10[_19931][3][].field_0 = Array(len=_28164, data=mem[_28163 + 32 len _28164])
                                else:
                                    stor10[_19931].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19931].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19931][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19931].field_768 == stor10[_19931].field_769 < 32:
                                    revert with 0, 34
                                if _28164:
                                    stor10[_19931][3][].field_0 = Array(len=_28164, data=mem[_28163 + 32 len _28164])
                                else:
                                    stor10[_19931].field_768 = 0
                                    idx = 0
                                    while stor10[_19931].field_769 + 31 / 32 > idx:
                                        stor10[_19931][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19931].field_512 = 0
                            idx = 0
                            while (uint255(stor10[_19931].field_512) * 0.5) + 31 / 32 > idx:
                                stor10[_19931][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25451 = mem[_22843 + 96]
                            _25452 = mem[mem[_22843 + 96]]
                            if stor10[_19931].field_768:
                                if stor10[_19931].field_768 == uint255(stor10[_19931].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25452:
                                    stor10[_19931][3][].field_0 = Array(len=_25452, data=mem[_25451 + 32 len _25452])
                                else:
                                    stor10[_19931].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19931].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19931][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19931].field_768 == stor10[_19931].field_769 < 32:
                                    revert with 0, 34
                                if _25452:
                                    stor10[_19931][3][].field_0 = Array(len=_25452, data=mem[_25451 + 32 len _25452])
                                else:
                                    stor10[_19931].field_768 = 0
                                    idx = 0
                                    while stor10[_19931].field_769 + 31 / 32 > idx:
                                        stor10[_19931][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if stor10[_19931].field_512 == stor10[_19931].field_513 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19931, 10) + 2
                        if _22948:
                            stor10[_19931][2][].field_0 = Array(len=_22948, data=mem[_22947 + 32 len _22948])
                            _28201 = mem[_22843 + 96]
                            _28202 = mem[mem[_22843 + 96]]
                            if stor10[_19931].field_768:
                                if stor10[_19931].field_768 == uint255(stor10[_19931].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28202:
                                    stor10[_19931][3][].field_0 = Array(len=_28202, data=mem[_28201 + 32 len _28202])
                                else:
                                    stor10[_19931].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19931].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19931][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19931].field_768 == stor10[_19931].field_769 < 32:
                                    revert with 0, 34
                                if _28202:
                                    stor10[_19931][3][].field_0 = Array(len=_28202, data=mem[_28201 + 32 len _28202])
                                else:
                                    stor10[_19931].field_768 = 0
                                    idx = 0
                                    while stor10[_19931].field_769 + 31 / 32 > idx:
                                        stor10[_19931][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19931].field_512 = 0
                            idx = 0
                            while stor10[_19931].field_513 + 31 / 32 > idx:
                                stor10[_19931][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25457 = mem[_22843 + 96]
                            _25458 = mem[mem[_22843 + 96]]
                            if stor10[_19931].field_768:
                                if stor10[_19931].field_768 == uint255(stor10[_19931].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25458:
                                    stor10[_19931][3][].field_0 = Array(len=_25458, data=mem[_25457 + 32 len _25458])
                                else:
                                    stor10[_19931].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19931].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19931][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19931].field_768 == stor10[_19931].field_769 < 32:
                                    revert with 0, 34
                                if _25458:
                                    stor10[_19931][3][].field_0 = Array(len=_25458, data=mem[_25457 + 32 len _25458])
                                else:
                                    stor10[_19931].field_768 = 0
                                    idx = 0
                                    while stor10[_19931].field_769 + 31 / 32 > idx:
                                        stor10[_19931][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    stor10[_19931].field_1024 = address(cd[196])
                    stor10[_19931].field_1280 = s * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1 * uint255(_22655 + 1) >> 1
                else:
                    mem[_14259 + ceil32(mem[96]) + mem[64] + 260] = 0
                    mem[mem[64] + 100] = ceil32(_14259) + ceil32(mem[96]) + 256
                    _17076 = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    mem[ceil32(_14259) + ceil32(mem[96]) + mem[64] + 260] = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    idx = 0
                    s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
                    t = ceil32(_14259) + ceil32(mem[96]) + mem[64] + (32 * _17076) + 292
                    u = ceil32(_14259) + ceil32(mem[96]) + mem[64] + 292
                    while idx < _17076:
                        mem[u] = t + -ceil32(_14259) + -ceil32(_11434) + -_11430 - 292
                        _19872 = mem[s]
                        _19890 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _19890:
                            mem[v + t + 32] = mem[v + _19872 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_19890) > _19890:
                            mem[_19890 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_19890) + t + 32
                        u = u + 32
                        continue 
                    mem[_11430 + 132] = _11427
                    mem[_11430 + 164] = _11429
                    require ext_code.size(address(_11420))
                    call address(_11420).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] - 4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19908 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _19932 = mem[_19908]
                    assets.length++
                    mem[0] = 6
                    assets[assets.length].field_0 = _19932
                    _22656 = mem[_8559]
                    idx = 0
                    s = 0
                    while idx < _22656:
                        mem[0] = _19932
                        mem[32] = 11
                        _22696 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        mem[_22696] = mem[(32 * idx) + _8559 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        mem[_22696 + 32] = mem[(32 * idx + 1) + _8559 + 32]
                        sub_f0503ac0[_19932].field_0++
                        mem[0] = sha3(_19932, 11)
                        sub_f0503ac0[_19932][sub_f0503ac0[_19932].field_0].field_0 = mem[_22696]
                        sub_f0503ac0[_19932][sub_f0503ac0[_19932].field_0].field_256 = mem[_22696 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        if mem[(32 * idx) + _8559 + 32] and mem[(32 * idx + 1) + _8559 + 32] > -1 / mem[(32 * idx) + _8559 + 32]:
                            revert with 0, 17
                        if s > !(mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32]):
                            revert with 0, 17
                        if idx > -3:
                            revert with 0, 17
                        _22656 = mem[_8559]
                        idx = idx + 2
                        s = s + (mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32])
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = vaultAddress
                    mem[mem[64] + 68] = s * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1
                    require ext_code.size(address(cd[196]))
                    call address(cd[196]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, vaultAddress, s * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22752 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_22752] == bool(mem[_22752])
                    _22846 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_22846] = msg.sender
                    mem[_22846 + 32] = address(cd[132])
                    if 0 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22846 + 64] = mem[_5708 + 32]
                    if 1 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22846 + 96] = mem[_5708 + 64]
                    mem[_22846 + 128] = address(cd[196])
                    mem[_22846 + 160] = s * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1
                    mem[0] = _19932
                    mem[32] = 10
                    stor10[_19932].field_0 = msg.sender
                    stor10[_19932].field_256 = address(cd[132])
                    _22954 = mem[_22846 + 64]
                    _22955 = mem[mem[_22846 + 64]]
                    if stor10[_19932].field_512:
                        if stor10[_19932].field_512 == uint255(stor10[_19932].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19932, 10) + 2
                        if _22955:
                            stor10[_19932][2][].field_0 = Array(len=_22955, data=mem[_22954 + 32 len _22955])
                            _28239 = mem[_22846 + 96]
                            _28240 = mem[mem[_22846 + 96]]
                            if stor10[_19932].field_768:
                                if stor10[_19932].field_768 == uint255(stor10[_19932].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28240:
                                    stor10[_19932][3][].field_0 = Array(len=_28240, data=mem[_28239 + 32 len _28240])
                                else:
                                    stor10[_19932].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19932].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19932][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19932].field_768 == stor10[_19932].field_769 < 32:
                                    revert with 0, 34
                                if _28240:
                                    stor10[_19932][3][].field_0 = Array(len=_28240, data=mem[_28239 + 32 len _28240])
                                else:
                                    stor10[_19932].field_768 = 0
                                    idx = 0
                                    while stor10[_19932].field_769 + 31 / 32 > idx:
                                        stor10[_19932][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19932].field_512 = 0
                            idx = 0
                            while (uint255(stor10[_19932].field_512) * 0.5) + 31 / 32 > idx:
                                stor10[_19932][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25463 = mem[_22846 + 96]
                            _25464 = mem[mem[_22846 + 96]]
                            if stor10[_19932].field_768:
                                if stor10[_19932].field_768 == uint255(stor10[_19932].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25464:
                                    stor10[_19932][3][].field_0 = Array(len=_25464, data=mem[_25463 + 32 len _25464])
                                else:
                                    stor10[_19932].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19932].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19932][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19932].field_768 == stor10[_19932].field_769 < 32:
                                    revert with 0, 34
                                if _25464:
                                    stor10[_19932][3][].field_0 = Array(len=_25464, data=mem[_25463 + 32 len _25464])
                                else:
                                    stor10[_19932].field_768 = 0
                                    idx = 0
                                    while stor10[_19932].field_769 + 31 / 32 > idx:
                                        stor10[_19932][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if stor10[_19932].field_512 == stor10[_19932].field_513 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19932, 10) + 2
                        if _22955:
                            stor10[_19932][2][].field_0 = Array(len=_22955, data=mem[_22954 + 32 len _22955])
                            _28277 = mem[_22846 + 96]
                            _28278 = mem[mem[_22846 + 96]]
                            if stor10[_19932].field_768:
                                if stor10[_19932].field_768 == uint255(stor10[_19932].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28278:
                                    stor10[_19932][3][].field_0 = Array(len=_28278, data=mem[_28277 + 32 len _28278])
                                else:
                                    stor10[_19932].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19932].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19932][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19932].field_768 == stor10[_19932].field_769 < 32:
                                    revert with 0, 34
                                if _28278:
                                    stor10[_19932][3][].field_0 = Array(len=_28278, data=mem[_28277 + 32 len _28278])
                                else:
                                    stor10[_19932].field_768 = 0
                                    idx = 0
                                    while stor10[_19932].field_769 + 31 / 32 > idx:
                                        stor10[_19932][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19932].field_512 = 0
                            idx = 0
                            while stor10[_19932].field_513 + 31 / 32 > idx:
                                stor10[_19932][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25469 = mem[_22846 + 96]
                            _25470 = mem[mem[_22846 + 96]]
                            if stor10[_19932].field_768:
                                if stor10[_19932].field_768 == uint255(stor10[_19932].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25470:
                                    stor10[_19932][3][].field_0 = Array(len=_25470, data=mem[_25469 + 32 len _25470])
                                else:
                                    stor10[_19932].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19932].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19932][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19932].field_768 == stor10[_19932].field_769 < 32:
                                    revert with 0, 34
                                if _25470:
                                    stor10[_19932][3][].field_0 = Array(len=_25470, data=mem[_25469 + 32 len _25470])
                                else:
                                    stor10[_19932].field_768 = 0
                                    idx = 0
                                    while stor10[_19932].field_769 + 31 / 32 > idx:
                                        stor10[_19932][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    stor10[_19932].field_1024 = address(cd[196])
                    stor10[_19932].field_1280 = s * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1 * uint255(_22656 + 1) >> 1
            else:
                mem[mem[96] + mem[64] + 228] = 0
                mem[mem[64] + 68] = ceil32(mem[96]) + 224
                _14260 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[ceil32(mem[96]) + mem[64] + 228] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[ceil32(mem[96]) + mem[64] + 260 len ceil32(_14260)] = mem[ceil32(ceil32(('cd', 4).length)) + 129 len ceil32(_14260)]
                if ceil32(_14260) <= _14260:
                    mem[mem[64] + 100] = ceil32(_14260) + ceil32(mem[96]) + 256
                    _17077 = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    mem[ceil32(_14260) + ceil32(mem[96]) + mem[64] + 260] = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    idx = 0
                    s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
                    t = ceil32(_14260) + ceil32(mem[96]) + mem[64] + (32 * _17077) + 292
                    u = ceil32(_14260) + ceil32(mem[96]) + mem[64] + 292
                    while idx < _17077:
                        mem[u] = t + -ceil32(_14260) + -ceil32(_11434) + -_11430 - 292
                        _19873 = mem[s]
                        _19892 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _19892:
                            mem[v + t + 32] = mem[v + _19873 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_19892) > _19892:
                            mem[_19892 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_19892) + t + 32
                        u = u + 32
                        continue 
                    mem[_11430 + 132] = _11427
                    mem[_11430 + 164] = _11429
                    require ext_code.size(address(_11420))
                    call address(_11420).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] - 4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19909 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _19933 = mem[_19909]
                    assets.length++
                    mem[0] = 6
                    assets[assets.length].field_0 = _19933
                    _22657 = mem[_8559]
                    idx = 0
                    s = 0
                    while idx < _22657:
                        mem[0] = _19933
                        mem[32] = 11
                        _22702 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        mem[_22702] = mem[(32 * idx) + _8559 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        mem[_22702 + 32] = mem[(32 * idx + 1) + _8559 + 32]
                        sub_f0503ac0[_19933].field_0++
                        mem[0] = sha3(_19933, 11)
                        sub_f0503ac0[_19933][sub_f0503ac0[_19933].field_0].field_0 = mem[_22702]
                        sub_f0503ac0[_19933][sub_f0503ac0[_19933].field_0].field_256 = mem[_22702 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        if mem[(32 * idx) + _8559 + 32] and mem[(32 * idx + 1) + _8559 + 32] > -1 / mem[(32 * idx) + _8559 + 32]:
                            revert with 0, 17
                        if s > !(mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32]):
                            revert with 0, 17
                        if idx > -3:
                            revert with 0, 17
                        _22657 = mem[_8559]
                        idx = idx + 2
                        s = s + (mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32])
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = vaultAddress
                    mem[mem[64] + 68] = s * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1
                    require ext_code.size(address(cd[196]))
                    call address(cd[196]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, vaultAddress, s * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22753 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_22753] == bool(mem[_22753])
                    _22849 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_22849] = msg.sender
                    mem[_22849 + 32] = address(cd[132])
                    if 0 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22849 + 64] = mem[_5708 + 32]
                    if 1 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22849 + 96] = mem[_5708 + 64]
                    mem[_22849 + 128] = address(cd[196])
                    mem[_22849 + 160] = s * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1
                    mem[0] = _19933
                    mem[32] = 10
                    stor10[_19933].field_0 = msg.sender
                    stor10[_19933].field_256 = address(cd[132])
                    _22961 = mem[_22849 + 64]
                    _22962 = mem[mem[_22849 + 64]]
                    if stor10[_19933].field_512:
                        if stor10[_19933].field_512 == uint255(stor10[_19933].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19933, 10) + 2
                        if _22962:
                            stor10[_19933][2][].field_0 = Array(len=_22962, data=mem[_22961 + 32 len _22962])
                            _28315 = mem[_22849 + 96]
                            _28316 = mem[mem[_22849 + 96]]
                            if stor10[_19933].field_768:
                                if stor10[_19933].field_768 == uint255(stor10[_19933].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28316:
                                    stor10[_19933][3][].field_0 = Array(len=_28316, data=mem[_28315 + 32 len _28316])
                                else:
                                    stor10[_19933].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19933].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19933][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19933].field_768 == stor10[_19933].field_769 < 32:
                                    revert with 0, 34
                                if _28316:
                                    stor10[_19933][3][].field_0 = Array(len=_28316, data=mem[_28315 + 32 len _28316])
                                else:
                                    stor10[_19933].field_768 = 0
                                    idx = 0
                                    while stor10[_19933].field_769 + 31 / 32 > idx:
                                        stor10[_19933][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19933].field_512 = 0
                            idx = 0
                            while (uint255(stor10[_19933].field_512) * 0.5) + 31 / 32 > idx:
                                stor10[_19933][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25475 = mem[_22849 + 96]
                            _25476 = mem[mem[_22849 + 96]]
                            if stor10[_19933].field_768:
                                if stor10[_19933].field_768 == uint255(stor10[_19933].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25476:
                                    stor10[_19933][3][].field_0 = Array(len=_25476, data=mem[_25475 + 32 len _25476])
                                else:
                                    stor10[_19933].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19933].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19933][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19933].field_768 == stor10[_19933].field_769 < 32:
                                    revert with 0, 34
                                if _25476:
                                    stor10[_19933][3][].field_0 = Array(len=_25476, data=mem[_25475 + 32 len _25476])
                                else:
                                    stor10[_19933].field_768 = 0
                                    idx = 0
                                    while stor10[_19933].field_769 + 31 / 32 > idx:
                                        stor10[_19933][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if stor10[_19933].field_512 == stor10[_19933].field_513 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19933, 10) + 2
                        if _22962:
                            stor10[_19933][2][].field_0 = Array(len=_22962, data=mem[_22961 + 32 len _22962])
                            _28353 = mem[_22849 + 96]
                            _28354 = mem[mem[_22849 + 96]]
                            if stor10[_19933].field_768:
                                if stor10[_19933].field_768 == uint255(stor10[_19933].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28354:
                                    stor10[_19933][3][].field_0 = Array(len=_28354, data=mem[_28353 + 32 len _28354])
                                else:
                                    stor10[_19933].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19933].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19933][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19933].field_768 == stor10[_19933].field_769 < 32:
                                    revert with 0, 34
                                if _28354:
                                    stor10[_19933][3][].field_0 = Array(len=_28354, data=mem[_28353 + 32 len _28354])
                                else:
                                    stor10[_19933].field_768 = 0
                                    idx = 0
                                    while stor10[_19933].field_769 + 31 / 32 > idx:
                                        stor10[_19933][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19933].field_512 = 0
                            idx = 0
                            while stor10[_19933].field_513 + 31 / 32 > idx:
                                stor10[_19933][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25481 = mem[_22849 + 96]
                            _25482 = mem[mem[_22849 + 96]]
                            if stor10[_19933].field_768:
                                if stor10[_19933].field_768 == uint255(stor10[_19933].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25482:
                                    stor10[_19933][3][].field_0 = Array(len=_25482, data=mem[_25481 + 32 len _25482])
                                else:
                                    stor10[_19933].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19933].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19933][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19933].field_768 == stor10[_19933].field_769 < 32:
                                    revert with 0, 34
                                if _25482:
                                    stor10[_19933][3][].field_0 = Array(len=_25482, data=mem[_25481 + 32 len _25482])
                                else:
                                    stor10[_19933].field_768 = 0
                                    idx = 0
                                    while stor10[_19933].field_769 + 31 / 32 > idx:
                                        stor10[_19933][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    stor10[_19933].field_1024 = address(cd[196])
                    stor10[_19933].field_1280 = s * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1 * uint255(_22657 + 1) >> 1
                else:
                    mem[_14260 + ceil32(mem[96]) + mem[64] + 260] = 0
                    mem[mem[64] + 100] = ceil32(_14260) + ceil32(mem[96]) + 256
                    _17078 = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    mem[ceil32(_14260) + ceil32(mem[96]) + mem[64] + 260] = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    idx = 0
                    s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
                    t = ceil32(_14260) + ceil32(mem[96]) + mem[64] + (32 * _17078) + 292
                    u = ceil32(_14260) + ceil32(mem[96]) + mem[64] + 292
                    while idx < _17078:
                        mem[u] = t + -ceil32(_14260) + -ceil32(_11434) + -_11430 - 292
                        _19874 = mem[s]
                        _19894 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _19894:
                            mem[v + t + 32] = mem[v + _19874 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_19894) > _19894:
                            mem[_19894 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_19894) + t + 32
                        u = u + 32
                        continue 
                    mem[_11430 + 132] = _11427
                    mem[_11430 + 164] = _11429
                    require ext_code.size(address(_11420))
                    call address(_11420).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] - 4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19910 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _19934 = mem[_19910]
                    assets.length++
                    mem[0] = 6
                    assets[assets.length].field_0 = _19934
                    _22658 = mem[_8559]
                    idx = 0
                    s = 0
                    while idx < _22658:
                        mem[0] = _19934
                        mem[32] = 11
                        _22708 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        mem[_22708] = mem[(32 * idx) + _8559 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        mem[_22708 + 32] = mem[(32 * idx + 1) + _8559 + 32]
                        sub_f0503ac0[_19934].field_0++
                        mem[0] = sha3(_19934, 11)
                        sub_f0503ac0[_19934][sub_f0503ac0[_19934].field_0].field_0 = mem[_22708]
                        sub_f0503ac0[_19934][sub_f0503ac0[_19934].field_0].field_256 = mem[_22708 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        if mem[(32 * idx) + _8559 + 32] and mem[(32 * idx + 1) + _8559 + 32] > -1 / mem[(32 * idx) + _8559 + 32]:
                            revert with 0, 17
                        if s > !(mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32]):
                            revert with 0, 17
                        if idx > -3:
                            revert with 0, 17
                        _22658 = mem[_8559]
                        idx = idx + 2
                        s = s + (mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32])
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = vaultAddress
                    mem[mem[64] + 68] = s * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1
                    require ext_code.size(address(cd[196]))
                    call address(cd[196]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, vaultAddress, s * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22754 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_22754] == bool(mem[_22754])
                    _22852 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_22852] = msg.sender
                    mem[_22852 + 32] = address(cd[132])
                    if 0 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22852 + 64] = mem[_5708 + 32]
                    if 1 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22852 + 96] = mem[_5708 + 64]
                    mem[_22852 + 128] = address(cd[196])
                    mem[_22852 + 160] = s * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1
                    mem[0] = _19934
                    mem[32] = 10
                    stor10[_19934].field_0 = msg.sender
                    stor10[_19934].field_256 = address(cd[132])
                    _22968 = mem[_22852 + 64]
                    _22969 = mem[mem[_22852 + 64]]
                    if stor10[_19934].field_512:
                        if stor10[_19934].field_512 == uint255(stor10[_19934].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19934, 10) + 2
                        if _22969:
                            stor10[_19934][2][].field_0 = Array(len=_22969, data=mem[_22968 + 32 len _22969])
                            _28391 = mem[_22852 + 96]
                            _28392 = mem[mem[_22852 + 96]]
                            if stor10[_19934].field_768:
                                if stor10[_19934].field_768 == uint255(stor10[_19934].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28392:
                                    stor10[_19934][3][].field_0 = Array(len=_28392, data=mem[_28391 + 32 len _28392])
                                else:
                                    stor10[_19934].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19934].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19934][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19934].field_768 == stor10[_19934].field_769 < 32:
                                    revert with 0, 34
                                if _28392:
                                    stor10[_19934][3][].field_0 = Array(len=_28392, data=mem[_28391 + 32 len _28392])
                                else:
                                    stor10[_19934].field_768 = 0
                                    idx = 0
                                    while stor10[_19934].field_769 + 31 / 32 > idx:
                                        stor10[_19934][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19934].field_512 = 0
                            idx = 0
                            while (uint255(stor10[_19934].field_512) * 0.5) + 31 / 32 > idx:
                                stor10[_19934][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25487 = mem[_22852 + 96]
                            _25488 = mem[mem[_22852 + 96]]
                            if stor10[_19934].field_768:
                                if stor10[_19934].field_768 == uint255(stor10[_19934].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25488:
                                    stor10[_19934][3][].field_0 = Array(len=_25488, data=mem[_25487 + 32 len _25488])
                                else:
                                    stor10[_19934].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19934].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19934][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19934].field_768 == stor10[_19934].field_769 < 32:
                                    revert with 0, 34
                                if _25488:
                                    stor10[_19934][3][].field_0 = Array(len=_25488, data=mem[_25487 + 32 len _25488])
                                else:
                                    stor10[_19934].field_768 = 0
                                    idx = 0
                                    while stor10[_19934].field_769 + 31 / 32 > idx:
                                        stor10[_19934][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if stor10[_19934].field_512 == stor10[_19934].field_513 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19934, 10) + 2
                        if _22969:
                            stor10[_19934][2][].field_0 = Array(len=_22969, data=mem[_22968 + 32 len _22969])
                            _28429 = mem[_22852 + 96]
                            _28430 = mem[mem[_22852 + 96]]
                            if stor10[_19934].field_768:
                                if stor10[_19934].field_768 == uint255(stor10[_19934].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28430:
                                    stor10[_19934][3][].field_0 = Array(len=_28430, data=mem[_28429 + 32 len _28430])
                                else:
                                    stor10[_19934].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19934].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19934][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19934].field_768 == stor10[_19934].field_769 < 32:
                                    revert with 0, 34
                                if _28430:
                                    stor10[_19934][3][].field_0 = Array(len=_28430, data=mem[_28429 + 32 len _28430])
                                else:
                                    stor10[_19934].field_768 = 0
                                    idx = 0
                                    while stor10[_19934].field_769 + 31 / 32 > idx:
                                        stor10[_19934][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19934].field_512 = 0
                            idx = 0
                            while stor10[_19934].field_513 + 31 / 32 > idx:
                                stor10[_19934][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25493 = mem[_22852 + 96]
                            _25494 = mem[mem[_22852 + 96]]
                            if stor10[_19934].field_768:
                                if stor10[_19934].field_768 == uint255(stor10[_19934].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25494:
                                    stor10[_19934][3][].field_0 = Array(len=_25494, data=mem[_25493 + 32 len _25494])
                                else:
                                    stor10[_19934].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19934].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19934][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19934].field_768 == stor10[_19934].field_769 < 32:
                                    revert with 0, 34
                                if _25494:
                                    stor10[_19934][3][].field_0 = Array(len=_25494, data=mem[_25493 + 32 len _25494])
                                else:
                                    stor10[_19934].field_768 = 0
                                    idx = 0
                                    while stor10[_19934].field_769 + 31 / 32 > idx:
                                        stor10[_19934][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    stor10[_19934].field_1024 = address(cd[196])
                    stor10[_19934].field_1280 = s * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1 * uint255(_22658 + 1) >> 1
        else:
            if 1 >= mem[_2857]:
                revert with 0, 50
            if 0 >= mem[_2857]:
                revert with 0, 50
            if mem[_2857 + 32] and mem[_2857 + 64] > -1 / mem[_2857 + 32]:
                revert with 0, 17
            if mem[_2857 + 32] * mem[_2857 + 64] and 500 > -1 / mem[_2857 + 32] * mem[_2857 + 64]:
                revert with 0, 17
            require msg.value >= 500 * mem[_2857 + 32] * mem[_2857 + 64] / 10000
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.0x975057e7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11435 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11438 = mem[_11435]
            require mem[_11435] == mem[_11435 + 12 len 20]
            if 0 >= mem[_2857]:
                revert with 0, 50
            _11446 = mem[_2857 + 32]
            if 1 >= mem[_2857]:
                revert with 0, 50
            _11450 = mem[_2857 + 64]
            _11451 = mem[64]
            mem[mem[64]] = 0xc7a8405d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor2
            mem[mem[64] + 36] = 192
            _11456 = mem[96]
            mem[mem[64] + 196] = mem[96]
            mem[mem[64] + 228 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                mem[mem[64] + 68] = ceil32(mem[96]) + 224
                _14261 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[ceil32(mem[96]) + mem[64] + 228] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[ceil32(mem[96]) + mem[64] + 260 len ceil32(_14261)] = mem[ceil32(ceil32(('cd', 4).length)) + 129 len ceil32(_14261)]
                var138001 = ceil32(_14261)
                if ceil32(_14261) <= _14261:
                    mem[mem[64] + 100] = ceil32(_14261) + ceil32(mem[96]) + 256
                    _17079 = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    mem[ceil32(_14261) + ceil32(mem[96]) + mem[64] + 260] = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    idx = 0
                    s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
                    t = ceil32(_14261) + ceil32(mem[96]) + mem[64] + (32 * _17079) + 292
                    u = ceil32(_14261) + ceil32(mem[96]) + mem[64] + 292
                    while idx < _17079:
                        mem[u] = t + -ceil32(_14261) + -ceil32(_11456) + -_11451 - 292
                        _19875 = mem[s]
                        _19896 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _19896:
                            mem[v + t + 32] = mem[v + _19875 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_19896) > _19896:
                            mem[_19896 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_19896) + t + 32
                        u = u + 32
                        continue 
                    mem[_11451 + 132] = _11446
                    mem[_11451 + 164] = _11450
                    require ext_code.size(address(_11438))
                    call address(_11438).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] - 4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19911 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _19935 = mem[_19911]
                    assets.length++
                    mem[0] = 6
                    assets[assets.length].field_0 = _19935
                    _22659 = mem[_8559]
                    idx = 0
                    s = 0
                    while idx < _22659:
                        mem[0] = _19935
                        mem[32] = 11
                        _22714 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        mem[_22714] = mem[(32 * idx) + _8559 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        mem[_22714 + 32] = mem[(32 * idx + 1) + _8559 + 32]
                        sub_f0503ac0[_19935].field_0++
                        mem[0] = sha3(_19935, 11)
                        sub_f0503ac0[_19935][sub_f0503ac0[_19935].field_0].field_0 = mem[_22714]
                        sub_f0503ac0[_19935][sub_f0503ac0[_19935].field_0].field_256 = mem[_22714 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        if mem[(32 * idx) + _8559 + 32] and mem[(32 * idx + 1) + _8559 + 32] > -1 / mem[(32 * idx) + _8559 + 32]:
                            revert with 0, 17
                        if s > !(mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32]):
                            revert with 0, 17
                        if idx > -3:
                            revert with 0, 17
                        _22659 = mem[_8559]
                        idx = idx + 2
                        s = s + (mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32])
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = vaultAddress
                    mem[mem[64] + 68] = s * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1
                    require ext_code.size(address(cd[196]))
                    call address(cd[196]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, vaultAddress, s * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22755 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_22755] == bool(mem[_22755])
                    _22855 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_22855] = msg.sender
                    mem[_22855 + 32] = address(cd[132])
                    if 0 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22855 + 64] = mem[_5708 + 32]
                    if 1 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22855 + 96] = mem[_5708 + 64]
                    mem[_22855 + 128] = address(cd[196])
                    mem[_22855 + 160] = s * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1
                    mem[0] = _19935
                    mem[32] = 10
                    stor10[_19935].field_0 = msg.sender
                    stor10[_19935].field_256 = address(cd[132])
                    _22975 = mem[_22855 + 64]
                    _22976 = mem[mem[_22855 + 64]]
                    if stor10[_19935].field_512:
                        if stor10[_19935].field_512 == uint255(stor10[_19935].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19935, 10) + 2
                        if _22976:
                            stor10[_19935][2][].field_0 = Array(len=_22976, data=mem[_22975 + 32 len _22976])
                            _28467 = mem[_22855 + 96]
                            _28468 = mem[mem[_22855 + 96]]
                            if stor10[_19935].field_768:
                                if stor10[_19935].field_768 == uint255(stor10[_19935].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28468:
                                    stor10[_19935][3][].field_0 = Array(len=_28468, data=mem[_28467 + 32 len _28468])
                                else:
                                    stor10[_19935].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19935].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19935][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19935].field_768 == stor10[_19935].field_769 < 32:
                                    revert with 0, 34
                                if _28468:
                                    stor10[_19935][3][].field_0 = Array(len=_28468, data=mem[_28467 + 32 len _28468])
                                else:
                                    stor10[_19935].field_768 = 0
                                    idx = 0
                                    while stor10[_19935].field_769 + 31 / 32 > idx:
                                        stor10[_19935][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19935].field_512 = 0
                            idx = 0
                            while (uint255(stor10[_19935].field_512) * 0.5) + 31 / 32 > idx:
                                stor10[_19935][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25499 = mem[_22855 + 96]
                            _25500 = mem[mem[_22855 + 96]]
                            if stor10[_19935].field_768:
                                if stor10[_19935].field_768 == uint255(stor10[_19935].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25500:
                                    stor10[_19935][3][].field_0 = Array(len=_25500, data=mem[_25499 + 32 len _25500])
                                else:
                                    stor10[_19935].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19935].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19935][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19935].field_768 == stor10[_19935].field_769 < 32:
                                    revert with 0, 34
                                if _25500:
                                    stor10[_19935][3][].field_0 = Array(len=_25500, data=mem[_25499 + 32 len _25500])
                                else:
                                    stor10[_19935].field_768 = 0
                                    idx = 0
                                    while stor10[_19935].field_769 + 31 / 32 > idx:
                                        stor10[_19935][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if stor10[_19935].field_512 == stor10[_19935].field_513 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19935, 10) + 2
                        if _22976:
                            stor10[_19935][2][].field_0 = Array(len=_22976, data=mem[_22975 + 32 len _22976])
                            _28505 = mem[_22855 + 96]
                            _28506 = mem[mem[_22855 + 96]]
                            if stor10[_19935].field_768:
                                if stor10[_19935].field_768 == uint255(stor10[_19935].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28506:
                                    stor10[_19935][3][].field_0 = Array(len=_28506, data=mem[_28505 + 32 len _28506])
                                else:
                                    stor10[_19935].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19935].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19935][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19935].field_768 == stor10[_19935].field_769 < 32:
                                    revert with 0, 34
                                if _28506:
                                    stor10[_19935][3][].field_0 = Array(len=_28506, data=mem[_28505 + 32 len _28506])
                                else:
                                    stor10[_19935].field_768 = 0
                                    idx = 0
                                    while stor10[_19935].field_769 + 31 / 32 > idx:
                                        stor10[_19935][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19935].field_512 = 0
                            idx = 0
                            while stor10[_19935].field_513 + 31 / 32 > idx:
                                stor10[_19935][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25505 = mem[_22855 + 96]
                            _25506 = mem[mem[_22855 + 96]]
                            if stor10[_19935].field_768:
                                if stor10[_19935].field_768 == uint255(stor10[_19935].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25506:
                                    stor10[_19935][3][].field_0 = Array(len=_25506, data=mem[_25505 + 32 len _25506])
                                else:
                                    stor10[_19935].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19935].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19935][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19935].field_768 == stor10[_19935].field_769 < 32:
                                    revert with 0, 34
                                if _25506:
                                    stor10[_19935][3][].field_0 = Array(len=_25506, data=mem[_25505 + 32 len _25506])
                                else:
                                    stor10[_19935].field_768 = 0
                                    idx = 0
                                    while stor10[_19935].field_769 + 31 / 32 > idx:
                                        stor10[_19935][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    stor10[_19935].field_1024 = address(cd[196])
                    stor10[_19935].field_1280 = s * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1 * uint255(_22659 + 1) >> 1
                else:
                    mem[_14261 + ceil32(mem[96]) + mem[64] + 260] = 0
                    mem[mem[64] + 100] = ceil32(_14261) + ceil32(mem[96]) + 256
                    _17080 = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    mem[ceil32(_14261) + ceil32(mem[96]) + mem[64] + 260] = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    idx = 0
                    s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
                    t = ceil32(_14261) + ceil32(mem[96]) + mem[64] + (32 * _17080) + 292
                    u = ceil32(_14261) + ceil32(mem[96]) + mem[64] + 292
                    while idx < _17080:
                        mem[u] = t + -ceil32(_14261) + -ceil32(_11456) + -_11451 - 292
                        _19876 = mem[s]
                        _19898 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _19898:
                            mem[v + t + 32] = mem[v + _19876 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_19898) > _19898:
                            mem[_19898 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_19898) + t + 32
                        u = u + 32
                        continue 
                    mem[_11451 + 132] = _11446
                    mem[_11451 + 164] = _11450
                    require ext_code.size(address(_11438))
                    call address(_11438).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] - 4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19912 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _19936 = mem[_19912]
                    assets.length++
                    mem[0] = 6
                    assets[assets.length].field_0 = _19936
                    _22660 = mem[_8559]
                    idx = 0
                    s = 0
                    while idx < _22660:
                        mem[0] = _19936
                        mem[32] = 11
                        _22720 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        mem[_22720] = mem[(32 * idx) + _8559 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        mem[_22720 + 32] = mem[(32 * idx + 1) + _8559 + 32]
                        sub_f0503ac0[_19936].field_0++
                        mem[0] = sha3(_19936, 11)
                        sub_f0503ac0[_19936][sub_f0503ac0[_19936].field_0].field_0 = mem[_22720]
                        sub_f0503ac0[_19936][sub_f0503ac0[_19936].field_0].field_256 = mem[_22720 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        if mem[(32 * idx) + _8559 + 32] and mem[(32 * idx + 1) + _8559 + 32] > -1 / mem[(32 * idx) + _8559 + 32]:
                            revert with 0, 17
                        if s > !(mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32]):
                            revert with 0, 17
                        if idx > -3:
                            revert with 0, 17
                        _22660 = mem[_8559]
                        idx = idx + 2
                        s = s + (mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32])
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = vaultAddress
                    mem[mem[64] + 68] = s * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1
                    require ext_code.size(address(cd[196]))
                    call address(cd[196]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, vaultAddress, s * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22756 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_22756] == bool(mem[_22756])
                    _22858 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_22858] = msg.sender
                    mem[_22858 + 32] = address(cd[132])
                    if 0 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22858 + 64] = mem[_5708 + 32]
                    if 1 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22858 + 96] = mem[_5708 + 64]
                    mem[_22858 + 128] = address(cd[196])
                    mem[_22858 + 160] = s * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1
                    mem[0] = _19936
                    mem[32] = 10
                    stor10[_19936].field_0 = msg.sender
                    stor10[_19936].field_256 = address(cd[132])
                    _22982 = mem[_22858 + 64]
                    _22983 = mem[mem[_22858 + 64]]
                    if stor10[_19936].field_512:
                        if stor10[_19936].field_512 == uint255(stor10[_19936].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19936, 10) + 2
                        if _22983:
                            stor10[_19936][2][].field_0 = Array(len=_22983, data=mem[_22982 + 32 len _22983])
                            _28543 = mem[_22858 + 96]
                            _28544 = mem[mem[_22858 + 96]]
                            if stor10[_19936].field_768:
                                if stor10[_19936].field_768 == uint255(stor10[_19936].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28544:
                                    stor10[_19936][3][].field_0 = Array(len=_28544, data=mem[_28543 + 32 len _28544])
                                else:
                                    stor10[_19936].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19936].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19936][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19936].field_768 == stor10[_19936].field_769 < 32:
                                    revert with 0, 34
                                if _28544:
                                    stor10[_19936][3][].field_0 = Array(len=_28544, data=mem[_28543 + 32 len _28544])
                                else:
                                    stor10[_19936].field_768 = 0
                                    idx = 0
                                    while stor10[_19936].field_769 + 31 / 32 > idx:
                                        stor10[_19936][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19936].field_512 = 0
                            idx = 0
                            while (uint255(stor10[_19936].field_512) * 0.5) + 31 / 32 > idx:
                                stor10[_19936][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25511 = mem[_22858 + 96]
                            _25512 = mem[mem[_22858 + 96]]
                            if stor10[_19936].field_768:
                                if stor10[_19936].field_768 == uint255(stor10[_19936].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25512:
                                    stor10[_19936][3][].field_0 = Array(len=_25512, data=mem[_25511 + 32 len _25512])
                                else:
                                    stor10[_19936].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19936].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19936][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19936].field_768 == stor10[_19936].field_769 < 32:
                                    revert with 0, 34
                                if _25512:
                                    stor10[_19936][3][].field_0 = Array(len=_25512, data=mem[_25511 + 32 len _25512])
                                else:
                                    stor10[_19936].field_768 = 0
                                    idx = 0
                                    while stor10[_19936].field_769 + 31 / 32 > idx:
                                        stor10[_19936][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if stor10[_19936].field_512 == stor10[_19936].field_513 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19936, 10) + 2
                        if _22983:
                            stor10[_19936][2][].field_0 = Array(len=_22983, data=mem[_22982 + 32 len _22983])
                            _28581 = mem[_22858 + 96]
                            _28582 = mem[mem[_22858 + 96]]
                            if stor10[_19936].field_768:
                                if stor10[_19936].field_768 == uint255(stor10[_19936].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28582:
                                    stor10[_19936][3][].field_0 = Array(len=_28582, data=mem[_28581 + 32 len _28582])
                                else:
                                    stor10[_19936].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19936].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19936][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19936].field_768 == stor10[_19936].field_769 < 32:
                                    revert with 0, 34
                                if _28582:
                                    stor10[_19936][3][].field_0 = Array(len=_28582, data=mem[_28581 + 32 len _28582])
                                else:
                                    stor10[_19936].field_768 = 0
                                    idx = 0
                                    while stor10[_19936].field_769 + 31 / 32 > idx:
                                        stor10[_19936][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19936].field_512 = 0
                            idx = 0
                            while stor10[_19936].field_513 + 31 / 32 > idx:
                                stor10[_19936][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25517 = mem[_22858 + 96]
                            _25518 = mem[mem[_22858 + 96]]
                            if stor10[_19936].field_768:
                                if stor10[_19936].field_768 == uint255(stor10[_19936].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25518:
                                    stor10[_19936][3][].field_0 = Array(len=_25518, data=mem[_25517 + 32 len _25518])
                                else:
                                    stor10[_19936].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19936].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19936][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19936].field_768 == stor10[_19936].field_769 < 32:
                                    revert with 0, 34
                                if _25518:
                                    stor10[_19936][3][].field_0 = Array(len=_25518, data=mem[_25517 + 32 len _25518])
                                else:
                                    stor10[_19936].field_768 = 0
                                    idx = 0
                                    while stor10[_19936].field_769 + 31 / 32 > idx:
                                        stor10[_19936][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    stor10[_19936].field_1024 = address(cd[196])
                    stor10[_19936].field_1280 = s * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1 * uint255(_22660 + 1) >> 1
            else:
                mem[mem[96] + mem[64] + 228] = 0
                mem[mem[64] + 68] = ceil32(mem[96]) + 224
                _14262 = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[ceil32(mem[96]) + mem[64] + 228] = mem[ceil32(ceil32(('cd', 4).length)) + 97]
                mem[ceil32(mem[96]) + mem[64] + 260 len ceil32(_14262)] = mem[ceil32(ceil32(('cd', 4).length)) + 129 len ceil32(_14262)]
                var138001 = ceil32(_14262)
                if ceil32(_14262) <= _14262:
                    mem[mem[64] + 100] = ceil32(_14262) + ceil32(mem[96]) + 256
                    _17081 = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    mem[ceil32(_14262) + ceil32(mem[96]) + mem[64] + 260] = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    idx = 0
                    s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
                    t = ceil32(_14262) + ceil32(mem[96]) + mem[64] + (32 * _17081) + 292
                    u = ceil32(_14262) + ceil32(mem[96]) + mem[64] + 292
                    while idx < _17081:
                        mem[u] = t + -ceil32(_14262) + -ceil32(_11456) + -_11451 - 292
                        _19877 = mem[s]
                        _19900 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _19900:
                            mem[v + t + 32] = mem[v + _19877 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_19900) > _19900:
                            mem[_19900 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_19900) + t + 32
                        u = u + 32
                        continue 
                    mem[_11451 + 132] = _11446
                    mem[_11451 + 164] = _11450
                    require ext_code.size(address(_11438))
                    call address(_11438).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] - 4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19913 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _19937 = mem[_19913]
                    assets.length++
                    mem[0] = 6
                    assets[assets.length].field_0 = _19937
                    _22661 = mem[_8559]
                    idx = 0
                    s = 0
                    while idx < _22661:
                        mem[0] = _19937
                        mem[32] = 11
                        _22726 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        mem[_22726] = mem[(32 * idx) + _8559 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        mem[_22726 + 32] = mem[(32 * idx + 1) + _8559 + 32]
                        sub_f0503ac0[_19937].field_0++
                        mem[0] = sha3(_19937, 11)
                        sub_f0503ac0[_19937][sub_f0503ac0[_19937].field_0].field_0 = mem[_22726]
                        sub_f0503ac0[_19937][sub_f0503ac0[_19937].field_0].field_256 = mem[_22726 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        if mem[(32 * idx) + _8559 + 32] and mem[(32 * idx + 1) + _8559 + 32] > -1 / mem[(32 * idx) + _8559 + 32]:
                            revert with 0, 17
                        if s > !(mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32]):
                            revert with 0, 17
                        if idx > -3:
                            revert with 0, 17
                        _22661 = mem[_8559]
                        idx = idx + 2
                        s = s + (mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32])
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = vaultAddress
                    mem[mem[64] + 68] = s * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1
                    require ext_code.size(address(cd[196]))
                    call address(cd[196]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, vaultAddress, s * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22757 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_22757] == bool(mem[_22757])
                    _22861 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_22861] = msg.sender
                    mem[_22861 + 32] = address(cd[132])
                    if 0 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22861 + 64] = mem[_5708 + 32]
                    if 1 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22861 + 96] = mem[_5708 + 64]
                    mem[_22861 + 128] = address(cd[196])
                    mem[_22861 + 160] = s * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1
                    mem[0] = _19937
                    mem[32] = 10
                    stor10[_19937].field_0 = msg.sender
                    stor10[_19937].field_256 = address(cd[132])
                    _22989 = mem[_22861 + 64]
                    _22990 = mem[mem[_22861 + 64]]
                    if stor10[_19937].field_512:
                        if stor10[_19937].field_512 == uint255(stor10[_19937].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19937, 10) + 2
                        if _22990:
                            stor10[_19937][2][].field_0 = Array(len=_22990, data=mem[_22989 + 32 len _22990])
                            _28619 = mem[_22861 + 96]
                            _28620 = mem[mem[_22861 + 96]]
                            if stor10[_19937].field_768:
                                if stor10[_19937].field_768 == uint255(stor10[_19937].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28620:
                                    stor10[_19937][3][].field_0 = Array(len=_28620, data=mem[_28619 + 32 len _28620])
                                else:
                                    stor10[_19937].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19937].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19937][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19937].field_768 == stor10[_19937].field_769 < 32:
                                    revert with 0, 34
                                if _28620:
                                    stor10[_19937][3][].field_0 = Array(len=_28620, data=mem[_28619 + 32 len _28620])
                                else:
                                    stor10[_19937].field_768 = 0
                                    idx = 0
                                    while stor10[_19937].field_769 + 31 / 32 > idx:
                                        stor10[_19937][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19937].field_512 = 0
                            idx = 0
                            while (uint255(stor10[_19937].field_512) * 0.5) + 31 / 32 > idx:
                                stor10[_19937][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25523 = mem[_22861 + 96]
                            _25524 = mem[mem[_22861 + 96]]
                            if stor10[_19937].field_768:
                                if stor10[_19937].field_768 == uint255(stor10[_19937].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25524:
                                    stor10[_19937][3][].field_0 = Array(len=_25524, data=mem[_25523 + 32 len _25524])
                                else:
                                    stor10[_19937].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19937].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19937][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19937].field_768 == stor10[_19937].field_769 < 32:
                                    revert with 0, 34
                                if _25524:
                                    stor10[_19937][3][].field_0 = Array(len=_25524, data=mem[_25523 + 32 len _25524])
                                else:
                                    stor10[_19937].field_768 = 0
                                    idx = 0
                                    while stor10[_19937].field_769 + 31 / 32 > idx:
                                        stor10[_19937][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if stor10[_19937].field_512 == stor10[_19937].field_513 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19937, 10) + 2
                        if _22990:
                            stor10[_19937][2][].field_0 = Array(len=_22990, data=mem[_22989 + 32 len _22990])
                            _28657 = mem[_22861 + 96]
                            _28658 = mem[mem[_22861 + 96]]
                            if stor10[_19937].field_768:
                                if stor10[_19937].field_768 == uint255(stor10[_19937].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28658:
                                    stor10[_19937][3][].field_0 = Array(len=_28658, data=mem[_28657 + 32 len _28658])
                                else:
                                    stor10[_19937].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19937].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19937][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19937].field_768 == stor10[_19937].field_769 < 32:
                                    revert with 0, 34
                                if _28658:
                                    stor10[_19937][3][].field_0 = Array(len=_28658, data=mem[_28657 + 32 len _28658])
                                else:
                                    stor10[_19937].field_768 = 0
                                    idx = 0
                                    while stor10[_19937].field_769 + 31 / 32 > idx:
                                        stor10[_19937][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19937].field_512 = 0
                            idx = 0
                            while stor10[_19937].field_513 + 31 / 32 > idx:
                                stor10[_19937][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25529 = mem[_22861 + 96]
                            _25530 = mem[mem[_22861 + 96]]
                            if stor10[_19937].field_768:
                                if stor10[_19937].field_768 == uint255(stor10[_19937].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25530:
                                    stor10[_19937][3][].field_0 = Array(len=_25530, data=mem[_25529 + 32 len _25530])
                                else:
                                    stor10[_19937].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19937].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19937][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19937].field_768 == stor10[_19937].field_769 < 32:
                                    revert with 0, 34
                                if _25530:
                                    stor10[_19937][3][].field_0 = Array(len=_25530, data=mem[_25529 + 32 len _25530])
                                else:
                                    stor10[_19937].field_768 = 0
                                    idx = 0
                                    while stor10[_19937].field_769 + 31 / 32 > idx:
                                        stor10[_19937][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    stor10[_19937].field_1024 = address(cd[196])
                    stor10[_19937].field_1280 = s * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1 * uint255(_22661 + 1) >> 1
                else:
                    mem[_14262 + ceil32(mem[96]) + mem[64] + 260] = 0
                    mem[mem[64] + 100] = ceil32(_14262) + ceil32(mem[96]) + 256
                    _17082 = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    mem[ceil32(_14262) + ceil32(mem[96]) + mem[64] + 260] = mem[ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 98]
                    idx = 0
                    s = ceil32(ceil32(('cd', 4).length)) + ceil32(ceil32(('cd', 36).length)) + 130
                    t = ceil32(_14262) + ceil32(mem[96]) + mem[64] + (32 * _17082) + 292
                    u = ceil32(_14262) + ceil32(mem[96]) + mem[64] + 292
                    while idx < _17082:
                        mem[u] = t + -ceil32(_14262) + -ceil32(_11456) + -_11451 - 292
                        _19878 = mem[s]
                        _19902 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _19902:
                            mem[v + t + 32] = mem[v + _19878 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_19902) > _19902:
                            mem[_19902 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_19902) + t + 32
                        u = u + 32
                        continue 
                    mem[_11451 + 132] = _11446
                    mem[_11451 + 164] = _11450
                    require ext_code.size(address(_11438))
                    call address(_11438).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len t + -mem[64] - 4]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19914 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _19938 = mem[_19914]
                    assets.length++
                    mem[0] = 6
                    assets[assets.length].field_0 = _19938
                    _22662 = mem[_8559]
                    idx = 0
                    s = 0
                    while idx < _22662:
                        mem[0] = _19938
                        mem[32] = 11
                        _22732 = mem[64]
                        mem[64] = mem[64] + 64
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        mem[_22732] = mem[(32 * idx) + _8559 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        mem[_22732 + 32] = mem[(32 * idx + 1) + _8559 + 32]
                        sub_f0503ac0[_19938].field_0++
                        mem[0] = sha3(_19938, 11)
                        sub_f0503ac0[_19938][sub_f0503ac0[_19938].field_0].field_0 = mem[_22732]
                        sub_f0503ac0[_19938][sub_f0503ac0[_19938].field_0].field_256 = mem[_22732 + 32]
                        if 1 > !idx:
                            revert with 0, 17
                        if idx + 1 >= mem[_8559]:
                            revert with 0, 50
                        if idx >= mem[_8559]:
                            revert with 0, 50
                        if mem[(32 * idx) + _8559 + 32] and mem[(32 * idx + 1) + _8559 + 32] > -1 / mem[(32 * idx) + _8559 + 32]:
                            revert with 0, 17
                        if s > !(mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32]):
                            revert with 0, 17
                        if idx > -3:
                            revert with 0, 17
                        _22662 = mem[_8559]
                        idx = idx + 2
                        s = s + (mem[(32 * idx) + _8559 + 32] * mem[(32 * idx + 1) + _8559 + 32])
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = vaultAddress
                    mem[mem[64] + 68] = s * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1
                    require ext_code.size(address(cd[196]))
                    call address(cd[196]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, vaultAddress, s * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _22758 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_22758] == bool(mem[_22758])
                    _22864 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_22864] = msg.sender
                    mem[_22864 + 32] = address(cd[132])
                    if 0 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22864 + 64] = mem[_5708 + 32]
                    if 1 >= mem[_5708]:
                        revert with 0, 50
                    mem[_22864 + 96] = mem[_5708 + 64]
                    mem[_22864 + 128] = address(cd[196])
                    mem[_22864 + 160] = s * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1
                    mem[0] = _19938
                    mem[32] = 10
                    stor10[_19938].field_0 = msg.sender
                    stor10[_19938].field_256 = address(cd[132])
                    _22996 = mem[_22864 + 64]
                    _22997 = mem[mem[_22864 + 64]]
                    if stor10[_19938].field_512:
                        if stor10[_19938].field_512 == uint255(stor10[_19938].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19938, 10) + 2
                        if _22997:
                            stor10[_19938][2][].field_0 = Array(len=_22997, data=mem[_22996 + 32 len _22997])
                            _28695 = mem[_22864 + 96]
                            _28696 = mem[mem[_22864 + 96]]
                            if stor10[_19938].field_768:
                                if stor10[_19938].field_768 == uint255(stor10[_19938].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28696:
                                    stor10[_19938][3][].field_0 = Array(len=_28696, data=mem[_28695 + 32 len _28696])
                                else:
                                    stor10[_19938].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19938].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19938][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19938].field_768 == stor10[_19938].field_769 < 32:
                                    revert with 0, 34
                                if _28696:
                                    stor10[_19938][3][].field_0 = Array(len=_28696, data=mem[_28695 + 32 len _28696])
                                else:
                                    stor10[_19938].field_768 = 0
                                    idx = 0
                                    while stor10[_19938].field_769 + 31 / 32 > idx:
                                        stor10[_19938][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19938].field_512 = 0
                            idx = 0
                            while (uint255(stor10[_19938].field_512) * 0.5) + 31 / 32 > idx:
                                stor10[_19938][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25535 = mem[_22864 + 96]
                            _25536 = mem[mem[_22864 + 96]]
                            if stor10[_19938].field_768:
                                if stor10[_19938].field_768 == uint255(stor10[_19938].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25536:
                                    stor10[_19938][3][].field_0 = Array(len=_25536, data=mem[_25535 + 32 len _25536])
                                else:
                                    stor10[_19938].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19938].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19938][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19938].field_768 == stor10[_19938].field_769 < 32:
                                    revert with 0, 34
                                if _25536:
                                    stor10[_19938][3][].field_0 = Array(len=_25536, data=mem[_25535 + 32 len _25536])
                                else:
                                    stor10[_19938].field_768 = 0
                                    idx = 0
                                    while stor10[_19938].field_769 + 31 / 32 > idx:
                                        stor10[_19938][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if stor10[_19938].field_512 == stor10[_19938].field_513 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_19938, 10) + 2
                        if _22997:
                            stor10[_19938][2][].field_0 = Array(len=_22997, data=mem[_22996 + 32 len _22997])
                            _28733 = mem[_22864 + 96]
                            _28734 = mem[mem[_22864 + 96]]
                            if stor10[_19938].field_768:
                                if stor10[_19938].field_768 == uint255(stor10[_19938].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _28734:
                                    stor10[_19938][3][].field_0 = Array(len=_28734, data=mem[_28733 + 32 len _28734])
                                else:
                                    stor10[_19938].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19938].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19938][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19938].field_768 == stor10[_19938].field_769 < 32:
                                    revert with 0, 34
                                if _28734:
                                    stor10[_19938][3][].field_0 = Array(len=_28734, data=mem[_28733 + 32 len _28734])
                                else:
                                    stor10[_19938].field_768 = 0
                                    idx = 0
                                    while stor10[_19938].field_769 + 31 / 32 > idx:
                                        stor10[_19938][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            stor10[_19938].field_512 = 0
                            idx = 0
                            while stor10[_19938].field_513 + 31 / 32 > idx:
                                stor10[_19938][idx + 2].field_0 = 0
                                idx = idx + 1
                                continue 
                            _25541 = mem[_22864 + 96]
                            _25542 = mem[mem[_22864 + 96]]
                            if stor10[_19938].field_768:
                                if stor10[_19938].field_768 == uint255(stor10[_19938].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if _25542:
                                    stor10[_19938][3][].field_0 = Array(len=_25542, data=mem[_25541 + 32 len _25542])
                                else:
                                    stor10[_19938].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[_19938].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[_19938][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[_19938].field_768 == stor10[_19938].field_769 < 32:
                                    revert with 0, 34
                                if _25542:
                                    stor10[_19938][3][].field_0 = Array(len=_25542, data=mem[_25541 + 32 len _25542])
                                else:
                                    stor10[_19938].field_768 = 0
                                    idx = 0
                                    while stor10[_19938].field_769 + 31 / 32 > idx:
                                        stor10[_19938][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    stor10[_19938].field_1024 = address(cd[196])
                    stor10[_19938].field_1280 = s * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1 * uint255(_22662 + 1) >> 1
}



}
