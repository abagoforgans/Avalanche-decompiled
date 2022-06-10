contract main {




// =====================  Runtime code  =====================


const sub_6db3dffb(?) = 0

const sub_bbab2ede(?) = 2

const sub_d2ae3170(?) = 1

const sub_dd9992a2(?) = 500


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

function totalAssets() {
    return assets.length
}

function initialized() {
    return bool(stor1)
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

function mint(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < assets.length
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x975057e7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x2d65eb9 with:
         gas gas_remaining wei
        args assets[arg1].field_0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value >= ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg2:
        if ext_call.return_data[0] < idx:
            revert with 0, 17
        mem[0] = ext_call.return_data[0] - idx
        mem[32] = 7
        tokenAssets[ext_call.return_data[0] - idx].field_0 = assets[arg1].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return ext_call.return_data[0]
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

function sub_6c0a4749(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require ('cd', 68).length == states
    if cd[100] <= 0:
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0x975057e7 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 96] = 0xc7a8405d00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = stor2
        mem[ceil32(return_data.size) + 132] = 192
        mem[ceil32(return_data.size) + 292] = ('cd', 4).length
        mem[ceil32(return_data.size) + 324 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
        mem[('cd', 4).length + ceil32(return_data.size) + 324] = 0
        mem[ceil32(return_data.size) + 164] = ceil32(('cd', 4).length) + 224
        mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + 324] = ('cd', 36).length
        mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + 356 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
        mem[('cd', 36).length + ceil32(return_data.size) + ceil32(('cd', 4).length) + 356] = 0
        mem[ceil32(return_data.size) + 196] = ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 256
        mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 356] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + 388
        u = ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 388
        while idx < ('cd', 68).length:
            mem[u] = t + -ceil32(return_data.size) + -ceil32(('cd', 4).length) + -ceil32(('cd', 36).length) - 388
            require cd[s] < calldata.size + -cd[68] - 67
            require cd[(cd[68] + cd[s] + 36)] <= test266151307()
            require cd[68] + 36 <= calldata.size - cd[(cd[68] + cd[s] + 36)]
            mem[t] = cd[(cd[68] + cd[s] + 36)]
            mem[t + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
            mem[cd[(cd[68] + cd[s] + 36)] + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        mem[ceil32(return_data.size) + 228] = cd[100]
        mem[ceil32(return_data.size) + 260] = cd[132]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length) + -mem[64] + 384]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        assets.length++
        assets[assets.length].field_0 = mem[_34]
        mem[mem[64]] = mem[_34]
    else:
        if msg.sender == owner:
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.0x975057e7 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 96] = 0xc7a8405d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = stor2
            mem[ceil32(return_data.size) + 132] = 192
            mem[ceil32(return_data.size) + 292] = ('cd', 4).length
            mem[ceil32(return_data.size) + 324 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + ceil32(return_data.size) + 324] = 0
            mem[ceil32(return_data.size) + 164] = ceil32(('cd', 4).length) + 224
            mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + 324] = ('cd', 36).length
            mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + 356 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
            mem[('cd', 36).length + ceil32(return_data.size) + ceil32(('cd', 4).length) + 356] = 0
            mem[ceil32(return_data.size) + 196] = ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 256
            mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 356] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + 388
            u = ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 388
            while idx < ('cd', 68).length:
                mem[u] = t + -ceil32(return_data.size) + -ceil32(('cd', 4).length) + -ceil32(('cd', 36).length) - 388
                require cd[s] < calldata.size + -cd[68] - 67
                require cd[(cd[68] + cd[s] + 36)] <= test266151307()
                require cd[68] + 36 <= calldata.size - cd[(cd[68] + cd[s] + 36)]
                mem[t] = cd[(cd[68] + cd[s] + 36)]
                mem[t + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
                mem[cd[(cd[68] + cd[s] + 36)] + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
                u = u + 32
                continue 
            mem[ceil32(return_data.size) + 228] = cd[100]
            mem[ceil32(return_data.size) + 260] = cd[132]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length) + -mem[64] + 384]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _35 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            assets.length++
            assets[assets.length].field_0 = mem[_35]
            mem[mem[64]] = mem[_35]
        else:
            if cd[100] and cd[132] > -1 / cd[100]:
                revert with 0, 17
            if cd[100] * cd[132] and 500 > -1 / cd[100] * cd[132]:
                revert with 0, 17
            require msg.value > 500 * cd[100] * cd[132] / 10000
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.0x975057e7 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 96] = 0xc7a8405d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = stor2
            mem[ceil32(return_data.size) + 132] = 192
            mem[ceil32(return_data.size) + 292] = ('cd', 4).length
            mem[ceil32(return_data.size) + 324 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + ceil32(return_data.size) + 324] = 0
            mem[ceil32(return_data.size) + 164] = ceil32(('cd', 4).length) + 224
            mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + 324] = ('cd', 36).length
            mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + 356 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
            mem[('cd', 36).length + ceil32(return_data.size) + ceil32(('cd', 4).length) + 356] = 0
            mem[ceil32(return_data.size) + 196] = ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 256
            mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 356] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + 388
            u = ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 388
            while idx < ('cd', 68).length:
                mem[u] = t + -ceil32(return_data.size) + -ceil32(('cd', 4).length) + -ceil32(('cd', 36).length) - 388
                require cd[s] < calldata.size + -cd[68] - 67
                require cd[(cd[68] + cd[s] + 36)] <= test266151307()
                require cd[68] + 36 <= calldata.size - cd[(cd[68] + cd[s] + 36)]
                mem[t] = cd[(cd[68] + cd[s] + 36)]
                mem[t + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
                mem[cd[(cd[68] + cd[s] + 36)] + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
                u = u + 32
                continue 
            mem[ceil32(return_data.size) + 228] = cd[100]
            mem[ceil32(return_data.size) + 260] = cd[132]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length) + -mem[64] + 384]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _36 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            assets.length++
            assets[assets.length].field_0 = mem[_36]
            mem[mem[64]] = mem[_36]
    return memory
      from mem[64]
       len 32
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
            require return_data.size >= _9 + _138 + (32 * _142) + 32
            s = ceil32(return_data.size) + _9 + _138 + 128
            t = _146 + 32
            idx = 0
            while idx < _142:
                _190 = mem[s]
                require mem[s] <= test266151307()
                require ceil32(return_data.size) + _9 + _138 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
                _198 = mem[ceil32(return_data.size) + _9 + _138 + mem[s] + 128]
                if mem[ceil32(return_data.size) + _9 + _138 + mem[s] + 128] > test266151307():
                    revert with 0, 65
                _202 = mem[64]
                if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _138 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _138 + mem[s] + 128])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _138 + mem[s] + 128])) + 1
                mem[_202] = _198
                require _9 + _138 + _190 + _198 + 64 <= return_data.size
                u = 0
                while u < _198:
                    mem[u + _202 + 32] = mem[u + ceil32(return_data.size) + _9 + _138 + _190 + 160]
                    u = u + 32
                    continue 
                if ceil32(_198) > _198:
                    mem[_198 + _202 + 32] = 0
                mem[t] = _202
                s = s + 32
                t = t + 32
                idx = idx + 1
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
            require return_data.size >= _9 + _139 + (32 * _143) + 32
            s = ceil32(return_data.size) + _9 + _139 + 128
            t = _147 + 32
            idx = 0
            while idx < _143:
                _191 = mem[s]
                require mem[s] <= test266151307()
                require ceil32(return_data.size) + _9 + _139 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
                _199 = mem[ceil32(return_data.size) + _9 + _139 + mem[s] + 128]
                if mem[ceil32(return_data.size) + _9 + _139 + mem[s] + 128] > test266151307():
                    revert with 0, 65
                _203 = mem[64]
                if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _139 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _139 + mem[s] + 128])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _139 + mem[s] + 128])) + 1
                mem[_203] = _199
                require _9 + _139 + _191 + _199 + 64 <= return_data.size
                u = 0
                while u < _199:
                    mem[u + _203 + 32] = mem[u + ceil32(return_data.size) + _9 + _139 + _191 + 160]
                    u = u + 32
                    continue 
                if ceil32(_199) > _199:
                    mem[_199 + _203 + 32] = 0
                mem[t] = _203
                s = s + 32
                t = t + 32
                idx = idx + 1
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
            require return_data.size >= _9 + _140 + (32 * _144) + 32
            s = ceil32(return_data.size) + _9 + _140 + 128
            t = _148 + 32
            idx = 0
            while idx < _144:
                _192 = mem[s]
                require mem[s] <= test266151307()
                require ceil32(return_data.size) + _9 + _140 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
                _200 = mem[ceil32(return_data.size) + _9 + _140 + mem[s] + 128]
                if mem[ceil32(return_data.size) + _9 + _140 + mem[s] + 128] > test266151307():
                    revert with 0, 65
                _204 = mem[64]
                if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _140 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _140 + mem[s] + 128])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _140 + mem[s] + 128])) + 1
                mem[_204] = _200
                require _9 + _140 + _192 + _200 + 64 <= return_data.size
                u = 0
                while u < _200:
                    mem[u + _204 + 32] = mem[u + ceil32(return_data.size) + _9 + _140 + _192 + 160]
                    u = u + 32
                    continue 
                if ceil32(_200) > _200:
                    mem[_200 + _204 + 32] = 0
                mem[t] = _204
                s = s + 32
                t = t + 32
                idx = idx + 1
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
            require return_data.size >= _9 + _141 + (32 * _145) + 32
            s = ceil32(return_data.size) + _9 + _141 + 128
            t = _149 + 32
            idx = 0
            while idx < _145:
                _193 = mem[s]
                require mem[s] <= test266151307()
                require ceil32(return_data.size) + _9 + _141 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
                _201 = mem[ceil32(return_data.size) + _9 + _141 + mem[s] + 128]
                if mem[ceil32(return_data.size) + _9 + _141 + mem[s] + 128] > test266151307():
                    revert with 0, 65
                _205 = mem[64]
                if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _141 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _141 + mem[s] + 128])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _141 + mem[s] + 128])) + 1
                mem[_205] = _201
                require _9 + _141 + _193 + _201 + 64 <= return_data.size
                u = 0
                while u < _201:
                    mem[u + _205 + 32] = mem[u + ceil32(return_data.size) + _9 + _141 + _193 + 160]
                    u = u + 32
                    continue 
                if ceil32(_201) > _201:
                    mem[_201 + _205 + 32] = 0
                mem[t] = _205
                s = s + 32
                t = t + 32
                idx = idx + 1
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
            require return_data.size >= _9 + _186 + (32 * _190) + 32
            s = ceil32(return_data.size) + _9 + _186 + 128
            t = _194 + 32
            idx = 0
            while idx < _190:
                _262 = mem[s]
                require mem[s] <= test266151307()
                require ceil32(return_data.size) + _9 + _186 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
                _270 = mem[ceil32(return_data.size) + _9 + _186 + mem[s] + 128]
                if mem[ceil32(return_data.size) + _9 + _186 + mem[s] + 128] > test266151307():
                    revert with 0, 65
                _274 = mem[64]
                if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _186 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _186 + mem[s] + 128])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _186 + mem[s] + 128])) + 1
                mem[_274] = _270
                require _9 + _186 + _262 + _270 + 64 <= return_data.size
                u = 0
                while u < _270:
                    mem[u + _274 + 32] = mem[u + ceil32(return_data.size) + _9 + _186 + _262 + 160]
                    u = u + 32
                    continue 
                if ceil32(_270) > _270:
                    mem[_270 + _274 + 32] = 0
                mem[t] = _274
                s = s + 32
                t = t + 32
                idx = idx + 1
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
        require return_data.size >= _9 + _187 + (32 * _191) + 32
        s = ceil32(return_data.size) + _9 + _187 + 128
        t = _195 + 32
        idx = 0
        while idx < _191:
            _263 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _9 + _187 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _271 = mem[ceil32(return_data.size) + _9 + _187 + mem[s] + 128]
            if mem[ceil32(return_data.size) + _9 + _187 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _275 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _187 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _187 + mem[s] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _187 + mem[s] + 128])) + 1
            mem[_275] = _271
            require _9 + _187 + _263 + _271 + 64 <= return_data.size
            u = 0
            while u < _271:
                mem[u + _275 + 32] = mem[u + ceil32(return_data.size) + _9 + _187 + _263 + 160]
                u = u + 32
                continue 
            if ceil32(_271) > _271:
                mem[_271 + _275 + 32] = 0
            mem[t] = _275
            s = s + 32
            t = t + 32
            idx = idx + 1
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
        require return_data.size >= _9 + _188 + (32 * _192) + 32
        s = ceil32(return_data.size) + _9 + _188 + 128
        t = _196 + 32
        idx = 0
        while idx < _192:
            _264 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _9 + _188 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _272 = mem[ceil32(return_data.size) + _9 + _188 + mem[s] + 128]
            if mem[ceil32(return_data.size) + _9 + _188 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _276 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _188 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _188 + mem[s] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _188 + mem[s] + 128])) + 1
            mem[_276] = _272
            require _9 + _188 + _264 + _272 + 64 <= return_data.size
            u = 0
            while u < _272:
                mem[u + _276 + 32] = mem[u + ceil32(return_data.size) + _9 + _188 + _264 + 160]
                u = u + 32
                continue 
            if ceil32(_272) > _272:
                mem[_272 + _276 + 32] = 0
            mem[t] = _276
            s = s + 32
            t = t + 32
            idx = idx + 1
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
    require return_data.size >= _9 + _189 + (32 * _193) + 32
    s = ceil32(return_data.size) + _9 + _189 + 128
    t = _197 + 32
    idx = 0
    while idx < _193:
        _265 = mem[s]
        require mem[s] <= test266151307()
        require ceil32(return_data.size) + _9 + _189 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
        _273 = mem[ceil32(return_data.size) + _9 + _189 + mem[s] + 128]
        if mem[ceil32(return_data.size) + _9 + _189 + mem[s] + 128] > test266151307():
            revert with 0, 65
        _277 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _189 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _189 + mem[s] + 128])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + _189 + mem[s] + 128])) + 1
        mem[_277] = _273
        require _9 + _189 + _265 + _273 + 64 <= return_data.size
        u = 0
        while u < _273:
            mem[u + _277 + 32] = mem[u + ceil32(return_data.size) + _9 + _189 + _265 + 160]
            u = u + 32
            continue 
        if ceil32(_273) > _273:
            mem[_273 + _277 + 32] = 0
        mem[t] = _277
        s = s + 32
        t = t + 32
        idx = idx + 1
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

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x5d8f6b73(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3ccfd60b(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require msg.sender == owner
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x40a5737f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require msg.sender == factoryAddress
                        stor2 = cd[4]
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x4709384f(?????):
                            require unknown_0x5b2dfeb8(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            return sub_aa9f3eca[cd[4]].field_0 != 1
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x6352211e with:
                                gas gas_remaining wei
                               args cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require msg.sender == ext_call.return_data[12 len 20]
                        require 2 == sub_aa9f3eca[cd[4]].field_0
                        require ext_code.size(vaultAddress)
                        call vaultAddress.0x88d9c378 with:
                             gas gas_remaining wei
                            args cd[4], msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < states
                        sub_aa9f3eca[cd[4]].field_0 = 0
                        emit 0x577690a7: cd[4], 0
            if totalAssets() == uint32(call.func_hash) >> 224:
                require not msg.value
                return assets.length
            if unknown_0x158ef93e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(stor1)
            require unknown_0x1b2ef1ca(?????) == uint32(call.func_hash) >> 224
            require calldata.size - 4 >= 64
            require cd[4] < assets.length
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.0x975057e7 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x2d65eb9 with:
                 gas gas_remaining wei
                args assets[cd[4]].field_0, cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.value >= ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < cd[36]:
                if ext_call.return_data[0] < idx:
                    revert with 0, 17
                mem[0] = ext_call.return_data[0] - idx
                mem[32] = 7
                tokenAssets[ext_call.return_data[0] - idx].field_0 = assets[cd[4]].field_0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            return ext_call.return_data[0]
        if unknown_0x6c0a4749(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x5d8f6b73(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
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
            else:
                if unknown_0x6352211e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x6352211e with:
                            gas gas_remaining wei
                           args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    return ext_call.return_data[12 len 20]
                if unknown_0x6817031b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require msg.sender == owner
                    vaultAddress = address(cd[4])
                else:
                    require unknown_0x690e7c09(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x6352211e with:
                            gas gas_remaining wei
                           args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require msg.sender == ext_call.return_data[12 len 20]
                    require 1 == sub_aa9f3eca[cd[4]].field_0
                    require 2 < states
                    sub_aa9f3eca[cd[4]].field_0 = 2
                    sub_aa9f3eca[cd[4]].field_8 = 0
                    emit 0x577690a7: cd[4], 2
        if uint32(call.func_hash) >> 224 != unknown_0x6c0a4749(?????):
            if unknown_0x6db3dffb(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 0
            if uint32(call.func_hash) >> 224 != unknown_0x78e13098(?????):
                require unknown_0x82482f7c(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return states
            require not msg.value
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
        require calldata.size - 4 >= 160
        require cd[4] <= test266151307()
        require cd[4] + 35 < calldata.size
        require ('cd', 4).length <= test266151307()
        require cd[4] + ('cd', 4).length + 36 <= calldata.size
        require cd[36] <= test266151307()
        require cd[36] + 35 < calldata.size
        require ('cd', 36).length <= test266151307()
        require cd[36] + ('cd', 36).length + 36 <= calldata.size
        require cd[68] <= test266151307()
        require cd[68] + 35 < calldata.size
        require ('cd', 68).length <= test266151307()
        require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
        require ('cd', 68).length == states
        if cd[100] <= 0:
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.0x975057e7 with:
                    gas gas_remaining wei
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 128] = 0xc7a8405d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 132] = stor2
            mem[ceil32(return_data.size) + 164] = 192
            mem[ceil32(return_data.size) + 324] = ('cd', 4).length
            mem[ceil32(return_data.size) + 356 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            mem[('cd', 4).length + ceil32(return_data.size) + 356] = 0
            mem[ceil32(return_data.size) + 196] = ceil32(('cd', 4).length) + 224
            mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + 356] = ('cd', 36).length
            mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + 388 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
            mem[('cd', 36).length + ceil32(return_data.size) + ceil32(('cd', 4).length) + 388] = 0
            mem[ceil32(return_data.size) + 228] = ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 256
            mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 388] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + 420
            u = ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 420
            while idx < ('cd', 68).length:
                mem[u] = t + -ceil32(return_data.size) + -ceil32(('cd', 4).length) + -ceil32(('cd', 36).length) - 420
                require cd[s] < calldata.size + -cd[68] - 67
                require cd[(cd[68] + cd[s] + 36)] <= test266151307()
                require cd[68] + 36 <= calldata.size - cd[(cd[68] + cd[s] + 36)]
                mem[t] = cd[(cd[68] + cd[s] + 36)]
                mem[t + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
                mem[cd[(cd[68] + cd[s] + 36)] + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
                u = u + 32
                continue 
            mem[ceil32(return_data.size) + 260] = cd[100]
            mem[ceil32(return_data.size) + 292] = cd[132]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length) + -mem[64] + 416]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _411 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            assets.length++
            assets[assets.length].field_0 = mem[_411]
            mem[mem[64]] = mem[_411]
        else:
            if msg.sender == owner:
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.0x975057e7 with:
                        gas gas_remaining wei
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 128] = 0xc7a8405d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = stor2
                mem[ceil32(return_data.size) + 164] = 192
                mem[ceil32(return_data.size) + 324] = ('cd', 4).length
                mem[ceil32(return_data.size) + 356 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                mem[('cd', 4).length + ceil32(return_data.size) + 356] = 0
                mem[ceil32(return_data.size) + 196] = ceil32(('cd', 4).length) + 224
                mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + 356] = ('cd', 36).length
                mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + 388 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + ceil32(return_data.size) + ceil32(('cd', 4).length) + 388] = 0
                mem[ceil32(return_data.size) + 228] = ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 256
                mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 388] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + 420
                u = ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 420
                while idx < ('cd', 68).length:
                    mem[u] = t + -ceil32(return_data.size) + -ceil32(('cd', 4).length) + -ceil32(('cd', 36).length) - 420
                    require cd[s] < calldata.size + -cd[68] - 67
                    require cd[(cd[68] + cd[s] + 36)] <= test266151307()
                    require cd[68] + 36 <= calldata.size - cd[(cd[68] + cd[s] + 36)]
                    mem[t] = cd[(cd[68] + cd[s] + 36)]
                    mem[t + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
                    mem[cd[(cd[68] + cd[s] + 36)] + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + 260] = cd[100]
                mem[ceil32(return_data.size) + 292] = cd[132]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length) + -mem[64] + 416]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _412 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                assets.length++
                assets[assets.length].field_0 = mem[_412]
                mem[mem[64]] = mem[_412]
            else:
                if cd[100] and cd[132] > -1 / cd[100]:
                    revert with 0, 17
                if cd[100] * cd[132] and 500 > -1 / cd[100] * cd[132]:
                    revert with 0, 17
                require msg.value > 500 * cd[100] * cd[132] / 10000
                require ext_code.size(factoryAddress)
                staticcall factoryAddress.0x975057e7 with:
                        gas gas_remaining wei
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 128] = 0xc7a8405d00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = stor2
                mem[ceil32(return_data.size) + 164] = 192
                mem[ceil32(return_data.size) + 324] = ('cd', 4).length
                mem[ceil32(return_data.size) + 356 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                mem[('cd', 4).length + ceil32(return_data.size) + 356] = 0
                mem[ceil32(return_data.size) + 196] = ceil32(('cd', 4).length) + 224
                mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + 356] = ('cd', 36).length
                mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + 388 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + ceil32(return_data.size) + ceil32(('cd', 4).length) + 388] = 0
                mem[ceil32(return_data.size) + 228] = ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 256
                mem[ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 388] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + 420
                u = ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + 420
                while idx < ('cd', 68).length:
                    mem[u] = t + -ceil32(return_data.size) + -ceil32(('cd', 4).length) + -ceil32(('cd', 36).length) - 420
                    require cd[s] < calldata.size + -cd[68] - 67
                    require cd[(cd[68] + cd[s] + 36)] <= test266151307()
                    require cd[68] + 36 <= calldata.size - cd[(cd[68] + cd[s] + 36)]
                    mem[t] = cd[(cd[68] + cd[s] + 36)]
                    mem[t + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
                    mem[cd[(cd[68] + cd[s] + 36)] + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
                    u = u + 32
                    continue 
                mem[ceil32(return_data.size) + 260] = cd[100]
                mem[ceil32(return_data.size) + 292] = cd[132]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(return_data.size) + ceil32(('cd', 4).length) + ceil32(('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 68).length) + -mem[64] + 416]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _413 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                assets.length++
                assets[assets.length].field_0 = mem[_413]
                mem[mem[64]] = mem[_413]
        return memory
          from mem[64]
           len 32
    if unknown_0xd2ae3170(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xf2fde38b(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                if unknown_0xf7087e0d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return tokenAssets[cd[4]].field_0
                if unknown_0xfbfa77cf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return vaultAddress
                require unknown_0xfc0c546a(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return tokenAddress
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            require msg.sender == owner
            call owner with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            owner = address(cd[4])
            emit OwnershipTransferred(owner, address(cd[4]));
        else:
            if unknown_0xd2ae3170(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 1
            if unknown_0xdd9992a2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 500
            if unknown_0xde80b0a5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if bool(stor5.length):
                    if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor5.length):
                        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor5.length):
                            if 31 < uint255(stor5.length) * 0.5:
                                mem[160] = uint256(stor5.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor5.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor5[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)])
                            mem[160] = 256 * stor5.length.field_8
                    else:
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 0, 34
                        if stor5.length.field_1:
                            if 31 < stor5.length.field_1:
                                mem[160] = uint256(stor5.field_0)
                                idx = 160
                                s = 0
                                while stor5.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor5[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)])
                            mem[160] = 256 * stor5.length.field_8
                    mem[ceil32(uint255(stor5.length) * 0.5) + 224 len ceil32(uint255(stor5.length) * 0.5)] = mem[160 len ceil32(uint255(stor5.length) * 0.5)]
                    if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
                        mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
                if bool(stor5.length) == stor5.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor5.length):
                    if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor5.length):
                        if 31 < uint255(stor5.length) * 0.5:
                            mem[160] = uint256(stor5.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor5.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor5[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)])
                        mem[160] = 256 * stor5.length.field_8
                else:
                    if bool(stor5.length) == stor5.length.field_1 < 32:
                        revert with 0, 34
                    if stor5.length.field_1:
                        if 31 < stor5.length.field_1:
                            mem[160] = uint256(stor5.field_0)
                            idx = 160
                            s = 0
                            while stor5.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor5[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)])
                        mem[160] = 256 * stor5.length.field_8
                mem[ceil32(stor5.length.field_1) + 224 len ceil32(stor5.length.field_1)] = mem[160 len ceil32(stor5.length.field_1)]
                if ceil32(stor5.length.field_1) > stor5.length.field_1:
                    mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 224] = 0
                return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 224 len 2 * ceil32(stor5.length.field_1)]), 
            require unknown_0xea598cb0(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x6352211e with:
                    gas gas_remaining wei
                   args cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require msg.sender == ext_call.return_data[12 len 20]
            require not sub_aa9f3eca[cd[4]].field_0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.isEmpty(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require not ext_call.return_data[0]
            require 1 < states
            sub_aa9f3eca[cd[4]].field_0 = 1
            sub_aa9f3eca[cd[4]].field_8 = 0
            emit 0x577690a7: cd[4], 1
    if unknown_0xc45a0155(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return owner
        if unknown_0xaa9f3eca(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            return sub_aa9f3eca[cd[4]].field_0
        if unknown_0xbbab2ede(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 2
        require unknown_0xc4479ec6(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 64
        require msg.sender == owner
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0x975057e7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if cd[4] >= assets.length:
            revert with 0, 50
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xc4479ec6 with:
             gas gas_remaining wei
            args assets[cd[4]].field_0, cd[36]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if unknown_0xc45a0155(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return factoryAddress
    if uint32(call.func_hash) >> 224 != unknown_0xc87b56dd(?????):
        if unknown_0xcf35bdd0(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] < assets.length
            return assets[cd[4]].field_0
        require unknown_0xd206ff1c(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 32
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0x975057e7 with:
                gas gas_remaining wei
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if cd[4] >= assets.length:
            revert with 0, 50
        mem[0] = 6
        mem[ceil32(return_data.size) + 128] = 0xeac8f5b800000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 132] = assets[cd[4]].field_0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xeac8f5b8 with:
                gas gas_remaining wei
               args assets[cd[4]].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _161 = mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32
        require mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 <= test266151307()
        require return_data.size - mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 >= 192
        if not bool((2 * ceil32(return_data.size)) + 320 <= test266151307()):
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + 320
        _205 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + 128]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + 128] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + 128] + 159 < ceil32(return_data.size) + return_data.size + 128
        _212 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + 128] + 128]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + 128] + 128] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + 128] + 128])) + 193 < 192 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + 128] + 128])) + 321 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + 128] + 128])) + 321
        mem[(2 * ceil32(return_data.size)) + 320] = _212
        require mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + _205 + _212 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 352 len ceil32(_212)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], assets[cd[4]].field_32 + _205 + 160 len ceil32(_212)]
        if ceil32(_212) <= _212:
            mem[(2 * ceil32(return_data.size)) + 128] = (2 * ceil32(return_data.size)) + 320
            _416 = mem[ceil32(return_data.size) + _161 + 160]
            require mem[ceil32(return_data.size) + _161 + 160] <= test266151307()
            require ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 159 < ceil32(return_data.size) + return_data.size + 128
            _451 = mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 128]
            if mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 128] > test266151307():
                revert with 0, 65
            _465 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 128])) + 1
            mem[_465] = mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 128]
            require _161 + _416 + _451 + 32 <= return_data.size
            mem[_465 + 32 len ceil32(_451)] = mem[ceil32(return_data.size) + _161 + _416 + 160 len ceil32(_451)]
            if ceil32(_451) <= _451:
                mem[(2 * ceil32(return_data.size)) + 160] = _465
                _623 = mem[ceil32(return_data.size) + _161 + 192]
                require mem[ceil32(return_data.size) + _161 + 192] <= test266151307()
                require ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 159 < ceil32(return_data.size) + return_data.size + 128
                _641 = mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]
                if mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128] > test266151307():
                    revert with 0, 65
                _649 = mem[64]
                if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]) + 1
                mem[_649] = mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]
                require return_data.size >= _161 + _623 + (32 * _641) + 32
                s = ceil32(return_data.size) + _161 + _623 + 160
                t = _649 + 32
                idx = 0
                while idx < _641:
                    _761 = mem[s]
                    require mem[s] <= test266151307()
                    require ceil32(return_data.size) + _161 + _623 + mem[s] + 191 < ceil32(return_data.size) + return_data.size + 128
                    _777 = mem[ceil32(return_data.size) + _161 + _623 + mem[s] + 160]
                    if mem[ceil32(return_data.size) + _161 + _623 + mem[s] + 160] > test266151307():
                        revert with 0, 65
                    _785 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + _623 + mem[s] + 160])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + _623 + mem[s] + 160])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + _623 + mem[s] + 160])) + 1
                    mem[_785] = _777
                    require _161 + _623 + _761 + _777 + 64 <= return_data.size
                    u = 0
                    while u < _777:
                        mem[u + _785 + 32] = mem[u + ceil32(return_data.size) + _161 + _623 + _761 + 192]
                        u = u + 32
                        continue 
                    if ceil32(_777) > _777:
                        mem[_777 + _785 + 32] = 0
                    mem[t] = _785
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                mem[(2 * ceil32(return_data.size)) + 192] = _649
            else:
                mem[_451 + _465 + 32] = 0
                mem[(2 * ceil32(return_data.size)) + 160] = _465
                _624 = mem[ceil32(return_data.size) + _161 + 192]
                require mem[ceil32(return_data.size) + _161 + 192] <= test266151307()
                require ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 159 < ceil32(return_data.size) + return_data.size + 128
                _642 = mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]
                if mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128] > test266151307():
                    revert with 0, 65
                _650 = mem[64]
                if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]) + 1
                mem[_650] = mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]
                require return_data.size >= _161 + _624 + (32 * _642) + 32
                s = ceil32(return_data.size) + _161 + _624 + 160
                t = _650 + 32
                idx = 0
                while idx < _642:
                    _762 = mem[s]
                    require mem[s] <= test266151307()
                    require ceil32(return_data.size) + _161 + _624 + mem[s] + 191 < ceil32(return_data.size) + return_data.size + 128
                    _778 = mem[ceil32(return_data.size) + _161 + _624 + mem[s] + 160]
                    if mem[ceil32(return_data.size) + _161 + _624 + mem[s] + 160] > test266151307():
                        revert with 0, 65
                    _786 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + _624 + mem[s] + 160])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + _624 + mem[s] + 160])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + _624 + mem[s] + 160])) + 1
                    mem[_786] = _778
                    require _161 + _624 + _762 + _778 + 64 <= return_data.size
                    u = 0
                    while u < _778:
                        mem[u + _786 + 32] = mem[u + ceil32(return_data.size) + _161 + _624 + _762 + 192]
                        u = u + 32
                        continue 
                    if ceil32(_778) > _778:
                        mem[_778 + _786 + 32] = 0
                    mem[t] = _786
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                mem[(2 * ceil32(return_data.size)) + 192] = _650
        else:
            mem[_212 + (2 * ceil32(return_data.size)) + 352] = 0
            mem[(2 * ceil32(return_data.size)) + 128] = (2 * ceil32(return_data.size)) + 320
            _417 = mem[ceil32(return_data.size) + _161 + 160]
            require mem[ceil32(return_data.size) + _161 + 160] <= test266151307()
            require ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 159 < ceil32(return_data.size) + return_data.size + 128
            _452 = mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 128]
            if mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 128] > test266151307():
                revert with 0, 65
            _466 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 128])) + 1
            mem[_466] = mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 160] + 128]
            require _161 + _417 + _452 + 32 <= return_data.size
            mem[_466 + 32 len ceil32(_452)] = mem[ceil32(return_data.size) + _161 + _417 + 160 len ceil32(_452)]
            if ceil32(_452) <= _452:
                mem[(2 * ceil32(return_data.size)) + 160] = _466
                _625 = mem[ceil32(return_data.size) + _161 + 192]
                require mem[ceil32(return_data.size) + _161 + 192] <= test266151307()
                require ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 159 < ceil32(return_data.size) + return_data.size + 128
                _643 = mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]
                if mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128] > test266151307():
                    revert with 0, 65
                _651 = mem[64]
                if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]) + 1
                mem[_651] = mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]
                require return_data.size >= _161 + _625 + (32 * _643) + 32
                s = ceil32(return_data.size) + _161 + _625 + 160
                t = _651 + 32
                idx = 0
                while idx < _643:
                    _763 = mem[s]
                    require mem[s] <= test266151307()
                    require ceil32(return_data.size) + _161 + _625 + mem[s] + 191 < ceil32(return_data.size) + return_data.size + 128
                    _779 = mem[ceil32(return_data.size) + _161 + _625 + mem[s] + 160]
                    if mem[ceil32(return_data.size) + _161 + _625 + mem[s] + 160] > test266151307():
                        revert with 0, 65
                    _787 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + _625 + mem[s] + 160])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + _625 + mem[s] + 160])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + _625 + mem[s] + 160])) + 1
                    mem[_787] = _779
                    require _161 + _625 + _763 + _779 + 64 <= return_data.size
                    u = 0
                    while u < _779:
                        mem[u + _787 + 32] = mem[u + ceil32(return_data.size) + _161 + _625 + _763 + 192]
                        u = u + 32
                        continue 
                    if ceil32(_779) > _779:
                        mem[_779 + _787 + 32] = 0
                    mem[t] = _787
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                mem[(2 * ceil32(return_data.size)) + 192] = _651
            else:
                mem[_452 + _466 + 32] = 0
                mem[(2 * ceil32(return_data.size)) + 160] = _466
                _626 = mem[ceil32(return_data.size) + _161 + 192]
                require mem[ceil32(return_data.size) + _161 + 192] <= test266151307()
                require ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 159 < ceil32(return_data.size) + return_data.size + 128
                _644 = mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]
                if mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128] > test266151307():
                    revert with 0, 65
                _652 = mem[64]
                if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]) + 1
                mem[_652] = mem[ceil32(return_data.size) + _161 + mem[ceil32(return_data.size) + _161 + 192] + 128]
                require return_data.size >= _161 + _626 + (32 * _644) + 32
                s = ceil32(return_data.size) + _161 + _626 + 160
                t = _652 + 32
                idx = 0
                while idx < _644:
                    _764 = mem[s]
                    require mem[s] <= test266151307()
                    require ceil32(return_data.size) + _161 + _626 + mem[s] + 191 < ceil32(return_data.size) + return_data.size + 128
                    _780 = mem[ceil32(return_data.size) + _161 + _626 + mem[s] + 160]
                    if mem[ceil32(return_data.size) + _161 + _626 + mem[s] + 160] > test266151307():
                        revert with 0, 65
                    _788 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + _626 + mem[s] + 160])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + _626 + mem[s] + 160])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _161 + _626 + mem[s] + 160])) + 1
                    mem[_788] = _780
                    require _161 + _626 + _764 + _780 + 64 <= return_data.size
                    u = 0
                    while u < _780:
                        mem[u + _788 + 32] = mem[u + ceil32(return_data.size) + _161 + _626 + _764 + 192]
                        u = u + 32
                        continue 
                    if ceil32(_780) > _780:
                        mem[_780 + _788 + 32] = 0
                    mem[t] = _788
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                mem[(2 * ceil32(return_data.size)) + 192] = _652
        require mem[ceil32(return_data.size) + _161 + 224] == mem[ceil32(return_data.size) + _161 + 236 len 20]
        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _161 + 224]
        mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _161 + 256]
        mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _161 + 288]
        mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
        return memory
          from mem[64]
           len 32
    require not msg.value
    require calldata.size - 4 >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x975057e7 with:
            gas gas_remaining wei
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[0] = cd[4]
    mem[32] = 7
    mem[ceil32(return_data.size) + 128] = 0xeac8f5b800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 132] = tokenAssets[cd[4]].field_0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xeac8f5b8 with:
            gas gas_remaining wei
           args tokenAssets[cd[4]].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _135 = mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32
    require mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 <= test266151307()
    require return_data.size - mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 >= 192
    if not bool((2 * ceil32(return_data.size)) + 320 <= test266151307()):
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + 320
    _181 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + 128]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + 128] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + 128] + 159 < ceil32(return_data.size) + return_data.size + 128
    _204 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + 128] + 128]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + 128] + 128] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + 128] + 128])) + 193 < 192 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + 128] + 128])) + 321 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + 128] + 128])) + 321
    mem[(2 * ceil32(return_data.size)) + 320] = _204
    require mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + _181 + _204 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 352 len ceil32(_204)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], tokenAssets[cd[4]].field_32 + _181 + 160 len ceil32(_204)]
    if ceil32(_204) <= _204:
        mem[(2 * ceil32(return_data.size)) + 128] = (2 * ceil32(return_data.size)) + 320
        _414 = mem[ceil32(return_data.size) + _135 + 160]
        require mem[ceil32(return_data.size) + _135 + 160] <= test266151307()
        require ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 160] + 159 < ceil32(return_data.size) + return_data.size + 128
        _449 = mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 160] + 128]
        if mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 160] + 128] > test266151307():
            revert with 0, 65
        _463 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 160] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 160] + 128])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 160] + 128])) + 1
        mem[_463] = _449
        require _135 + _414 + _449 + 32 <= return_data.size
        mem[_463 + 32 len ceil32(_449)] = mem[ceil32(return_data.size) + _135 + _414 + 160 len ceil32(_449)]
        if ceil32(_449) <= _449:
            mem[(2 * ceil32(return_data.size)) + 160] = _463
            _619 = mem[ceil32(return_data.size) + _135 + 192]
            require mem[ceil32(return_data.size) + _135 + 192] <= test266151307()
            require ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 159 < ceil32(return_data.size) + return_data.size + 128
            _637 = mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]
            if mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128] > test266151307():
                revert with 0, 65
            _645 = mem[64]
            if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]) + 1
            mem[_645] = _637
            require return_data.size >= _135 + _619 + (32 * _637) + 32
            s = ceil32(return_data.size) + _135 + _619 + 160
            t = _645 + 32
            idx = 0
            while idx < _637:
                _757 = mem[s]
                require mem[s] <= test266151307()
                require ceil32(return_data.size) + _135 + _619 + mem[s] + 191 < ceil32(return_data.size) + return_data.size + 128
                _773 = mem[ceil32(return_data.size) + _135 + _619 + mem[s] + 160]
                if mem[ceil32(return_data.size) + _135 + _619 + mem[s] + 160] > test266151307():
                    revert with 0, 65
                _781 = mem[64]
                if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + _619 + mem[s] + 160])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + _619 + mem[s] + 160])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + _619 + mem[s] + 160])) + 1
                mem[_781] = _773
                require _135 + _619 + _757 + _773 + 64 <= return_data.size
                u = 0
                while u < _773:
                    mem[u + _781 + 32] = mem[u + ceil32(return_data.size) + _135 + _619 + _757 + 192]
                    u = u + 32
                    continue 
                if ceil32(_773) > _773:
                    mem[_773 + _781 + 32] = 0
                mem[t] = _781
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            mem[(2 * ceil32(return_data.size)) + 192] = _645
            require mem[ceil32(return_data.size) + _135 + 224] == mem[ceil32(return_data.size) + _135 + 236 len 20]
            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _135 + 224]
            mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _135 + 256]
            mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _135 + 288]
            mem[0] = cd[4]
            mem[32] = 8
            if sub_aa9f3eca[cd[4]].field_0 >= mem[_645]:
                revert with 0, 50
            _821 = mem[(32 * sub_aa9f3eca[cd[4]].field_0) + _645 + 32]
            mem[mem[64]] = 32
            _837 = mem[_821]
            mem[mem[64] + 32] = mem[_821]
            mem[mem[64] + 64 len ceil32(_837)] = mem[_821 + 32 len ceil32(_837)]
            if ceil32(_837) > _837:
                mem[_837 + mem[64] + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_837) + 32]
        mem[_449 + _463 + 32] = 0
        mem[(2 * ceil32(return_data.size)) + 160] = _463
        _620 = mem[ceil32(return_data.size) + _135 + 192]
        require mem[ceil32(return_data.size) + _135 + 192] <= test266151307()
        require ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 159 < ceil32(return_data.size) + return_data.size + 128
        _638 = mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]
        if mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128] > test266151307():
            revert with 0, 65
        _646 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]) + 1
        mem[_646] = _638
        require return_data.size >= _135 + _620 + (32 * _638) + 32
        s = ceil32(return_data.size) + _135 + _620 + 160
        t = _646 + 32
        idx = 0
        while idx < _638:
            _758 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _135 + _620 + mem[s] + 191 < ceil32(return_data.size) + return_data.size + 128
            _774 = mem[ceil32(return_data.size) + _135 + _620 + mem[s] + 160]
            if mem[ceil32(return_data.size) + _135 + _620 + mem[s] + 160] > test266151307():
                revert with 0, 65
            _782 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + _620 + mem[s] + 160])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + _620 + mem[s] + 160])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + _620 + mem[s] + 160])) + 1
            mem[_782] = _774
            require _135 + _620 + _758 + _774 + 64 <= return_data.size
            u = 0
            while u < _774:
                mem[u + _782 + 32] = mem[u + ceil32(return_data.size) + _135 + _620 + _758 + 192]
                u = u + 32
                continue 
            if ceil32(_774) > _774:
                mem[_774 + _782 + 32] = 0
            mem[t] = _782
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        mem[(2 * ceil32(return_data.size)) + 192] = _646
        require mem[ceil32(return_data.size) + _135 + 224] == mem[ceil32(return_data.size) + _135 + 236 len 20]
        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _135 + 224]
        mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _135 + 256]
        mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _135 + 288]
        mem[0] = cd[4]
        mem[32] = 8
        if sub_aa9f3eca[cd[4]].field_0 >= mem[_646]:
            revert with 0, 50
        _822 = mem[(32 * sub_aa9f3eca[cd[4]].field_0) + _646 + 32]
        mem[mem[64]] = 32
        _838 = mem[_822]
        mem[mem[64] + 32] = mem[_822]
        mem[mem[64] + 64 len ceil32(_838)] = mem[_822 + 32 len ceil32(_838)]
        if ceil32(_838) > _838:
            mem[_838 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_838) + 32]
    mem[_204 + (2 * ceil32(return_data.size)) + 352] = 0
    mem[(2 * ceil32(return_data.size)) + 128] = (2 * ceil32(return_data.size)) + 320
    _415 = mem[ceil32(return_data.size) + _135 + 160]
    require mem[ceil32(return_data.size) + _135 + 160] <= test266151307()
    require ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 160] + 159 < ceil32(return_data.size) + return_data.size + 128
    _450 = mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 160] + 128]
    if mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 160] + 128] > test266151307():
        revert with 0, 65
    _464 = mem[64]
    if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 160] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 160] + 128])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 160] + 128])) + 1
    mem[_464] = _450
    require _135 + _415 + _450 + 32 <= return_data.size
    mem[_464 + 32 len ceil32(_450)] = mem[ceil32(return_data.size) + _135 + _415 + 160 len ceil32(_450)]
    if ceil32(_450) <= _450:
        mem[(2 * ceil32(return_data.size)) + 160] = _464
        _621 = mem[ceil32(return_data.size) + _135 + 192]
        require mem[ceil32(return_data.size) + _135 + 192] <= test266151307()
        require ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 159 < ceil32(return_data.size) + return_data.size + 128
        _639 = mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]
        if mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128] > test266151307():
            revert with 0, 65
        _647 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]) + 1
        mem[_647] = _639
        require return_data.size >= _135 + _621 + (32 * _639) + 32
        s = ceil32(return_data.size) + _135 + _621 + 160
        t = _647 + 32
        idx = 0
        while idx < _639:
            _759 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _135 + _621 + mem[s] + 191 < ceil32(return_data.size) + return_data.size + 128
            _775 = mem[ceil32(return_data.size) + _135 + _621 + mem[s] + 160]
            if mem[ceil32(return_data.size) + _135 + _621 + mem[s] + 160] > test266151307():
                revert with 0, 65
            _783 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + _621 + mem[s] + 160])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + _621 + mem[s] + 160])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + _621 + mem[s] + 160])) + 1
            mem[_783] = _775
            require _135 + _621 + _759 + _775 + 64 <= return_data.size
            u = 0
            while u < _775:
                mem[u + _783 + 32] = mem[u + ceil32(return_data.size) + _135 + _621 + _759 + 192]
                u = u + 32
                continue 
            if ceil32(_775) > _775:
                mem[_775 + _783 + 32] = 0
            mem[t] = _783
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        mem[(2 * ceil32(return_data.size)) + 192] = _647
        require mem[ceil32(return_data.size) + _135 + 224] == mem[ceil32(return_data.size) + _135 + 236 len 20]
        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _135 + 224]
        mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _135 + 256]
        mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _135 + 288]
        mem[0] = cd[4]
        mem[32] = 8
        if sub_aa9f3eca[cd[4]].field_0 >= mem[_647]:
            revert with 0, 50
        _823 = mem[(32 * sub_aa9f3eca[cd[4]].field_0) + _647 + 32]
        _831 = mem[64]
        mem[mem[64]] = 32
        _839 = mem[_823]
        mem[mem[64] + 32] = mem[_823]
        mem[mem[64] + 64 len ceil32(_839)] = mem[_823 + 32 len ceil32(_839)]
        if ceil32(_839) <= _839:
            return 32, mem[mem[64] + 32 len ceil32(_839) + 32]
        mem[_839 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_839) + _831 + -mem[64] + 64
    mem[_450 + _464 + 32] = 0
    mem[(2 * ceil32(return_data.size)) + 160] = _464
    _622 = mem[ceil32(return_data.size) + _135 + 192]
    require mem[ceil32(return_data.size) + _135 + 192] <= test266151307()
    require ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 159 < ceil32(return_data.size) + return_data.size + 128
    _640 = mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]
    if mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128] > test266151307():
        revert with 0, 65
    _648 = mem[64]
    if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + _135 + mem[ceil32(return_data.size) + _135 + 192] + 128]) + 1
    mem[_648] = _640
    require return_data.size >= _135 + _622 + (32 * _640) + 32
    s = ceil32(return_data.size) + _135 + _622 + 160
    t = _648 + 32
    idx = 0
    while idx < _640:
        _760 = mem[s]
        require mem[s] <= test266151307()
        require ceil32(return_data.size) + _135 + _622 + mem[s] + 191 < ceil32(return_data.size) + return_data.size + 128
        _776 = mem[ceil32(return_data.size) + _135 + _622 + mem[s] + 160]
        if mem[ceil32(return_data.size) + _135 + _622 + mem[s] + 160] > test266151307():
            revert with 0, 65
        _784 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + _622 + mem[s] + 160])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + _622 + mem[s] + 160])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _135 + _622 + mem[s] + 160])) + 1
        mem[_784] = _776
        require _135 + _622 + _760 + _776 + 64 <= return_data.size
        u = 0
        while u < _776:
            mem[u + _784 + 32] = mem[u + ceil32(return_data.size) + _135 + _622 + _760 + 192]
            u = u + 32
            continue 
        if ceil32(_776) > _776:
            mem[_776 + _784 + 32] = 0
        mem[t] = _784
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[(2 * ceil32(return_data.size)) + 192] = _648
    require mem[ceil32(return_data.size) + _135 + 224] == mem[ceil32(return_data.size) + _135 + 236 len 20]
    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _135 + 224]
    mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _135 + 256]
    mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _135 + 288]
    mem[0] = cd[4]
    mem[32] = 8
    if sub_aa9f3eca[cd[4]].field_0 >= mem[_648]:
        revert with 0, 50
    _824 = mem[(32 * sub_aa9f3eca[cd[4]].field_0) + _648 + 32]
    mem[mem[64]] = 32
    _840 = mem[_824]
    mem[mem[64] + 32] = mem[_824]
    mem[mem[64] + 64 len ceil32(_840)] = mem[_824 + 32 len ceil32(_840)]
    if ceil32(_840) > _840:
        mem[_840 + mem[64] + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_840) + 32]
}



}
